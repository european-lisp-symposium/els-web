(in-package #:els-web)

(defun compile-edition (edition &key (if-exists :supersede)
                                     (template (template "index.ctml")))
  (compile-edition-page edition :if-exists if-exists :template template)
  (compile-edition-calendar edition :if-exists if-exists)
  (pathname-utils:subdirectory *output-dir* (princ-to-string edition)))

(defun compile-all-editions (&key (if-exists :supersede)
                                  (template (template "index.ctml")))
  (compile-toplevel-page)
  (loop for edition in (editions)
        collect (compile-edition edition :if-exists if-exists
                                         :template template)))
