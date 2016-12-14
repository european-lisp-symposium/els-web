(in-package #:els-web-editions)
(define-edition "2017")
(in-package "2017")

;;; Texts
(define-text :announcement
  (:div :class "announcement" "This year's conference is co-located with <a href=\"http://2017.programmingconference.org/home\">Programming 2017</a>")
  (:div :class "announcement" "Submissions are now open!"))

(define-text :submissions
  (:p "All submissions should be formatted following the <a href=\"http://www.acm.org/sigs/publications/proceedings-templates\">ACM SIGS guidelines</a> and include <a href=\"http://www.acm.org/about/class/1998\">ACM classification categories and terms</a>.")
  (:p "You can upload submissions on <a href=\"https://www.easychair.org/conferences/?conf=els17\">EasyChair</a>."))

(define-date "Submission deadline" @2017-01-30)

(define-date "Notification of acceptance" @2017-02-27)

(define-date "Final papers" @2017-03-20)

(define-date "Conference start" @2017-04-03)

(define-date "Conference end" @2017-04-04)

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
            :country "Belgium")
  :map T)

;;; Programme
