#|
 This file is a part of els-web
 Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

(in-package #:els-web)

(defvar *secret-file* (merge-pathnames "secrets.lisp" *here*))
(defvar *secret*)
(defvar *secret-load-stamp* 0)

(defun load-secrets (&optional (file *secret-file*))
  (with-open-file (stream file :direction :input :if-does-not-exist NIL)
    (setf *secret-load-stamp* (file-write-date file))
    (setf *secret* (if stream (read stream) NIL))))

(defun save-secrets (&optional (file *secret-file*))
  (with-open-file (stream file :direction :output :if-exists :supersede)
    (let ((*print-case* :downcase))
      (format stream "(~{~s ~s~^~% ~})" *secret*))))

(defun secret (name)
  (when (or (not (boundp '*secret*))
            (< *secret-load-stamp* (file-write-date *secret-file*)))
    (load-secrets))
  (getp *secret* name))

(defun (setf secret) (value name)
  (setf (getp *secret* name) value)
  (save-secrets)
  value)
