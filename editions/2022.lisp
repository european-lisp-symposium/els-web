(in-package #:els-web-editions)
(define-edition "2022")
(in-package "2022")

;;(define-date "Submission deadline" @2022-01-23)
(define-date "*** Extended deadline ***" @2022-01-30)
(define-date "Author notification" @2022-02-21)
(define-date "Final papers" @2022-03-07)
;;(define-date "Early registration deadline" @2020-04-01)

(define-date "Conference start" @2022-03-21)
(define-date "Conference end" @2022-03-22)

(define-text :announcement
  (:div :class "announcement" "Submission deadline extended by one week!")
  (:div :class "announcement" "In co-location with <a href=\"http://2022.programming-conference.org/\">Programming 2022</a>"))

(define-text :submissions

  (:p "Submission topics include, but are not limited to:")

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

  (:p "You can upload submissions on <a href=\"https://www.easychair.org/conferences/?conf=els2022\">EasyChair</a>.")

  (:p "All submissions should be formatted following the ACM SIGS guidelines and include <a href=\"http://www.acm.org/about/class/2012\">ACM Computing Classification System 2012</a> concepts and terms. Appropriate TeX and Word templates can be found on the <a href=\"https://www.acm.org/publications/proceedings-template\">ACM publications page</a>.")

  (:p "LaTeX submissions are encouraged. For LaTeX submissions, please use the SIGCONF style (two columns, reasonably compact). This is done like this: <code>\\usepackage[format=sigconf]{acmart}</code>." )

  (:p "Please use the <a href=\"http://dl.acm.org/ccs/ccs.cfm\">ACM Computing Classification System site</a> to generate the CCS codes. In order to add a concept, navigate to it using the boxes, and select \"Assign This CCS Concept\" on the left side. You should select one high relevance concept, and up to four medium or low relevance concepts. Once you are done, simply copy the CCS display into the Word document. If you are using TeX, select \"View CCS TeX Code\" and copy the displayed code into your TeX file. The templates should already include sections with bogus CCS codes, which you can simply replace with your own.")

  (:p "If you are using the correct style and classification system, your document will contain a section called <code>CCS Concepts</code> and include terms formatted like <code>•Information systems → Web applications</code>. If your document includes a section titled <code>Categories and Subject Descriptors</code> with things in a style like <code>D.2.3 [Software Engineering]: Coding Tools and Techniques</code>, then you have to update to the new 2012 system and templates as linked above. If the CCS section does not show up in the TeX generated PDF at all, make sure that your TeX file includes the <code>\\printccsdesc</code> command below the abstract."))


;; persons

(define-person (:family-name "Verna"
                :given-name "Didier")
  :role (:administrator)
  :email "www@european-lisp-symposium.org"
  :website "http://www.european-lisp-symposium.org"
  :organization "ELS")

(define-person (:family-name "Newton"
                :given-name "Jim")
  :role (:programme-chair)
  :organization "EPITA Research and Development Laboratory"
  :address (:country "France"))

(define-person (:family-name "Meier"
                :given-name "Philipp")
  :role (:committee)
  :organization "Nubank")

(define-person (:family-name "Dimitriou H."
                :given-name "Ioanna M.")
  :role (:committee)
  :organization "Igalia")

(define-person (:family-name "Raskin"
                :given-name "Mikhail")
  :role (:committee)
  :organization "Technical University of Munich")

(define-person (:family-name "Levine"
                :given-name "Nick")
  :role (:committee)
  :organization "RavenPack")

(define-person (:family-name "Pommellet"
                :given-name "Adrien")
  :role (:committee)
  :organization "EPITA / LRDE")

(define-person (:family-name "Heisig"
                :given-name "Marco")
  :role (:committee)
  :organization "FAU Erlangen-Nürnberg")

(define-person (:family-name "Riva"
                :given-name "Alberto")
  :role (:committee)
  :organization "Bioinformatics Core, ICBR, University of Florida")

(define-person (:family-name "Antoniotti"
                :given-name "Marco")
  :role (:committee)
  :organization "DISCo, Università degli Studi di Milano-Bicocca")

(define-person (:family-name "Neuss"
                :given-name "Nicolas")
  :role (:committee)
  :organization "Friedrich-Alexander-Universität Erlangen")

(define-person (:family-name "Rhodes"
                :given-name "Christophe")
  :role (:committee)
  :organization "Google")

(define-person (:family-name "Durand"
                :given-name "Irène Anne")
  :role (:committee)
  :organization "LaBRI, University of Bordeaux")

(define-person (:family-name "Moeller"
                :given-name "Ralph")
  :role (:committee)
  :organization "")

(define-person (:family-name "Ó Nualláin"
                :given-name "Breanndán")
  :role (:committee)
  :organization "University of Amsterdam")

(define-person (:family-name "Battyani"
                :given-name "Marc")
  :role (:committee)
  :organization "Fractal Concept")

(define-person (:family-name "Costanza"
                :given-name "Pascal")
  :role (:committee)
  :organization "Intel")


(define-location "FEUP, Universidade do Porto"
  :role (:conference)
  :photo "https://2022.programming-conference.org/getImage/carousel/Puente_Don_Luis_I%252C_Oporto%252C_Portugal%252C_2012-05-09%252C_DD_13.JPG?1616701137000"
  :website "https://2022.programming-conference.org/venue/programming-2022-venue"
  :address (:street "Rua Dr. Roberto Frias s/n"
            :post-code "4200-465"
            :city "Porto"
            :country "Portugal")
  :map T)

#+()(define-text :registration
      (:p "Since we are co-locating with &lt;Programming&gt; this year,
registration must be done  through their <a href=\"https://2022.programming-conference.org/attending/Registration\">website</a>.
You may register for either the full conference, or only the first 2 days (ELS
and workshops). Because the student fee is higher than our normal rate, we
will also implement a student refund program when the conference is over, as
we did two years ago."))

(define-sponsor epita
  :website "http://www.epita.fr/"
  :logo "../static/logos/epita.png")

(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")


;;; Programme

#+()(define-programme-day @2022-03-21T00:00:00+02:00
  )

#+()(define-programme-day @2022-03-22T00:00:00+02:00
  )

#+()(define-proceedings "../static/proceedings/2022.pdf")
