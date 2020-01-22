(in-package #:els-web-editions)
(define-edition "2020")
(in-package "2020")

(define-date "Submission deadline" @2020-02-13)
(define-date "Author notification" @2020-03-16)
(define-date "Final papers" @2020-04-06)

(define-date "Conference start" @2020-04-27)
(define-date "Conference end" @2020-04-28)

(define-text :announcement
  (:div :class "announcement" "ACM In-Cooperation-With status renewed!")
  (:div :class "announcement" "Submissions being accepted now.")
  #+()(:div :class "announcement" "Second invited speaker confirmed! Daniel Kochmański (ECL).")
  #+()(:div :class "announcement" "First invited speaker confirmed! Andy Keep (Nanopass Framework).")
  #+()(:div :class "announcement" "The conference is being organized. Stay tuned for updates!"))

(define-text :submissions

  (:p "This year's focus will be directed towards \"Compilers\".")

  (:p "We especially invite submissions in the following areas:")

  (:ul
   (:li "Compiler techniques")
   (:li "Compiler passes")
   (:li "Compiler compilers")
   (:li "Showcasing of industrial or experimental compilers")
   (:li "Code generation")
   (:li "Compiler verification")
   (:li "Compiler optimizations")
   (:li "JIT compilers"))

  (:p "Contributions are also welcome in other areas, including but not limited to:")

  (:ul
   (:li "Context-, aspect-, domain-oriented and generative programming")
   (:li "Macro-, reflective-, meta- and/or rule-based development approaches")
   (:li "Language design and implementation")
   (:li "Language integration, inter-operation and deployment")
   (:li "Development methodologies, support and environments")
   (:li "Educational approaches and perspectives")
   (:li "Experience reports and case studies"))

  (:p "We invite submissions in the following forms:")

  (:ul (:li "<b>Papers</b>: Technical papers of up to 8 pages that describe original results or explain known ideas in new and elegant ways.")
       (:li "<b>Demonstrations</b>: Abstracts of up to 4 pages for demonstrations of tools, libraries, and applications.")
       (:li "<b>Tutorials</b>: Abstracts of up to 4 pages for in-depth presentations about topics of special interest for at least 90 minutes and up to 180 minutes."))

  (:p "You can upload submissions on <a href=\"https://www.easychair.org/conferences/?conf=els2020\">EasyChair</a>.")

  (:p "All submissions should be formatted following the ACM SIGS guidelines and include <a href=\"http://www.acm.org/about/class/2012\">ACM Computing Classification System 2012</a> concepts and terms. Appropriate TeX and Word templates can be found on the <a href=\"https://www.acm.org/publications/proceedings-template\">ACM publications page</a>.")

  (:p "LaTeX submissions are encouraged. For LaTeX submissions, please use the SIGCONF style (two columns, reasonably compact). This is done like this: <code>\\usepackage[format=sigconf]{acmart}</code>." )

  (:p "Please use the <a href=\"http://dl.acm.org/ccs/ccs.cfm\">ACM Computing Classification System site</a> to generate the CCS codes. In order to add a concept, navigate to it using the boxes, and select \"Assign This CCS Concept\" on the left side. You should select one high relevance concept, and up to four medium or low relevance concepts. Once you are done, simply copy the CCS display into the Word document. If you are using TeX, select \"View CCS TeX Code\" and copy the displayed code into your TeX file. The templates should already include sections with bogus CCS codes, which you can simply replace with your own.")

  (:p "If you are using the correct style and classification system, your document will contain a section called <code>CCS Concepts</code> and include terms formatted like <code>•Information systems → Web applications</code>. If your document includes a section titled <code>Categories and Subject Descriptors</code> with things in a style like <code>D.2.3 [Software Engineering]: Coding Tools and Techniques</code>, then you have to update to the new 2012 system and templates as linked above. If the CCS section does not show up in the TeX generated PDF at all, make sure that your TeX file includes the <code>\\printccsdesc</code> command below the abstract."))





;; persons

(define-person (:family-name "Verna"
                :given-name "Didier"))

(define-person (:family-name "Hafner"
                :given-name "Nicolas")
  :role (:local-chair))

(define-person (:family-name "Dimitriou"
                :given-name "Ioanna"
                :additional-name "M.")
  :role (:programme-chair)
  :organization "Igalia"
  :photo "https://ioa.re/images/ioa-2019.jpg"
  :website "https://ioa.re"
  :address (:city "Bonn" :country "Germany"))

(define-person (:family-name "Keep"
                :given-name "Andrew"
                :additional-name "W.")
  :role (:speaker)
  :organization "Cisco Systems Inc."
  :website "https://andykeep.com"
  :address (:country "USA"))

(define-person (:family-name "Kochmański"
                :given-name "Daniel")
  :role (:speaker)
  :organization "TurtleWare"
  :photo "http://turtleware.eu/static/images/daniel-k.png"
  :website "https://turtleware.eu"
  :address (:country "Poland"))

(define-person (:family-name "Wingo"
                :given-name "Andy")
  :role (:committee)
  :organization "Igalia"
  :address (:country "France"))

(define-person (:given-name "Asumu"
                :family-name "Takikawa")
  :role (:committee)
  :organization "Igalia"
  :address (:country "USA"))

(define-person (:given-name "Irène"
                :family-name "Durand")
  :role (:committee)
  :organization "Université Bordeaux 1"
  :address (:country "France"))

(define-person (:given-name "Jim"
                :family-name "Newton")
  :role (:committee)
  :organization "EPITA Research Lab"
  :address (:country "France"))

(define-person (:given-name "Kent"
                :family-name "Pitman")
  :role (:committee)
  :organization "HyperMeta"
  :address (:country "USA"))

(define-person (:given-name "Leonie"
                :family-name "Dreschler-Fischer")
  :role (:committee)
  :organization "University of Hamburg"
  :address (:country "Germany"))

(define-person (:given-name "Marco"
                :family-name "Heisig")
  :role (:committee)
  :organization "FAU Erlangen-Nürnberg"
  :address (:country "Germany"))

(define-person (:given-name "Max"
                :family-name "Rottenkolber")
  :role (:committee)
  :organization "Interstellar Ventures"
  :address (:country "Germany"))

(define-person (:given-name "Paulo"
                :family-name "Matos")
  :role (:committee)
  :organization "Igalia"
  :address (:country "Germany"))

(define-person (:given-name "Robert"
                :family-name "Goldman")
  :role (:committee)
  :organization "SIFT"
  :address (:country "USA"))

(define-person (:given-name "Robert"
                :family-name "Strandh")
  :role (:committee)
  :organization "Université Bordeaux 1"
  :address (:country "France"))

(define-person (:given-name "Christophe"
                :family-name "Rhodes")
  :role (:committee)
  :organization "Google"
  :address (:country "UK"))

(define-person (:given-name "Charlotte"
                :family-name "Herzeel")
  :role (:committee)
  :organization "Imec, ExasSience Lab"
  :address (:country "Belgium"))

(define-person (:given-name "Mark"
                :family-name "Evenson")
  :role (:committee)
  :organization "not.org"
  :email "evenson@panix.com"
  :address (:country "Austria"))

(define-person (:given-name "Sky"
                :family-name "Hester")
  :role (:committee)
  :organization "consultant"
  :address (:country "USA"))

;; pre-programme keynotes list.

(define-text :keynotes
  (:ul
   (:li (:b "Andy Keep") " (Cisco Systems, Inc.), on the Nanopass Framework.")
   (:li (:b "Daniel Kochmański") " (Turtleware), on the Embeddable Common Lisp (ECL).")))

(define-location "GZ Riesbach"
  :role (:conference)
  :photo "../static/2020/venue.jpg"
  :website "https://gz-zh.ch/gz-riesbach/"
  :telephone "+41 44 387 74 50"
  :email "gz-riesbach@gz-zh.ch"
  :address (:street "Seefeldstrasse 93"
            :post-code "8008"
            :city "Zürich"
            :country "Switzerland")
  :map T)

(define-registration (:inactive)
  (:kind "Early regular" :price 120 :status :active
   :description "Full conference package (talks, coffee breaks, banquet).")
  (:kind "Early student" :price 60 :status :active
   :description "Same as \"Early regular\", student price (requires student ID copy via e-mail).")
  (:kind "Regular" :price 160 :status :inactive
   :description "Full conference package (talks, coffee breaks, note: banquet out).")
  (:kind "Student" :price 90 :status :inactive
   :description "Same as \"Regular\", student price (requires student ID copy via e-mail).")
  (:option "banquet" :status :active
   :checked t :price 0 :description "Banquet")
  (:option "banquet-guest" :status :active
   :price 35 :description "Banquet guest")
  (:option "certificate" :price 0 :description "Certificate of attendance")
  (:option "proceedings" :price 0 :description "Printed proceedings")
  (:option "excursion" :status :active
   :price 20 :description "Sunday excursion (details below)")
  (:option "excursion-guest" :status :active
   :price 20 :description "Sunday excursion guest"))

(define-sponsor acm
  :website "http://www.sigplan.org/"
  :logo "../static/logos/acm.svg")

(define-sponsor igalia
    :website "https://igalia.com"
    :logo "https://www.igalia.com/assets/i/logoDark.png")

(define-sponsor epita
  :website "http://www.epita.fr/"
  :logo "../static/logos/epita.png")
