(in-package #:els-web)

(defvar *stripe-base* "https://api.stripe.com/v1/")

(define-condition stripe-error (error)
  ((data :initarg :data :initform NIL :reader data)
   (charge :initform NIL :reader charge)
   (message :initform NIL :reader message)
   (param :initform NIL :reader param))
  (:report (lambda (c s) (format s "Stripe request failed~@[:~%  ~a~]" (message c)))))

(defmethod initialize-instance :after ((error stripe-error) &key data)
  (with-slots (charge message param) error
    (setf charge (gethash "charge" data))
    (setf message (gethash "message" data))
    (setf param (gethash "param" data))))

(define-condition api-connection-error (stripe-error)
  ())

(define-condition api-error (stripe-error)
  ())

(define-condition authentication-error (stripe-error)
  ())

(define-condition card-error (stripe-error)
  ((code :initform NIL :reader code)
   (decline-code :initform NIL :reader decline-code)))

(defmethod initialize-instance :after ((error card-error) &key data)
  (with-slots (code decline-code) error
    (setf code (gethash "code" data))
    (setf decline-code (gethash "decline_code" data))))

(define-condition idempotency-error (stripe-error)
  ())

(define-condition invalid-request-error (stripe-error)
  ())

(define-condition rate-limit-error (stripe-error)
  ())

(define-condition validation-error (stripe-error)
  ())

(define-condition unknown-stripe-error (stripe-error)
  ())

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defun to-param-name (thing)
    (cl-ppcre:regex-replace-all "-" (string-downcase thing) "_")))

(defun coerce-stripe-parameter (parameter)
  (destructuring-bind (param . value) parameter
    (flet ((normalize (value)
             (etypecase value
               (string value)
               (number (princ-to-string value))
               (timestamp (princ-to-string (timestamp->unix value)))
               ((eql T) "true")
               ((eql NIL) "false"))))
      (cond ((and (consp value) (consp (car value)))
             (loop for (inner . val) in value
                   collect (cons (format NIL "~a[~a]" param (to-param-name inner)) (normalize val))))
            ((consp value)
             (loop for val in value
                   collect (cons (format NIL "~a[]" param) (normalize val))))
            (T
             `((,param . ,(normalize value))))))))

(defun stripe-request (endpoint parameters &key (key (secret :stripe-private-key)) (method :get) endpoint-params)
  (let ((url (format NIL "~a~a~{/~a~}" *stripe-base* endpoint endpoint-params))
        (parameters (loop for param in parameters append (coerce-stripe-parameter param))))
    (when (eql :get method)
      (let ((uri (puri:parse-uri url)))
        (setf (puri:uri-query uri)
              (with-output-to-string (out)
                (loop for (key . value) in parameters
                      do (write-string key out)
                         (write-char #\= out)
                         (write-string (drakma:url-encode value :utf-8) out)
                         (write-char #\& out))))
        (setf url uri)
        (setf parameters ())))
    (multiple-value-bind (stream code)
        (drakma:http-request url
                             :method method
                             :force-ssl T
                             :verify :required
                             :parameters parameters
                             :basic-authorization (list key "")
                             :want-stream T)
      (unwind-protect
           (let ((data (yason:parse stream)))
             (case code
               (200 data)
               (T (let* ((data (gethash "error" data))
                         (type (gethash "type" data)))
                    ;; make-condition doesn't trigger initialize-instance on SBCL.
                    (error (make-instance (cond ((string= type "api_connection_error") 'api-connection-error)
                                                ((string= type "api_error") 'api-error)
                                                ((string= type "authentication_error") 'authentication-error)
                                                ((string= type "card_error") 'card-error)
                                                ((string= type "idempotency_error") 'idempotency-error)
                                                ((string= type "invalid_request_error") 'invalid-request-error)
                                                ((string= type "rate_limit_error") 'rate-limit-error)
                                                ((string= type "validation_error") 'validation-error)
                                                (T 'unknown-stripe-error))
                                          :data data))))))
        (close stream)))))

(defmacro define-endpoint (name endpoint args &body options)
  (lambda-fiddle:with-destructured-lambda-list (:required required :key optional) args
    (let ((optional (loop for opt in optional
                          for (var default) = (enlist opt)
                          collect (list var default (intern (format NIL "~a-~a" var 'p))))))
      `(defun ,name (,@required &key ,@optional &allow-other-keys)
         (stripe-request ,endpoint
                         (remove NIL
                                 (list ,@(loop for req in required
                                               unless (find req (getf options :endpoint-params))
                                               collect `(cons ,(to-param-name req) ,req))
                                       ,@(loop for (opt _ opt-p) in optional
                                               collect `(when ,opt-p
                                                          (cons ,(to-param-name opt) ,opt)))))
                         ,@options)))))


(define-endpoint list-payment-intents "payment_intents" (&key created customer ending-before limit starting-after))

(defun edition-payments (edition)
  (clip:with-clipboard-bound ((edition edition))
    (let* ((end-date (queryf :time :date T :sort '(:time :dsc)))
           (start-date (timestamp->unix (adjust-timestamp end-date (- (* 60 60 24 365))))))
      ;; KLUDGE: we assume the API always lists most recent first. This is not documented,
      ;;         but I assume it has to be the case as we could not pageinate otherwise.
      (loop for result = (list-payment-intents :created `(("gt" . ,start-date)
                                                          ("lt" . ,end-date))
                                               :limit 100)
            for results = (gethash "data" result)
            while results
            append (loop for payment in results
                         for meta = (gethash "metadata" payment)
                         collect (list :id (gethash "id" payment)
                                       :amount (/ (gethash "amount" payment) 100.0)
                                       :status (gethash "status" payment)
                                       :name (gethash "name" meta)
                                       :email (gethash "email" meta)
                                       :affiliation (gethash "affiliation" meta)
                                       :food-restrictions (gethash "food-restrictions" meta)
                                       :items (gethash "items" meta)))
            do (setf end-date (loop for payment in results
                                    minimize (gethash "created" payment)))))))
