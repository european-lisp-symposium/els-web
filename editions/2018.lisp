(in-package #:els-web-editions)
(define-edition "2018")
(in-package "2018")


;;; Texts
(define-text :announcement
  (:div :class "announcement" "The conference is over!")
  ;; (:div :class "announcement" "Program announced!")
  ;; (:div :class "announcement" "Invited speakers announced!")
  ;; (:div :class "announcement" "Registrations are closed!")
  ;; (:div :class "announcement" "Registration is now open!")
  ;; (:div :class "announcement" "Submissions deadline extended by one week!")
  ;; (:div :class "announcement" "Submissions are now open!")
  ;; (:div :class "announcement" "The conference is being organized. Stay tuned for updates!")
  )

(define-text :submissions

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

  (:p "You can upload submissions on <a href=\"https://www.easychair.org/conferences/?conf=els2018\">EasyChair</a>.")

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


;; (define-date "(New) Submission deadline" @2018-02-25)
;; (define-date "Notification of acceptance" @2018-03-19)
;; (define-date "Early Registration Deadline" @2018-03-25)
;; (define-date "Final papers" @2018-04-09)

(define-date "Conference start" @2018-04-16)
(define-date "Conference end" @2018-04-17)


;;; Sponsors
(define-sponsor epita
  :website "http://www.epita.fr/"
  :logo "../static/logos/epita.png")

(define-sponsor lispworks
  :website "http://www.lispworks.com/"
  :logo "../static/logos/lispworks.png")

(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

(define-sponsor brunner
  :website "http://www.systemhaus-brunner.de/"
  :logo "../static/logos/brunner.png")

(define-sponsor ravenpack
  :website "https://www.ravenpack.com/"
  :logo "../static/logos/ravenpack.jpg")

(define-sponsor acm
  :website "http://www.sigplan.org/"
  :logo "../static/logos/acm.svg")


;;; People
(define-person (:family-name "Verna"
        :given-name "Didier")
  :role (:administrator :speaker)
  :email "www@european-lisp-symposium.org"
  :website "http://www.european-lisp-symposium.org"
  :organization "ELS")

(define-person (:family-name "Cooper"
        :given-name "David")
  :role (:programme-chair)
  :organization "Genworks")

(define-person (:family-name "Lawson"
        :given-name "Andrew")
  :role (:local-chair)
  :organization "Ravenpack")

(define-person (:family-name "Durand"
        :given-name "Irène")
  :role (:committee :speaker)
  :organization "LaBRI, Université de Bordeaux"
  :address (:country "France"))

(define-person (:family-name "McKay"
        :given-name "Scott")
  :role (:committee)
  :organization "Future Fuel"
  :address (:country "USA"))

(define-person (:family-name "Neuss"
        :given-name "Nicolas")
  :role (:committee :speaker)
  :organization "FAU Erlangen-Nürnberg"
  :address (:country "Germany"))

(define-person (:family-name "Rhodes"
        :given-name "Christophe")
  :role (:committee :speaker)
  :organization "Goldsmiths University"
  :address (:country "UK"))

(define-person (:family-name "Padget"
        :given-name "Julian")
  :role (:committee)
  :organization "University of Bath"
  :address (:country "UK"))

(define-person (:family-name "Strandh"
        :given-name "Robert")
  :role (:committee :speaker)
  :organization "Université de Bordeaux"
  :address (:country "France"))

(define-person (:family-name "Sperber"
        :given-name "Michael")
  :role (:committee)
  :organization "DeinProgramm"
  :address (:country "Germany"))

(define-person (:family-name "Courtès"
        :given-name "Ludovic")
  :role (:committee)
  :organization "Inria"
  :address (:country "France"))

(define-person (:family-name "Chua"
        :given-name "Sacha")
  :role (:committee)
  :organization "Living an Awesome Life"
  :address (:country "Canada"))

(define-person (:family-name "Wellons"
        :given-name "Christopher")
  :role (:committee)
  :organization "Null Program"
  :address (:country "USA"))

(define-person (:family-name "Shivers"
        :given-name "Olin")
  :role (:committee)
  :organization "Northeastern University"
  :address (:country "USA"))

(define-person (:family-name "Wingo"
            :given-name "Andy")
  :role (:committee)
  :organization "Igalia"
  :address (:country "Spain"))

(define-person (:family-name "Marek"
        :given-name "Philipp")
  :role (:committee)
  :address (:country "Austria"))

(define-person (:family-name "van Waning"
        :given-name "Ernst")
  :organization "Infometrics.nl"
  :role (:committee)
  :address (:country "Netherlands"))

(define-person (:family-name "Emerson"
        :given-name "R. Matthew")
  :role (:speaker)
  :address (:country "USA"))

(define-person (:family-name "Domkin"
        :given-name "Vsevolod")
  :role (:speaker)
  :address (:country "Ukraine"))

(define-person (:family-name "Heisig"
        :given-name "Marco")
  :role (:speaker))

(define-person (:family-name "Schwartz"
        :given-name "Ethan")
  :role (:speaker))

(define-person (:family-name "Newton"
        :given-name "Jim")
  :role (:speaker))

(define-person (:family-name "Smith"
        :given-name "Robert")
  :role (:speaker))

(define-person (:family-name "Tezak"
        :given-name "Nikolas")
  :role (:speaker))

(define-person (:family-name "Wood"
        :given-name "Alex")
  :role (:speaker))

(define-person (:family-name "Schafmeister"
        :given-name "Christian")
  :role (:speaker))

(define-person (:family-name "Jayaprakash"
        :given-name "Rajesh")
  :role (:speaker))

(define-person (:family-name "Hafner"
        :given-name "Nicolas")
  :role (:speaker))

(define-person (:family-name "Ferreira"
        :given-name "Bruno")
  :role (:speaker))

(define-person (:family-name "Menezes Leitão"
        :given-name "António")
  :role (:speaker))

(define-person (:family-name "Cornez"
        :given-name "Jason")
  :role (:speaker))

(define-person (:family-name "van Schelven"
        :given-name "Klaas")
  :role (:speaker))


;;; Locations
(define-location "Centro Cultural Cortijo de Miraflores"
  :role (:conference)
  :photo "http://www.marbella.es/cultura/media/k2/galleries/114/museo_cortijo_miraflores_1098.jpg"
  :website "http://www.marbella.es/cultura/centros/item/35-c-c-cortijo-de-miraflores.html"
  :address (:street "Calle San Pedro Alcantara, 10"
        :post-code "29601"
        :city "Marbella"
        :country "Spain")
  :map T)

(define-location "Hotel Fuerte (****)"
  :role (:hotel)
  :website "https://www.fuertehoteles.com/en/hotels/fuerte-marbella/the-hotel/")

(define-location "Hotel San Cristóbal (***)"
  :role (:hotel)
  :website "https://www.hotelsancristobal.com/en/")

(define-text :excursion
  (:p "A guided visit to the Andalusian town of Ronda, famous for its spectacular views, traditional architecture and bull-ring turned museum. An ideal introduction to the old and new Spain. More details soon!"))


;; Registration
(define-registration (:inactive)
  (:kind "Early regular" :price 120 :status :inactive
   :description "Full conference package (talks, coffee breaks, banquet).")
  (:kind "Early student" :price 60 :status :inactive
   :description "Same as \"Early regular\", student price (requires student ID copy via e-mail).")
  (:kind "Regular" :price 160
   :description "Full conference package (talks, coffee breaks, note: banquet out).")
  (:kind "Student" :price 90
   :description "Same as \"Regular\", student price (requires student ID copy via e-mail).")
  (:option "banquet" :status :inactive
   :checked t :price 0 :description "Banquet")
  (:option "banquet-guest" :status :inactive
   :price 35 :description "Banquet guest")
  (:option "certificate" :price 0 :description "Certificate of attendance")
  (:option "proceedings" :price 0 :description "Printed proceedings")
  ;; (:option "welcome" :price 0 :description "Welcome reception")
  (:option "excursion" :status :inactive
   :price 20 :description "Sunday excursion (details below)")
  (:option "excursion-guest" :status :inactive
   :price 20 :description "Sunday excursion guest"))


;;; Programme
(define-programme-day @2018-04-16T00:00:00+02:00
  ;;   @08:30:00 (:title "Registration"
  ;;              :role (:organization))
  @09:00:00 (:title "Breakfast on Patio (Coffee, biscuits, bread, fruit)"
         :role (:organization))
  @09:30:00 (:title "Welcome Message" :role (:organization))

  @09:40:00 (:title "Keynote: This Old Lisp"
         :role (:talk :keynote)
         :speakers ("R. Matthew Emerson")
         :description "Lisp was invented 60 years ago.  Coral Common Lisp, the ancestor of today's Clozure Common Lisp, was released over 30 years ago.

Over this time, processor architectures and operating systems have come and gone, but Clozure CL (under various names and forms) has survived and is still with us today.

Clozure CL, Common Lisp, and Lisp itself are the product of many intelligent and clever people. Indeed, we find ourselves saying, with Newton, \"If I have seen a little farther than others, it is because I
have stood on the shoulders of giants.\"

I will say a few words, looking down from the giant's shoulders, on the subject of Clozure CL, that old Lisp, including where it stands today, and how it might evolve in the future.")


  @10:30:00 (:title "Petalisp: A Common Lisp Library for Data Parallel Programming"
         :role (:talk)
         :speakers ("Marco Heisig"))

  @11:00:00 (:title "Dynamic Optimizations for SBCL Garbage Collection"
         :role (:talk)
         :speakers ("Ethan Schwartz"))

  @11:30:00 (:title "Patio Break" :role (:break))

  @12:00:00 (:title "Incremental Parsing of Common Lisp Code"
         :role (:talk)
         :speakers ("Irène Durand" "Robert Strandh"))


  @12:40:00 (:title "Strategies for Typecase Optimization"
         :role (:talk)
         :speakers ("Jim Newton" "Didier Verna"))


  @13:20:00 (:title "Method Combinators"
         :role (:talk)
         :speakers ("Didier Verna"))

  @14:00:00 (:title "Lunch" :role (:break))

  @15:30:00 (:title "The Computational Structure of the Clifford
  Groups, Simulating Quantum Processor Errors, and Overview of Quantum
  Computing Development with Common Lisp"
         :role (:talk)
         :speakers ("Robert Smith" "Nikolas Tezak"))

  @16:15:00  (:title "Clasp Common Lisp Implementation and Optimization"
          :role (:talk)
          :speakers ("Alex Wood" "Christian Schafmeister"))

  @17:00:00  (:title "Patio Break" :role (:break))

  @17:30:00  (:title "Lightning Talks" :role (:talk))

  @18:00:00  (:title "Association of Lisp Users Overview & Search for New President" :role (:organization))

  @18:45:00  (:title "Travel & Prepare for Dinner")

  @19:45:00 (:title "Conference Dinner"
         :role (:dinner :organizationl)))


(define-programme-day @2018-04-17T00:00:00+02:00
  ;;   @08:30:00 (:title "Registration"
  ;;              :role (:organization))
  @09:00:00 (:title "Breakfast on Patio (Coffee, biscuits, bread, fruit)"
         :role (:organization))
  @09:30:00 (:title "Welcome Message" :role (:organization))

  @09:40:00 (:title "Keynote: Lisp in a Startup: the Good, the Bad, and the Ugly"
         :role (:talk :keynote)
         :speakers ("Vsevolod Domkin")
         :description "Over the last 10 years of my software development career, I have mostly programmed in Common Lisp, in two distinct environments: open-source and startup (aka consumer Internet companies). Among the startup projects, in which I managed to introduce Lisp, the most successful is Grammarly where the system we had built continues to playa major role — more than two years after my departure from the company — at the core of its intelligent product used by 10 million people daily.

In this talk, I'd like to share the success stories of developing a number of internet services in Lisp and the merits of the Lisp enviornment that enabled those, as well as the flip sides of the same stories that manifest the problems of the Lisp ecosystem — and propose possible solutions to them. We'll discuss where Lisp fits best and worst among the different professional environments and why.")


  @10:30:00 (:title "pLisp: a Friendly Lisp IDE for Beginners"
         :speakers ("Rajesh Jayaprakash")
         :role (:talk))

  @11:00:00 (:title "Using Lisp-based Pseudocode to Probe Student Understanding"
         :speakers ("Christophe Rhodes")
         :role (:talk))

  @11:30:00 (:title "Patio Break" :role (:break))

  @12:00:00 (:title "Interactive Flow Simulation with Common Lisp"
         :speakers ("Nicolas Neuss")
         :role (:talk))

  @12:30:00 (:title "Object-oriented Shader Compositon using CLOS"
         :speakers ("Nicolas Hafner")
         :role (:talk))

  @13:00:00 (:title "Context-oriented Algorithmic Design"
         :speakers ("Bruno Ferreira" "António Menezes Leitão")
         :role (:talk))

  @13:30:00 (:title "Event Detection in Unstructured Text (using Common Lisp)"
         :role (:talk :keynote)
         :speakers ("Jason Cornez")
         :description "At RavenPack, we use Common Lisp to extract meaning from unstructured English text.  The focus is low-latency processing of real-time news feeds and blogs, to provide actionable intelligence to our clients in the financial industry.  This talk discusses our technology for detecting events.  We look at what we've done so far, what we are working on now, and some future possibilities.")


  @14:00:00 (:title "Lunch" :role (:break))

  @15:30:00 (:title "Clef Design: Thoughts on the Formalization of Program Construction"
         :speakers ("Klaas van Schelven")
         :role (:talk))

  @16:15:00 (:title "Partial Inlining using Local Graph Rewriting"
         :speakers ("Irène Durand" "Robert Strandh")
         :role (:talk))

  @17:00:00 (:title "Patio Break" :role (:break))

  @17:30:00 (:title "Lightning Talks"
         :role (:talk))

  @18:00:00 (:title "Common Lisp Foundation Overview & Brainstorming for common-lisp.net Content and Fundraisers" :role (:organization))

  @18:45:00 (:title "Birds of a Feather Gatherings, Farewells, Impromptu Dinner Plans for those staying in Marbella"))

(define-proceedings "../static/proceedings/2018.pdf")
