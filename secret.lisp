#|
 This file is a part of els-web
 Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

(in-package #:els-web)

(defvar *secret-file* (merge-pathnames "secrets.lisp" *here*))
(defvar *secret*)

(defun load-secrets (&optional (file *secret-file*))
  (with-open-file (stream file :direction :input :if-does-not-exist NIL)
    (setf *secret* (if stream (read stream) NIL))))

(defun save-secrets (&optional (file *secret-file*))
  (with-open-file (stream file :direction :output :if-exists :supersede)
    (write *secret* :stream stream :case :downcase)))

(defun secret (name)
  (unless (boundp '*secret*)
    (load-secrets))
  (getp *secret* name))

(defun (setf secret) (value name)
  (setf (getp *secret* name) value)
  (save-secrets)
  value)
