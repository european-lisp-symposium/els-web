#|
 This file is a part of els-web
 Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

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
               (timestamp (timestamp->unix value))
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

(define-endpoint product "products" (id)
  :endpoint-params (list id))

(define-endpoint list-products "products" (&key active created ending-before ids limit shippable starting-after type url))

(define-endpoint create-product "products" (id name type &key active attributes caption deactivate-on description images metadata package-dimensions shippable statement-descriptor url)
  :method :post)

(define-endpoint update-product "products" (id &key active attributes caption deactivate-on description images metadata name package-dimensions shippable statement-descriptor url)
  :endpoint-params (list id)
  :method :post)

(define-endpoint delete-product "products" (id)
  :endpoint-params (list id)
  :method :delete)

(defun ensure-product (id &rest options)
  (handler-case
      (apply #'update-product id options)
    (invalid-request-error (err)
      (declare (ignore err))
      (apply #'create-product id (getf options :name) (getf options :type) options))))

(define-endpoint sku "skus" (id)
  :endpoint-params (list id))

(define-endpoint list-skus "skus" (&key active attributes ending-before ids in-stock limit product starting-after))

(define-endpoint create-sku "skus" (product id price currency inventory &key active attributes image metadata package-dimensions)
  :method :post)

(define-endpoint update-sku "skus" (id &key active attributes currency image inventory metadata package-dimensions price product)
  :endpoint-params (list id)
  :method :post)

(define-endpoint delete-sku "skus" (id)
  :endpoint-params (list id)
  :method :delete)

(defun ensure-sku (product id &rest options)
  (handler-case
      (apply #'update-sku id :product product options)
    (invalid-request-error (err)
      (declare (ignore err))
      (apply #'create-sku product id (getf options :price) (getf options :currency) (getf options :inventory) options))))

(define-endpoint order "orders" (id)
  :endpoint-params (list id))

(define-endpoint list-orders "orders" (&key created customer ending-before ids limit starting-after status status-transitions upstream-ids))

(define-endpoint update-order "orders" (id &key coupon metadata selected-shipping-method shipping status)
  :endpoint-params (list id)
  :method :post)

(define-endpoint return-order "orders" (id &key items)
  :endpoint-params (list id "returns")
  :method :post)

(defun update-edition-registration (edition)
  (let* ((*package* (find-package (princ-to-string edition))))
    (dolist (options (query :registration))
      (apply #'ensure-product (getf options :id)
             :type "good"
             :active (ecase (getf options :status)
                       (:active "true")
                       (:inactive "false"))
             :attributes '("name")
             :shippable "false"
             options))
    (dolist (options (query :registration-sku))
      (apply #'ensure-sku (getf options :product) (getf options :id)
             :price (round (* (getf options :price) 100))
             :currency "eur"
             :inventory '(("type" . "infinite"))
             :attributes `(("name" . ,(getf options :name)))
             :active (ecase (getf options :status)
                       (:active "true")
                       (:inactive "false"))
             options))))

(defun edition-orders (edition)
  (let* ((*package* (find-package (princ-to-string edition)))
         (ids (loop for registration in (query :registration-sku)
                    collect (getf registration :id)))
         (orders (loop for response = (list-orders :limit 100)
                       then (list-orders :limit 100 :starting-after (gethash "id" (car (last data))))
                       for data = (gethash "data" response)
                       nconc data
                       while (gethash "has_more" response))))
    (remove-if-not (lambda (order)
                     (loop for item in (gethash "items" order)
                           thereis (find (gethash "parent" item) ids :test #'equal)))
                   orders)))
