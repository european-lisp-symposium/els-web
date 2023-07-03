(in-package #:els-web)

(defvar *secret-file* (merge-pathnames "secrets.lisp" *here*))
(defvar *secret*)
(defvar *secret-load-stamp* 0)

(defun load-secrets (&optional (file *secret-file*))
  (restart-case
      (with-open-file (stream file :direction :input :if-does-not-exist NIL)
        (setf *secret-file* file)
        (setf *secret-load-stamp* (file-write-date file))
        (setf *secret* (if stream (read stream) NIL)))
    (use-value (value)
      :report "Supply a different secrets file path to use."
      :interactive (lambda ()
                     (format *query-io* "~&Enter a new path to use (unevaluated): ")
                     (list (uiop:parse-native-namestring (read-line *query-io*))))
      (load-secrets value))
    (continue ()
      :report "Stub out the secrets file and continue."
      (setf *secret-load-stamp* (get-universal-time))
      (setf *secret* ()))))

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

(defun check-secret (secret)
  (unless (secret secret)
    (restart-case
        (error "The secret ~s is not defined!" secret)
      (use-value (value)
        :report "Supply a value to use for the secret."
        :interactive (lambda ()
                       (format *query-io* "~&Enter a new value (evaluated): ")
                       (list (eval (read *query-io*))))
        value)
      (continue ()
        :report "Continue, returning NIL for the secret."
        NIL))))
