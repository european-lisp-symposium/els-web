(in-package #:els-web-editions)
(define-edition "2016")
(in-package "2016")

;;; Texts
(load-commons)

(define-text :announcement
  (:div :class "announcement" "This year's conference is co-located with <a href=\"http://2017.programmingconference.org/home\">Programming 2017</a>")
  (:div :class "announcement" "Submissions are now open!"))

(define-deadline "Submission deadline" @2017-01-30)

(define-deadline "Notification of acceptance" @2017-02-27)

(define-deadline "Final papers" @2017-03-20)

;;; People
(define-person (:family-name "Verna"
                :given-name "Didier")
  :role (:administrator)
  :email "didier@elsaa.org"
  :website "http://www.didierverna.net"
  :organization "ELS")

;;; Locations
(define-location "Vrije Universiteit Brussel"
  :role (:conference)
  :photo "https://upload.wikimedia.org/wikipedia/commons/6/66/Vrije_Universiteit_Brussel_on_campus_housing_01.JPG"
  :website "https://www.vub.ac.be/en/"
  :address (:street "Pleinlaan 2"
            :extended "Building D"
            :post-code "1050"
            :city "Brussels"
            :country "Belgium"))

;;; Programme
