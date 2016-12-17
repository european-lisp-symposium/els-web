(in-package #:els-web-editions)
(define-edition "2017")
(in-package "2017")

;;; Texts
(define-text :announcement
  (:div :class "announcement" "This year's conference is co-located with <a href=\"http://2017.programmingconference.org/home\">Programming 2017</a>")
  (:div :class "announcement" "Submissions are now open!"))

(define-text :submissions
  (:p "You can upload submissions on <a href=\"https://www.easychair.org/conferences/?conf=els17\">EasyChair</a>.")
  (:p "All submissions should be formatted following the ACM SIGS guidelines and include <a href=\"http://www.acm.org/about/class/2012\">ACM Computing Classification System 2012</a> concepts and terms. Appropriate TeX and Word templates can be found on the <a href=\"http://www.acm.org/sigs/publications/proceedings-templates\">ACM publications page</a>.")
  (:p "Please use the <a href=\"http://dl.acm.org/ccs/ccs.cfm\">ACM Computing Classification System site</a> to generate the CCS codes. In order to add a concept, navigate to it using the boxes, and select \"Assign This CCS Concept\" on the left side. You should select one high relevance concept, and up to four medium or low relevance concepts. Once you are done, simply copy the CCS display into the Word document. If you are using TeX, select \"View CCS TeX Code\" and copy the displayed code into your TeX file. The templates should already include sections with bogus CCS codes, which you can simply replace with your own.")
  (:p "If you are using the correct style and classification system, your document will contain a section called <code>CCS Concepts</code> and include terms formatted like <code>•Information systems → Web applications</code>. If your document includes a section titled <code>Categories and Subject Descriptors</code> with things in a style like <code>D.2.3 [Software Engineering]: Coding Tools and Techniques</code>, then you have to update to the new 2012 system and templates as linked above. If the CCS section does not show up in the TeX generated PDF at all, make sure that your TeX file includes the <code>\\printccsdesc</code> command."))

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
