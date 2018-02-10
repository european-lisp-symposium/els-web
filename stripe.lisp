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
    (format T "~&What the fuck: ~a ~a~%" data (gethash "message" data))
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
    (cond ((and (consp value) (consp (car value)))
           (loop for (inner . val) in value
                 collect (cons (format NIL "~a[~a]" param (to-param-name inner)) val)))
          ((consp value)
           (loop for val in value
                 collect (cons (format NIL "~a[]" param) val)))
          (T
           `((,param . ,value))))))

(defun stripe-request (endpoint parameters &key (key (secret :stripe-private-key)) (method :get) endpoint-params)
  (multiple-value-bind (stream code)
      (drakma:http-request (format NIL "~a~a~{/~a~}" *stripe-base* endpoint endpoint-params)
                           :method method
                           :force-ssl T
                           :verify :required
                           :parameters (loop for param in parameters
                                             append (coerce-stripe-parameter param))
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
      (close stream))))

(defmacro define-endpoint (name endpoint args &body options)
  (lambda-fiddle:with-destructured-lambda-list (:required required :key optional) args
    (let ((optional (loop for opt in optional
                          for (var default) = (enlist opt)
                          collect (list var default (intern (format NIL "~a-~a" var 'p))))))
      `(defun ,name (,@required &key ,@optional)
         (stripe-request ,endpoint
                         (remove NIL
                                 (list ,@(loop for req in (remove (getf options :endpoint-param) required)
                                               collect `(cons ,(to-param-name req) ,req))
                                       ,@(loop for (opt _ opt-p) in optional
                                               collect `(when ,opt-p
                                                          (cons ,(to-param-name opt) ,opt)))))
                         ,@options)))))

(define-endpoint product "products" (id)
  :endpoint-param id)

(define-endpoint list-products "products" (&key active created ending-before ids limit shippable starting-after type url))

(define-endpoint create-product "products" (id name type &key active attributes caption deactivate-on description images metadata package-dimensions shippable statement-descriptor url)
  :method :post)

(define-endpoint update-product "products" (id &key active attributes caption deactivate-on description images metadata name package-dimensions shippable statement-descriptor url)
  :endpoint-param id
  :method :post)

(define-endpoint delete-product "products" (id)
  :endpoint-param id
  :method :delete)

(defun ensure-product (id name type &rest options)
  (handler-case
      (apply #'update-product id :name name options)
    (invalid-request-error (err)
      (declare (ignore err))
      (apply #'create-product id name type options))))

(define-endpoint sku "skus" (id)
  :endpoint-params (list id))

(define-endpoint list-skus "skus" (&key active attributes ending-before ids in-stock limit product starting-after))

(define-endpoint create-sku "skus" (product id price &key (currency "eur") (quantity '(("type" . "infinite"))) (active "true") attributes image metadata package-dimensions)
  :method :post)

(define-endpoint update-sku "skus" (id &key active attributes currency image inventory metadata package-dimensions price product)
  :endpoint-params (list id)
  :method :post)

(define-endpoint delete-sku "skus" (id)
  :endpoint-params (list id)
  :method :delete)

(defun ensure-sku (product id price &rest options)
  (handler-case
      (apply #'update-sku id :price price :product product options)
    (invalid-request-error (err)
      (declare (ignore err))
      (apply #'create-sku product id price options))))

(define-endpoint order "orders" (id)
  :endpoint-params (list id))

(define-endpoint list-orders "orders" (&key created customer ending-before ids limit starting-after status status-transitions upstream-ids))

(define-endpoint update-order "orders" (id &key coupon metadata selected-shipping-method shipping status)
  :endpoint-params (list id)
  :method :post)

(define-endpoint return-order "orders" (id &key items)
  :endpoint-params (list id "returns")
  :method :post)
