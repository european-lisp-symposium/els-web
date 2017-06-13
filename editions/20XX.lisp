(in-package #:els-web-editions)
(define-edition "20XX")
(in-package "20XX")

;;; Texts
(define-text :announcement
  (:div :class "announcement" "Plans for this conference are being made. Please wait patiently.")
  ;; (:div :class "announcement" "Submissions are now open!")
  ;; (:div :class "announcement" "Registration is now open!")
  ;; (:div :class "announcement" "Registrations are closed!")
  ;; (:div :class "announcement" "The conference is over!")
  )

;; (define-text :submissions
;;   (:p "You can upload submissions on <a href=\"EASYCHAIR URL">EasyChair</a>.")
;;   (:p "All submissions should be formatted following the ACM SIGS guidelines and include <a href=\"http://www.acm.org/about/class/2012\">ACM Computing Classification System 2012</a> concepts and terms. Appropriate TeX and Word templates can be found on the <a href=\"http://www.acm.org/sigs/publications/proceedings-templates\">ACM publications page</a>.")
;;   (:p "Please use the <a href=\"http://dl.acm.org/ccs/ccs.cfm\">ACM Computing Classification System site</a> to generate the CCS codes. In order to add a concept, navigate to it using the boxes, and select \"Assign This CCS Concept\" on the left side. You should select one high relevance concept, and up to four medium or low relevance concepts. Once you are done, simply copy the CCS display into the Word document. If you are using TeX, select \"View CCS TeX Code\" and copy the displayed code into your TeX file. The templates should already include sections with bogus CCS codes, which you can simply replace with your own.")
;;   (:p "If you are using the correct style and classification system, your document will contain a section called <code>CCS Concepts</code> and include terms formatted like <code>•Information systems → Web applications</code>. If your document includes a section titled <code>Categories and Subject Descriptors</code> with things in a style like <code>D.2.3 [Software Engineering]: Coding Tools and Techniques</code>, then you have to update to the new 2012 system and templates as linked above. If the CCS section does not show up in the TeX generated PDF at all, make sure that your TeX file includes the <code>\\printccsdesc</code> command below the abstract."))

;; (define-date "Submission deadline" @20XX-MM-DD)

;; (define-date "Notification of acceptance" @20XX-MM-DD)

;; (define-date "Final papers" @20XX-MM-DD)

(define-date "Conference start" @20XX-MM-DD)

(define-date "Conference end" @20XX-MM-DD)

;;; Sponsors
;; (define-sponsor epita
;;   :website "http://www.epita.fr/"
;;   :logo "../static/logos/epita.png")

;; (define-sponsor lispworks
;;   :website "http://www.lispworks.com/"
;;   :logo "../static/logos/lispworks.png")

;; (define-sponsor franz
;;   :website "http://www.franz.com/"
;;   :logo "../static/logos/franz.png")

;;; People
(define-person (:family-name "Verna"
		:given-name "Didier")
  :role (:administrator)
  :email "www@european-lisp-symposium.org"
  :website "http://www.european-lisp-symposium.org"
  :organization "ELS")

;;; Locations
;; (define-location "Somewhere"
;;   :role (:conference)
;;   :photo "IMAGE URL"
;;   :website "WEBSITE URL"
;;   :address (:street "A"
;;             :extended "B"
;;             :post-code "C"
;;             :city "D"
;;             :country "E")
;;   :map T)

;;; Programme
;; (define-programme-day @20XX-MM-DDT00:00:00+ZZ:ZZ
;;   @08:30:00 (:title "Registration"
;;              :role (:organization))
;;   @09:00:00 (:title "Welcome Message"
;;              :role (:organization))
;;   ...
;;   @19:30:00 (:title "Conference Dinner"
;;              :role (:dinner)))

;; (define-proceedings "../static/proceedings/20XX.pdf")
