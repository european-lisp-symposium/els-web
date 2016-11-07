#|
 This file is a part of els-web
 Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

(in-package #:els-web)

(defvar *output-dir* (merge-pathnames "output/" *here*))

(defun compile-edition-data (data)
  ;; Rearrange data usefully
  data)

(defun compile-edition-template (template edition)
  (with-open-file (stream template
                          :direction :output
                          :if-exists :supersede)
    (plump:serialize
     (apply #'clip:process
            (plump:parse template)
            (compile-edition-data (edition edition)))
     stream)))

(defun prepare-path (path &key (if-exists :supersede))
  (when (probe-file path)
    (ecase if-exists
      (:supersede (delete-directory-tree path))
      (:error (error "Edition already exists."))
      ((NIL) (return-from prepare-path))))
  (ensure-directories-exist path)
  (copy-directory-tree *static-dir* path))

(defun compile-edition (edition &key (if-exists :supersede)
                                     (template (template "index.ctml")))
  (let* ((edition (princ-to-string edition))
         (path (pathname-utils:subdirectory *output-dir* edition)))
    (when (prepare-path path :if-exists if-exists)
      (compile-edition-template (merge-pathnames "index.html" path) edition))))

(defun compile-all-editions (&key (if-exists :supersede)
                                  (template (template "index.ctml")))
  (dolist (edition (editions))
    (compile-edition edition :if-exists if-exists
                             :template template)))
