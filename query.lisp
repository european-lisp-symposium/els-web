#|
 This file is a part of els-web
 Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

(in-package #:els-web)

(defun coerce-data (field entry)
  (etypecase field
    (keyword field)
    (symbol (getp entry field :test #'string-equal))
    (T field)))

(defun match-filter (filter entry)
  (if (eql T filter)
      T
      (ecase (first filter)
        (=
         (g=
          (coerce-data (second filter) entry)
          (coerce-data (third filter) entry)))
        (in
         (destructuring-bind (container item) (rest filter)
           (let ((container (coerce-data container entry))
                 (item (coerce-data item entry)))
             (etypecase container
               (list (member item container :test #'g=))
               (string (search item container :test #'g=))))))
        (and
         (loop for sub in (rest filter)
               always (match-filter sub entry)))
        (or
         (loop for sub in (rest filter)
               thereis (match-filter sub entry)))
        (not
         (not (match-filter (second filter) entry))))))

(defun query (record-type &optional (filter T) &key sort)
  (let ((data (loop for entry in (or (car (last clip:*clipboard-stack*))
                                     (edition (package-name *package*)))
                    when (match-filter `(and (= record-type ,record-type) ,filter)
                                       entry)
                    collect entry)))
    (if sort
        (sort data (ecase (second sort)
                     (:asc #'g<)
                     (:dsc #'g>))
              :key (lambda (a) (getp a (first sort))))
        data)))

(defun query1 (record-type &optional (filter T) &key sort)
  (first (query record-type filter :sort sort)))

(defun queryf (field record-type &optional (filter T) &key sort)
  (getp (query1 record-type filter :sort sort) field))

(defun query-text (filter)
  (queryf :text :text filter))
