(in-package #:els-web-editions)
(define-edition "20XX")
(in-package "20XX")

;;; Texts
(define-text :announcement
  (:div :class "announcement"
        "The conference is being organized. Stay tuned for updates!"))

#+()(define-text :submissions
  (:p "Topics include but are not limited to:")

  (:ul (:li "Context-, aspect-, domain-oriented and generative programming")
       (:li "Macro-, reflective-, meta- and/or rule-based development approaches")
       (:li "Language design and implementation")
       (:li "Language integration, inter-operation and deployment")
       (:li "Development methodologies, support and environments")
       (:li "Educational approaches and perspectives")
       (:li "Experience reports and case studies"))

  (:p "We invite submissions in the following forms:")

  (:ul (:li "<b>Papers</b>: Technical papers of up to 8 pages that describe original results or explain known ideas in new and elegant ways.")
       (:li "<b>Demonstrations</b>: Abstracts of up to 2 pages for demonstrations of tools, libraries, and applications.")
       (:li "<b>Tutorials</b>: Abstracts of up to 4 pages for in-depth presentations about topics of special interest for at least 90 minutes and up to 180 minutes."))

  (:p "You can upload submissions on <a href=\"https://www.easychair.org/conferences/?conf=els20XX\">EasyChair</a>.")

  (:p "All submissions should be formatted following the ACM SIGS
  guidelines and include <a
  href=\"http://www.acm.org/about/class/2012\">ACM Computing
  Classification System 2012</a> concepts and terms. Appropriate TeX
  and Word templates can be found on the <a
  href=\"https://www.acm.org/publications/proceedings-template\">ACM
  publications page</a>.")

  (:p "LaTeX submissions are encouraged. For LaTeX submissions, please
use the SIGCONF style (two columns, reasonably compact). This is done
like this: <code>\\usepackage[format=sigconf]{acmart}</code>." )

  (:p "Please use the <a href=\"http://dl.acm.org/ccs/ccs.cfm\">ACM
  Computing Classification System site</a> to generate the CCS
  codes. In order to add a concept, navigate to it using the boxes,
  and select \"Assign This CCS Concept\" on the left side. You should
  select one high relevance concept, and up to four medium or low
  relevance concepts. Once you are done, simply copy the CCS display
  into the Word document. If you are using TeX, select \"View CCS TeX
  Code\" and copy the displayed code into your TeX file. The templates
  should already include sections with bogus CCS codes, which you can
  simply replace with your own.")

  (:p "If you are using the correct style and classification system,
  your document will contain a section called <code>CCS
  Concepts</code> and include terms formatted like <code>•Information
  systems → Web applications</code>. If your document includes a
  section titled <code>Categories and Subject Descriptors</code> with
  things in a style like <code>D.2.3 [Software Engineering]: Coding
  Tools and Techniques</code>, then you have to update to the new 2012
  system and templates as linked above. If the CCS section does not
  show up in the TeX generated PDF at all, make sure that your TeX
  file includes the <code>\\printccsdesc</code> command below the
  abstract."))

;; (define-date "Submission deadline" @20XX-MM-DD)
;; (define-date "Notification of acceptance" @20XX-MM-DD)
;; (define-date "Early-bird reg. deadline" @20XX-MM-DD)
;; (define-date "Final papers" @20XX-MM-DD)
(define-date "Conference start" @20XX-MM-DD)
(define-date "Conference end" @20XX-MM-DD)

;;; Sponsors
(define-sponsor epita
  :website "http://www.epita.fr/"
  :logo "../static/logos/epita.png")

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
