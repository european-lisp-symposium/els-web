#|
 This file is a part of els-web
 Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

(in-package #:els-web)

(defvar *editions* (make-hash-table :test 'equal))
(defvar *edition*)

(defun edition (edition)
  (or (gethash (princ-to-string edition) *editions*)
      (error "No such edition ~s." edition)))

(defun (setf edition) (data edition)
  (setf (gethash (princ-to-string edition) *editions*)
        data))

(defun remove-edition (edition)
  (remhash (princ-to-string edition) *editions*))

(defun editions ()
  (loop for k being the hash-keys of *editions*
        collect k))

(defmacro in-edition (name)
  `(defparameter *edition* ,(princ-to-string name)))

(defun set-type (type identifier data)
  (let ((type-data (getp type (edition *edition*))))
    (cond (type-data
           (setf (getp type-data identifier) data))
          (T
           (setf (edition *edition*)
                 (list* type (list identifier data)
                        (edition *edition*)))))))

(defmacro define-person (name &rest args)
  (let ((full-name (if (listp name) (getf name :full-name) name))
        (name (if (listp name) name ())))
    `(set-type :person ,full-name
               '(:full-name ,full-name
                 ,@(when name `(:name ,name))
                 ,@args))))
