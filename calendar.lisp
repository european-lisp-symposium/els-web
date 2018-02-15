#|
 This file is a part of els-web
 Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

(in-package #:els-web)
(defvar *calendar-stream*)
(defvar *unique-counter* 0)

(defun date-calendar (timestamp)
  ;; Switch time zone of stamp to UTC.
  (let ((stamp (universal->timestamp (timestamp->universal timestamp) 0)))
    (format NIL "~4,'0d~2,'0d~2,'0dT~2,'0d~2,'0d~2,'0dZ"
            (year stamp) (month stamp) (day stamp) (hour stamp) (minute stamp) (sec stamp))))

(defun format-location (location)
  (let ((address (getf location :address)))
    (format NIL "~a~@[, ~a~], ~a ~a, ~a"
            (getf address :street) (getf address :extended)
            (getf address :post-code) (getf address :city)
            (getf address :country))))

;; I bloody hate these stupid formats.
;; https://icalendar.org/iCalendar-RFC-5545/3-1-content-lines.html
(defun output-folded-calendar-line (line out)
  ;; Should test for octets, but hell, I'm not doing that.
  ;; (at least not until I run into problems)
  (cond ((<= (length line) 70)
         (format out "~a~c~c" line #\Return #\Linefeed))
        (T
         (format out "~a~c~c "
                 (subseq line 0 70) #\Return #\Linefeed)
         (output-folded-calendar-line (subseq line 70) out))))

(defun calwrite (string &rest args)
  (output-folded-calendar-line
   (format NIL "~?" string args)
   *calendar-stream*))

(defun escape-crlf (text)
  (cl-ppcre:regex-replace-all "(\\r\\n)|\\n" text "\\n"))

(defmacro with-calendar-object (type props &body forms)
  `(progn
     (calwrite "BEGIN:~a" ,type)
     ,@(loop for (key format . args) in props
             collect `(calwrite "~a:~@?" ,key ,format ,@args))
     ,@forms
     (calwrite "END:~a" ,type)))

(defmacro with-calendar (edition &body entries)
  `(with-calendar-object :vcalendar
       ((:version "2.0")
        (:prodid "-//hacksw/handcal//NONSGML v1.0//EN")
        (:name (format nil "European Lisp Symposium ~A" ,edition)))
     ,@entries))

(defmacro with-calendar-event (&body props)
  `(with-calendar-object :vevent
       ((:uid "~a-~a@european-lisp-symposium.org" (incf *unique-counter*) (get-universal-time))
        ,@props)))

(defun compile-edition-calendar (edition &key (if-exists :supersede))
  (let* ((edition (princ-to-string edition))
         (path (merge-pathnames "programme.ics" (pathname-utils:subdirectory *output-dir* edition))))
    (clip:with-clipboard-bound ((edition edition))
      (with-open-file (*calendar-stream* path
                                         :direction :output
                                         :if-exists if-exists)
        (let ((location (format-location (query1 :location '(in role :conference)))))
          (with-calendar edition
            (loop for i from 0
                  for (entry next) on (query :programme-entry T :sort '(:time :asc))
                  do (unless (or (find :break (getf entry :role))
                                 (find :section (getf entry :role)))
                       (with-calendar-event
                         (:dtstamp "~a" (date-calendar (now)))
                         (:dtstart "~a" (date-calendar (getf entry :time)))
                         (:dtend "~a" (if next
                                          (date-calendar (getf next :time))
                                          (date-calendar (adjust-timestamp (getf entry :time) (* 60 60 1)))))
                         (:location "~a" location)
                         (:summary "~a" (getf entry :title))
                         (:description "~a" (escape-crlf (or (getf entry :description) "")))
                         (:contact "~{~a~^, ~}" (getf entry :speakers)))))))))
    path))
