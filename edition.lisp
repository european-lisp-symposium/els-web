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
              unless (or (string= k "global")
                         (string= k "toplevel"))
              collect k)
        #'string>))

(defmacro define-edition (name)
  (let ((name (princ-to-string name)))
    `(eval-when (:compile-toplevel :load-toplevel :execute)
       (defpackage ,name
         (:use #:cl #:els-web))
       (in-package ,name)
       (setf (edition ,name) ())
       (named-readtables:in-readtable :els-web))))

(defun complete-data-with (source target)
  ;; Heuristics to try and figure out how to merge right. Yikes!
  (cond ((null target)                ; No value
         source)
        ((not (listp target))         ; Unmergeable
         target)
        ((and (evenp (length target)) ; Plist, merge recursively
              (keywordp (first target))
              (not (every #'symbolp target)))
         (loop for (key val) on source by #'cddr
               for other = (getf target key)
               do (setf (getf target key) (complete-data-with val other)))
         target)
        (T                            ; Other list, don't override
         source)))

(defun find-global-record (data comparison-fields)
  (let ((clip:*clipboard-stack* (list (edition "global"))))
    (query1 (getf data :record-type)
            (list* 'and (loop for field in comparison-fields
                              collect (list '= (getf data field) (intern (string field))))))))

(defun record (data comparison-fields &optional (edition (package-name *package*)))
  (dolist (field comparison-fields)
    (unless (getp data field)
      (error "Cannot enter~%  ~s~%into the database as it is missing the identifying field ~s."
             data field)))
  (flet ((match-fields (entry)
           (when (loop for field in comparison-fields
                       always (g= (getp entry field)
                                  (getp data field)))
             (warn "Redefining record for ~{~a~^, ~}"
                   (loop for field in comparison-fields collect (getp data field)))
             T)))
    (unless (string= "global" edition)
      (setf data (complete-data-with (find-global-record data comparison-fields) data)))
    (let ((database (edition edition)))
      (setf database (remove-if #'match-fields database))
      (setf (edition edition) (append database (list data))))))

(defmacro define-person (name &rest args &key role &allow-other-keys)
  (if (not role)
      (warn "defining person ~A with no role. ~A" name args))
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
  `(progn (record '(:record-type :programme-entry
                    :time ,time
                    ,@args)
                  '(:record-type :time))
          ,(when (getp args :speakers)
             `(dolist (speaker ',(getp args :speakers))
                (let ((record (query1 :person `(= full-name ,speaker))))
                  (cond ((not record)
                         (warn "No such person ~s known." speaker))
                        ((not (find :speaker (getp record :role)))
                         (warn "Person ~s does not have the speaker role. role=~A~%record=~A"
                               speaker (getp record :role) record))))))))

(defmacro define-programme-day (base-time &body forms)
  `(progn
     (define-programme-entry ,base-time
       :title ,(date-title base-time)
       :role (:section))
     ,@(loop for (time args) on forms by #'cddr
             collect `(define-programme-entry ,(merge-timestamp time base-time)
                        ,@args))))

(defmacro define-date (name date &optional description)
  `(record '(:record-type :date
             :name ,name
             :time ,date
             :description ,description)
           '(:record-type :name)))

(defmacro define-sponsor (name &key website logo)
  `(record '(:record-type :sponsor
             :name ,name
             :website ,website
             :logo ,logo)
           '(:record-type :name)))

(defmacro define-proceedings (website)
  `(record '(:record-type :proceedings
             :website ,website)
           '(:record-type)))

(defmacro define-registration ((status &rest options) &body skus)
  (destructuring-bind (&key (id (format NIL "ELS ~a" (package-name *package*)))
                            &allow-other-keys) options
    (let ((options (copy-list options)))
      (remf options :id)
      `(progn (record '(:record-type :registration
                        :id ,id
                        :status ,status
                        ,@options)
                      '(:record-type :id))
              ,@(loop for (type name . options) in skus
                      collect `(record '(:record-type :registration-sku
                                         ,@options
                                         :name ,name
                                         :type ,type
                                         :status ,status
                                         :price 0)
                                       '(:record-type :name)))))))
