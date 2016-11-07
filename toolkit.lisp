#|
 This file is a part of els-web
 Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

(in-package #:els-web)

(defvar *here* #.(or *compile-file-pathname* *load-pathname* *default-pathname-defaults*))
(defvar *template-dir* (merge-pathnames "template/" *here*))
(defvar *static-dir* (merge-pathnames "static/" *here*))

(defun date-machine (stamp)
  (when (integerp stamp) (setf stamp (local-time:universal-to-timestamp stamp)))
  (let ((local-time:*default-timezone* local-time:+utc-zone+))
    (local-time:format-timestring
     NIL stamp :format '((:year 4) "-" (:month 2) "-" (:day 2) "T" (:hour 2) ":" (:min 2) ":" (:sec 2)))))

(defun date-human (stamp)
  (when (integerp stamp) (setf stamp (local-time:universal-to-timestamp stamp)))
  (let ((local-time:*default-timezone* local-time:+utc-zone+))
    (local-time:format-timestring
     NIL stamp :format '((:year 4) "." (:month 2) "." (:day 2) " " (:hour 2) ":" (:min 2) ":" (:sec 2)))))

(defun date-fancy (stamp)
  (when (integerp stamp) (setf stamp (local-time:universal-to-timestamp stamp)))
  (let ((local-time:*default-timezone* local-time:+utc-zone+))
    (local-time:format-timestring
     NIL stamp :format '(:long-weekday ", " :ordinal-day " of " :long-month " " :year ", " :hour ":" (:min 2) ":" (:sec 2) " UTC"))))

(defun template (path-ish)
  (merge-pathnames path-ish *template-dir*))

(lquery:define-lquery-function time (node time)
  (let ((stamp (local-time:universal-to-timestamp time)))
    (setf (plump:attribute node "datetime") (date-machine stamp))
    (setf (plump:attribute node "title") (date-fancy stamp))
    (setf (plump:children node) (plump:make-child-array))
    (plump:make-text-node node (date-human stamp)))
  node)

(lquery:define-lquery-function template (node object)
  (setf (plump:children node) (plump:make-child-array))
  (plump:parse (template (format NIL "~(~a~).ctml" object)) :root node)
  node)

(defun directory-contents (dir)
  (directory (merge-pathnames pathname-utils:*wild-file* dir)))

(defun copy-file (from to &key (buffer 4096))
  (with-open-file (out to :direction :output :element-type '(unsigned-byte 8))
    (with-open-file (in from :direction :input :element-type '(unsigned-byte 8))
      (let ((buffer (make-array buffer :element-type '(unsigned-byte 8))))
        (loop for read = (read-sequence buffer in)
              until (= 0 read)
              do (write-sequence buffer out))
        to))))

(defun delete-directory-tree (from)
  (dolist (file (directory-contents from) from)
    (when (pathname-utils:directory-p file)
      (remove-directory-tree file))
    (delete-file file)))

(defun copy-directory-tree (from to)
  (dolist (file (directory-contents from) to)
    (if (pathname-utils:directory-p file)
        (copy-directory-tree
         (pathname-utils:subdirectory to (pathname-utils:directory-name file))
         file)
        (copy-file file (make-pathname :name (pathname-name file)
                                       :type (pathname-type file)
                                       :defaults to)))))

(defun getp (plist key &key (test #'equalp))
  (loop for (k v) on plist by #'cddr
        do (when (funcall test key v)
             (return v))))

(define-setf-expander getp (plist key &key (test '#'equalp))
  (let ((gplist (gensym "PLIST")) (gkey (gensym "GKEY"))
        (gtest (gensym "GTEST")) (gvalue (gensym "GVALUE"))
        (gcons (gensym "GCONS")))
    (values
     (list gplist gkey gtest)
     (list plist key test)
     (list gvalue)
     `(loop for ,gcons on ,gplist by #'cddr
            do (when (funcall ,gtest ,gkey (car ,gcons))
                 (setf (cadr ,gcons) ,gvalue)
                 (return ,gplist))
            finally (return (setf ,plist (list* ,gkey ,gvalue ,gplist))))
     gplist)))
