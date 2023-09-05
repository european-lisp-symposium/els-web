(in-package #:els-web)

(defun timestamp->iclendar (timestamp)
  (let ((stamp (timestamp->utc timestamp)))
    (iclendar:make-date-time
     :year (year stamp)
     :month (month stamp)
     :date (day stamp)
     :hour (hour stamp)
     :minute (minute stamp)
     :second (sec stamp))))

(defun format-location (location)
  (let ((address (getf location :address)))
    (format NIL "~a~@[, ~a~], ~a ~a, ~a"
            (getf address :street) (getf address :extended)
            (getf address :post-code) (getf address :city)
            (getf address :country))))

(defun compile-edition-calendar (edition &key (if-exists :supersede))
  (let* ((edition (princ-to-string edition))
         (path (make-pathname :name "programme"
                              :type "ics"
                              :defaults (pathname-utils:subdirectory *output-dir* edition))))
    (ensure-directories-exist path)
    (clip:with-clipboard-bound ((edition edition))
      (let ((calendar (make-instance 'iclendar:calendar :product "-//european lisp symposium//NONSGML events//EN")))
        (loop for (entry next) on (query :programme-entry T :sort '(:time :asc))
              do (unless (or (find :break (getf entry :role))
                             (find :section (getf entry :role)))
                   (push (make-instance 'iclendar:event :uid (format NIL "european-lisp-symposium.org/~a#~a"
                                                                     ;; This UID is not ideal (what if the date changes)
                                                                     edition (date-machine (getf entry :time)))
                                                        :start (timestamp->iclendar (getf entry :time))
                                                        :end (timestamp->iclendar
                                                              (if next
                                                                  (getf next :time)
                                                                  (adjust-timestamp (getf entry :time) 3600)))
                                                        :summary (getf entry :title)
                                                        :description (or (getf entry :description) "")
                                                        :location (format-location (query1 :location '(in role :conference)))
                                                        :contacts (copy-list (getf entry :speakers))
                                                        :categories (mapcar #'string-downcase (getf entry :role)))
                         (iclendar:components calendar))))
        (iclendar:serialize calendar path :if-exists if-exists)))
    path))
