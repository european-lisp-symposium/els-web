#|
 This file is a part of els-web
 Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

(in-package #:els-web)

(defun compile-edition-template (template output data)
  (with-open-file (stream output
                          :direction :output
                          :if-exists :supersede)
    (let ((*package* #.*package*)
          (target (plump:parse template)))
      (plump:serialize
       (clip:with-clipboard-bound (data)
         (clip:process-node target))
       stream))))

(defun prepare-path (path &key (if-exists :supersede))
  (when (probe-file path)
    (ecase if-exists
      (:supersede (delete-directory-tree path))
      (:error (error "Edition already exists."))
      ((NIL) (return-from prepare-path))))
  (ensure-directories-exist path))

(defun editions-data (current)
  (loop for edition in (editions)
        collect `(:record-type :edition
                  :year ,edition
                  :current ,(if (g= edition current) T NIL))))

(defun compile-edition-page (edition &key (if-exists :supersede)
                                     (template (template "index.ctml")))
  (let* ((edition (princ-to-string edition))
         (path (merge-pathnames "index.html" (pathname-utils:subdirectory *output-dir* edition))))
    (when (prepare-path path :if-exists if-exists)
      (compile-edition-template
       template
       path
       (append (edition edition)
               (editions-data edition)))
      path)))

(defun compile-toplevel-page (&key (template (template "toplevel.ctml")))
  (let ((path (merge-pathnames "index.html" *output-dir*)))
    (compile-edition-template
     template
     path
     (append (edition "toplevel")
             (editions-data (car (last (editions))))))
    path))
