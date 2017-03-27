#|
 This file is a part of els-web
 Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

(in-package #:els-web)

(defclass timestamp ()
  ((year :initarg :year :accessor year)
   (day :initarg :day :accessor day)
   (month :initarg :month :accessor month)
   (hour :initarg :hour :accessor hour)
   (minute :initarg :minute :accessor minute)
   (sec :initarg :sec :accessor sec)
   (offset :initarg :offset :accessor offset))
  (:default-initargs
   :year 0 :month 1 :day 1 :hour 0 :minute 0 :sec 0 :offset 0))

(defmethod print-object ((timestamp timestamp) stream)
  (format stream "@~a" (date-machine timestamp)))

(defmethod make-load-form ((timestamp timestamp) &optional env)
  (declare (ignore env))
  `(read-timestamp
    (make-string-input-stream
     ,(date-machine timestamp))))

(defun timestamp->universal (timestamp)
  (encode-universal-time (sec timestamp) (minute timestamp) (hour timestamp)
                         (day timestamp) (month timestamp) (year timestamp)
                         (/ (offset timestamp) -60)))

(defun make-timestamp (&optional (y 0) (m 1) (d 1) (hh 0) (mm 0) (ss 0) (offset 0))
  (make-instance 'timestamp :year y :month m :day d
                            :hour hh :minute mm :sec ss
                            :offset offset))

(defun universal->timestamp (universal &optional time-zone)
  (multiple-value-bind (ss mm hh d m y dow dst zone) (decode-universal-time universal time-zone)
    (declare (ignore dow dst))
    (make-timestamp y m d hh mm ss (round (* -60 zone)))))

(defun copy-timestamp (timestamp)
  (make-timestamp (year timestamp) (month timestamp) (day timestamp)
                  (hour timestamp) (minute timestamp) (sec timestamp)
                  (offset timestamp)))

(defun adjust-timestamp (timestamp offset)
  (universal->timestamp
   (+ (timestamp->universal timestamp) offset)
   (/ (offset timestamp) -60)))

(defmethod day-of-week ((timestamp timestamp))
  (1+ (nth-value 6 (decode-universal-time (timestamp->universal timestamp)
                                          (/ (offset timestamp) 60)))))

(defun date-machine (stamp)
  (format NIL "~4,'0d-~2,'0d-~2,'0dT~2,'0d:~2,'0d:~2,'0d~:[~:[-~;+~]~2,'0d:~2,'0d~;Z~]"
          (year stamp) (month stamp) (day stamp) (hour stamp) (minute stamp) (sec stamp)
          (= 0 (offset stamp)) (< 0 (offset stamp)) (floor (abs (offset stamp)) 60) (mod (abs (offset stamp)) 60)))

(defun date-human (stamp)
  (format NIL "~4,'0d.~2,'0d.~2,'0d"
          (year stamp) (month stamp) (day stamp)))

(defun month-name (num)
  (ecase num
    (1 "January")
    (2 "February")
    (3 "March")
    (4 "April")
    (5 "May")
    (6 "June")
    (7 "July")
    (8 "August")
    (9 "September")
    (10 "October")
    (11 "November")
    (12 "December")))

(defun day-of-week-name (num)
  (ecase num
    (1 "Monday")
    (2 "Tuesday")
    (3 "Wednesday")
    (4 "Thursday")
    (5 "Friday")
    (6 "Saturday")
    (7 "Sunday")))

(defun plural-suffix (n)
  (case (mod n 10)
    (0 "th")
    (1 "st")
    (2 "nd")
    (3 "rd")
    (T "th")))

(defun date-title (stamp)
  (format NIL "~a ~d~a"
          (month-name (month stamp))
          (day stamp) (plural-suffix (day stamp))))

(defun date-fancy (stamp)
  (format NIL "~a ~d~a of ~a ~d, ~a:~2,'0d ~:[(~:[-~;+~]~2,'0d:~2,'0d)~;~]"
          (day-of-week-name (day-of-week stamp)) (day stamp) (plural-suffix (day stamp)) (month-name (month stamp)) (year stamp) (hour stamp) (minute stamp)
          (= 0 (offset stamp)) (< 0 (offset stamp)) (floor (abs (offset stamp)) 60) (mod (abs (offset stamp)) 60)))

(defun date-clock (stamp)
  (format NIL "~a:~2,'0d"
          (hour stamp) (minute stamp)))

(lquery:define-lquery-function time (node stamp &optional (format :human))
  (setf (plump:attribute node "datetime") (date-machine stamp))
  (setf (plump:attribute node "title") (date-fancy stamp))
  (setf (plump:children node) (plump:make-child-array))
  (plump:make-text-node node (ecase format
                               (:machine (date-machine stamp))
                               (:human (date-human stamp))
                               (:fancy (date-fancy stamp))
                               (:title (date-title stamp))
                               (:clock (date-clock stamp))))
  node)

(defun parse-timestring (timestring)
  (flet ((maybe-parse (num &optional (default 0))
           (if num (parse-integer num) default)))
    (cl-ppcre:register-groups-bind (NIL y m d NIL hh mm ss NIL od ohh omm)
        ("((\\d{4})-(\\d{2})-(\\d{2}))?([Tt]?(\\d{2}):(\\d{2}):?(\\d{2})?)?(([+-Zz])(\\d{2})?:?(\\d{2})?)?" timestring)
      (make-timestamp (maybe-parse y) (maybe-parse m) (maybe-parse d)
                      (maybe-parse hh) (maybe-parse mm) (maybe-parse ss)
                      (if od
                          (* (if (string= od "+") 1 -1)
                             (+ (* 60 (maybe-parse ohh))
                                (maybe-parse omm)))
                          0)))))

(defun read-timestring (stream)
  (with-output-to-string (str)
    (loop for c = (read-char stream nil)
          while (and c (or (digit-char-p c) (member c '(#\: #\T #\t #\: #\- #\+ #\Z #\z #\.))))
          do (princ c str)
          finally (when c (unread-char c stream)))))

(defun read-timestamp (stream &optional char)
  (declare (ignore char))
  (parse-timestring (read-timestring stream)))

(named-readtables:defreadtable :els-web
  (:merge :standard)
  (:macro-char #\@ #'read-timestamp))

(defun merge-timestamp (time base)
  (let ((new (copy-timestamp base)))
    (flet ((maybe-copy (slot)
             (unless (= 0 (slot-value time slot))
               (setf (slot-value new slot) (slot-value time slot)))))
      (maybe-copy 'year)
      (maybe-copy 'month)
      (maybe-copy 'day)
      (maybe-copy 'hour)
      (maybe-copy 'minute)
      (maybe-copy 'sec)
      (maybe-copy 'offset))
    new))

(defun timestamp= (a b)
  (and (= (year a) (year b))
       (= (month a) (month b))
       (= (day a) (day b))
       (= (hour a) (hour b))
       (= (minute a) (minute b))
       (= (sec a) (sec b))
       (= (offset a) (offset b))))

(defun timestamp< (a b)
  (< (timestamp->universal a)
     (timestamp->universal b)))

(defun timestamp> (a b)
  (> (timestamp->universal a)
     (timestamp->universal b)))

(defun now ()
  (universal->timestamp (get-universal-time)))
