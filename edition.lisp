#|
 This file is a part of els-web
 Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

(in-package #:els-web)

(defvar *editions* (make-hash-table :test 'equal))

(defun edition (edition)
  (let ((edition (gethash (princ-to-string edition) *editions* :nothing)))
    (if (eql edition :nothing)
        (error "No such edition ~s." edition)
        edition)))

(defun (setf edition) (data edition)
  (setf (gethash (princ-to-string edition) *editions*)
        data))

(defun remove-edition (edition)
  (remhash (princ-to-string edition) *editions*))

(defun editions ()
  (sort (loop for k being the hash-keys of *editions*
              collect k)
        #'string>))

(defmacro define-edition (name)
  (let ((name (princ-to-string name)))
    `(eval-when (:compile-toplevel :load-toplevel :execute)
       (defpackage ,name
         (:use #:cl #:els-web))
       (in-package ,name)
       (setf (edition ,name) ())
       (local-time:enable-read-macros)
       (load-commons))))

(defun record (data comparison-fields &optional (edition (package-name *package*)))
  (dolist (field comparison-fields)
    (unless (getp data field)
      (error "Cannot enter~%  ~s~%into the database as it is missing the identifying field ~s."
             data field)))
  (flet ((match-fields (entry)
           (loop for field in comparison-fields
                 always (g= (getp entry field)
                            (getp data field)))))
    (let ((database (edition edition)))
      (setf database (remove-if #'match-fields database))
      (setf database (cons data database))
      (setf (edition edition) database))))

(defun load-commons ()
  (load (merge-pathnames "editions/common.lisp" *here*)))

(defmacro define-person (name &rest args)
  (let ((full-name (if (listp name)
                       (or (getf name :full-name)
                           (format NIL "~a ~a"
                                   (getf name :given-name)
                                   (getf name :family-name)))
                       name))
        (name (if (listp name) name ())))
    `(record '(:record-type :person
               :full-name ,full-name
               ,@(when name `(:name ,name))
               ,@args)
             '(:record-type :full-name))))

(defmacro define-location (name &rest args)
  `(record '(:record-type :location
             :name ,name
             ,@args)
           '(:record-type :name)))

(defmacro define-text (name &body text)
  `(record (list :record-type :text
                 :name ,name
                 :text (cl-who:with-html-output-to-string (o)
                         ,@text))
           '(:record-type :name)))

(defmacro define-programme-entry (time &rest args)
  `(record '(:record-type :programme-entry
             :time ,time
             ,@args)
           '(:record-type :time)))

(defmacro define-programme-day (base-time &body forms)
  `(progn
     ,@(loop for (time args) on forms by #'cddr
             collect `(define-programme-entry ,(local-time:adjust-timestamp base-time
                                                 (set :hour (local-time:timestamp-hour time))
                                                 (set :minute (local-time:timestamp-minute time))
                                                 (set :sec (local-time:timestamp-second time)))
                        ,@args))))

(defmacro define-deadline (name deadline &optional description)
  `(record '(:record-type :deadline
             :name ,name
             :time ,deadline
             :description ,description)
           '(:record-type :name)))
