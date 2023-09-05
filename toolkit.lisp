(in-package #:els-web)

(defvar *here* (make-pathname :name NIL :type NIL :defaults
                              #.(or *compile-file-pathname* *load-pathname* *default-pathname-defaults*)))
(defvar *template-dir* (merge-pathnames "template/" *here*))
(defvar *static-dir* (merge-pathnames "static/" *here*))
(defvar *output-dir* (merge-pathnames "output/" *here*))

(defun format-location (l)
  (format NIL "~a~@[, ~a~]~@[, ~a~]~@[, ~a~]~@[ ~a~]~@[, ~a~]"
          (getp l :name)
          (let ((l (getp l :address)))
            (getp l :street)) (getp l :city) (getp l :region) (getp l :post-code) (getp l :country)))

(defun map-link (location &optional (key (secret :google-api-key)))
  (format NIL "https://www.google.com/maps/embed/v1/place?key=~a&q=~a"
          key (cl-ppcre:regex-replace-all " " (format-location location) "+")))

(defun template (path-ish)
  (merge-pathnames path-ish *template-dir*))

(lquery:define-lquery-function template (node object)
  (setf (plump:children node) (plump:make-child-array))
  (plump:parse (template (format NIL "~(~a~).ctml" object)) :root node)
  node)

(lquery:define-lquery-function email (node email)
  (lquery:$ node
    (attr "href" "#")
    (text "email@email.com")
    (data "email" (encode-email email))
    (add-class "encoded-email")))

(lquery:define-lquery-function tel (node telephone)
  (lquery:$ node
    (attr "href" (format NIL "tel:~a" (cl-ppcre:regex-replace-all "\\s+" telephone "-")))
    (text telephone)))

(lquery:define-lquery-function add-classes (node classes)
  (dolist (class classes)
    (lquery:$ node (add-class (string-downcase class)))))

(defun encode-email (email)
  (format NIL "~{~d~^,~}" (map 'list #'char-code email)))

(defun directory-contents (dir)
  (directory (merge-pathnames pathname-utils:*wild-file* dir)))

(defun enlist (a &rest rest)
  (if (listp a) a (list* a rest)))

(defun alphanumerize (string)
  (with-output-to-string (out)
    (loop for c across string
          do (cond ((char= c #\Space)
                    (write-char #\- out))
                   ((find c "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_")
                    (write-char c out))))))

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
      (delete-directory-tree file))
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

(defun getp (plist key &key (test #'g=))
  (loop for (k v) on plist by #'cddr
        do (when (funcall test key k)
             (return v))))

(define-setf-expander getp (plist key &key (test '#'g=))
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

(defun g< (a b)
  (etypecase a
    (symbol (string< a b))
    (timestamp (timestamp< a b))
    (string (string< a b))
    (character (char< a b))
    (number (< a b))))

(defun g> (a b)
  (etypecase a
    (symbol (string> a b))
    (timestamp (timestamp> a b))
    (string (string> a b))
    (character (char> a b))
    (number (> a b))))

(defun g= (a b)
  (etypecase a
    (timestamp (timestamp= a b))
    (symbol (string-equal a b))
    (string (string-equal a b))
    (T (equalp a b))))
