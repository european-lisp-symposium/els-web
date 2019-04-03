(in-package #:els-web-editions)
(define-edition "2019")
(in-package "2019")

;;; Texts
(define-text :announcement
  ;;  (:div :class "announcement" "The conference is over!")
  (:div :class "announcement" "Program now available!")
  (:div :class "announcement"
        "&lt;Programming&gt; <a href=\"https://2019.programming-conference.org/attending/Registration\">registration</a> is now open.")
  (:div :class "announcement" "The conference will be co-located with <a
href=\"http://2019.programming-conference.org/\">Programming 2019</a>")
  #+() (:div :class "announcement" "The conference is being organized. Stay tuned for updates!"))

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

  (:p "You can upload submissions on <a href=\"https://www.easychair.org/conferences/?conf=els2019\">EasyChair</a>.")

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

;;(define-date "Submission deadline" @2019-02-08)
;;(define-date "Notification of acceptance" @2019-02-24)
;;(define-date "Early-bird reg. deadline" @2019-02-28)
;; (define-date "Final papers" @2019-03-18)
(define-date "Conference start" @2019-04-01)
(define-date "Conference end" @2019-04-02)

;;; Sponsors
(define-sponsor acm
  :website "http://www.sigplan.org/"
  :logo "../static/logos/acm.svg")

;;(define-sponsor cl-foundation
;;  :website "http://cl-foundation.org/"
;;  :logo "../static/logos/cl-foundation.png")

(define-sponsor epita
  :website "http://www.epita.fr/"
  :logo "../static/logos/epita.png")

(define-sponsor lispworks
  :website "http://www.lispworks.com/"
  :logo "../static/logos/lispworks.png")

(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

;;(define-sponsor brunner
;;  :website "http://www.systemhaus-brunner.de/"
;;  :logo "../static/logos/brunner.png")


;;; People
(define-person (:family-name "Verna"
                :given-name "Didier")
  :role (:administrator)
  :email "www@european-lisp-symposium.org"
  :website "http://www.european-lisp-symposium.org"
  :organization "ELS")

(define-person (:family-name "Neuss"
        :given-name "Nicolas")
  :role (:programme-chair)
  :organization "FAU Erlangen-Nürnberg, Germany")

(define-person (:family-name "Antoniotti"
        :given-name "Marco")
  :role (:committee)
  :organization "Universita Milano Bicocca, Italy")

(define-person (:family-name "Battyani"
        :given-name "Marc")
  :role (:committee)
  :organization "Fractal Concept, France")

(define-person (:family-name "Costanza"
        :given-name "Pascal")
  :role (:committee)
  :organization "IMEC, ExaScience Life Lab, Leuven, Belgium")

(define-person (:family-name "Dreschler-Fischer"
        :given-name "Leonie")
  :role (:committee)
  :organization "University of Hamburg, Germany")

(define-person (:family-name "Emerson"
        :given-name "R. Matthew")
  :role (:committee)
  :organization "toughtstuff LLC, USA")

(define-person (:family-name "Heisig"
        :given-name "Marco")
  :role (:committee)
  :organization "FAU Erlangen-Nürnberg, Germany")

(define-person (:family-name "Herzeel"
        :given-name "Charlotte")
  :role (:committee)
  :organization "IMEC, ExaScience Life Lab, Leuven, Belgium")

(define-person (:family-name "Mai"
        :given-name "Pierre R.")
  :role (:committee)
  :organization "PMSF IT Consulting, Germany")

(define-person (:family-name "Ó Nualláin"
        :given-name "Breanndán ")
  :role (:committee)
  :organization "University of Amsterdam, Netherlands")

(define-person (:family-name "Rideau"
        :given-name "François-René")
  :role (:committee)
  :organization "Alacris.io")

(define-person (:family-name "Riva"
        :given-name "Alberto")
  :role (:committee)
  :organization "University of Florida, USA")

(define-person (:family-name "Stalla"
        :given-name "Alessio")
  :role (:committee)
  :organization "ManyDesigns Srl, Italy")

(define-person (:family-name "Krusenotto"
        :given-name "Patrick")
  :role (:committee)
  :organization "Deutsche Welle, Germany")

(define-person (:family-name "Marek"
        :given-name "Philipp")
  :role (:committee)
  :organization "Austria")

(define-person (:family-name "Chua"
        :given-name "Sacha")
  :role (:committee)
  :organization "Living an Awesome Life, Canada")


(define-person (:family-name "Monnier"
                :given-name "Stefan")
  :role (:speaker)
  :organization "Université de Montréal, Québec, Canada")

(define-person (:family-name "Rhodes"
                :given-name "Christophe")
  :role (:speaker)
  :organization "England")

(define-person (:family-name "Flatt"
                :given-name "Matthew")
  :role (:speaker)
  :organization "University of Utah, USA")

(define-text :registration
  (:p "Since we are co-locating with &lt;Programming&gt; this year,
registration must be done  through their <a href=\"https://2019.programming-conference.org/attending/Registration\">website</a>.
You may register for either the full conference, or only the first 2 days (ELS
and workshops). Because the student fee is higher than our normal rate, we
will also implement a student refund program when the conference is over, as
we did two years ago."))


;;; Programme
(define-programme-day @2019-04-01T00:00:00+01:00
  @08:30:00 (:title "Registration" :role (:organization))
  @09:15:00 (:title "Welcome message" :role (:organization))

  @09:30:00 (:title "Keynote: The Lisp of the Prophet for the One True Editor"
             :role (:talk :keynote)
             :speakers ("Stefan Monnier")
             :description "While the editor war is long gone and Emacs's
marketshare has undoubtedly shrunk, it has established itself as an important
branch in the Lisp family of languages. In this talk, I will look at what gave
Emacs Lisp its shape, including what it took from its siblings and ancestors
and what makes it different.")

  @10:30:00 (:title "Coffee Break" :role (:break))

  @11:00:00 (:title "Pattern-Based S-Expression Rewriting in Emacs"
             :role (:talk)
             :speakers ("Ryan Culpepper"))

  @11:30:00 (:title "Implementing Baker’s SUBTYPEP Decision Procedure"
             :role (:talk)
             :speakers ("Léo Valais" "Jim Newton" "Didier Verna"))
  @12:00:00 (:title "MAKE-METHOD-LAMBDA Revisited"
             :role (:talk)
             :speakers ("Irène Anne Durand" "Robert Strandh"))

  @12:30:00 (:title "Lunch" :role (:break))

  @14:30:00 (:title "Finite Automata Theory Based Optimization"
             :role (:talk)
             :speakers ("Jim Newton" "Didier Verna"))
  @15:00:00  (:title "Lazy, Parallel Multiple Value Reductions in Common Lisp"
              :role (:talk)
              :speakers ("Marco Heisig"))

  @15:30:00  (:title "Coffee Break" :role (:break))

  @16:00:00  (:title "Working with First-Order Proofs and Provers"
              :role (:talk)
              :speakers ("Mikhail Raskin" "Christoph Welzel"))
  @16:30:00  (:title "Plagiarism Detection for Common Lisp"
              :role (:talk)
              :speakers ("António Leitão"))

  @17:00:00 (:title "Lightning Talks" :role (:talk))

  @19:00:00 (:title "Social Event" :role (:dinner :organization)))


(define-programme-day @2019-04-02T00:00:00+01:00
  @08:30:00 (:title "Registration" :role (:organization))

  @09:00:00 (:title "Keynote: 20 More Years of Bootstrapping"
             :role (:talk :keynote)
             :speakers ("Christophe Rhodes")
             :description "Although its history is longer than this, the Steel
Bank Common Lisp system was announced to the world in 1999, with its
distinguishing characteristic of being written in vanilla ANSI Common Lisp
explicitly described in the announcement. We provide a retrospective on 20
years of development, discuss some of the features SBCL provides and the
rationale behind them, and offer entirely speculative thoughts about the next
20 years of the project.")
  @10:00:00 (:title "Bootstrapping Common Lisp Using Common Lisp"
             :speakers ("Irène Anne Durand" "Robert Strandh")
             :role (:talk))

  @10:30:00 (:title "Coffee Break" :role (:break))

  @11:00:00 (:title "Shader Pipeline and Effect Encapsulation using CLOS"
             :speakers ("Nicolas Hafner")
             :role (:talk))
  @11:45:00 (:title "Hierarchical Task Network Planning in Common Lisp"
             :speakers ("Robert P. Goldman" "Ugur Kuter")
             :role (:talk))

  @12:30:00 (:title "Lunch" :role (:break))

  @14:30:00 (:title "Rebooting Racket"
             :speakers ("Matthew Flatt")
             :role (:talk :keynote)
             :description "Racket started in 1995 as a fusion of two
off-the-shelf C/C++ libraries. From there, things got out of hand. We ended up
building and maintaining a large programming language — with ambitions that
span from language design to performance, from research to production — on an
especially inelegant core implementation. After 2+ years of concerted effort,
we have re-built Racket’s core in a more maintainable form. It’s a story as
old as programming, and this particular instance looks like it will have a
happy ending.")

  @15:30:00 (:title "Coffee Break" :role (:break))

  @16:00:00 (:title "Symbols as Namespaces in Common Lisp"
             :speakers ("Alessio Stalla")
             :role (:talk))

  @16:30:00 (:title "Parallelizing Quickref"
             :speakers ("Didier Verna")
             :role (:talk))

  @17:00:00 (:title "Lightning Talks"
             :role (:talk)))

;;; Locations
(define-location "Hotel Bristol Palace"
  :role (:conference)
  :photo "https://2019.programming-conference.org/getImage/carousel/DSC02930cropped.JPG"
  :website "https://2019.programming-conference.org/venue/programming-2019-venue"
  :address (:street "Via XX Settembre, 35"
            :post-code "16121"
            :city "Genova"
            :country "Italy")
  :map T)

(define-proceedings "../static/proceedings/2019.pdf")
