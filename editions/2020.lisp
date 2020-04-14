(in-package #:els-web-editions)
(define-edition "2020")
(in-package "2020")

;;(define-date "Submission deadline" @2020-02-13)
;;(define-date "Extended deadline" @2020-02-23)
;;(define-date "Author notification" @2020-03-16)
;;(define-date "Early registration deadline" @2020-04-01)
;;(define-date "Final papers" @2020-04-06)

(define-date "Conference start" @2020-04-27)
(define-date "Conference end" @2020-04-28)

(define-text :announcement
    (:div :class "announcement"
          "#COVID-19 update: The even will happen online. Stay tuned for updates.")
    (:div :class "announcement" "Preliminary programme and keynote abstracts now online.")
  #+()(:div :class "announcement"
        "Registration is now open! Early bird deadline: April 1st.")
  #+()(:div :class "announcement" "Paper sumbission deadline extended")
  #+()(:div :class "announcement" "ACM In-Cooperation-With status renewed!")
  #+()(:div :class "announcement" "Submissions being accepted now.")
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
  :organization "Université de Bordeaux"
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
  :organization "Université de Bordeaux"
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

(define-person (:given-name "Metin Evrim"
                :family-name "Ulu")
  :role (:committee)
  :organization "Middle East Technical University"
  :address (:country "Turkey"))

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
  #+()(:option "excursion" :status :inactive
   :price 20 :description "Sunday excursion (details below)")
  #+()(:option "excursion-guest" :status :inactive
   :price 20 :description "Sunday excursion guest"))

(define-sponsor acm
  :website "http://www.sigplan.org/"
  :logo "../static/logos/acm.svg")

(define-sponsor igalia
    :website "https://igalia.com"
    :logo "https://www.igalia.com/assets/i/logoDark.png")

(define-sponsor ravenpack
  :website "https://www.ravenpack.com/"
  :logo "../static/logos/ravenpack.jpg")

(define-sponsor epita
  :website "http://www.epita.fr/"
  :logo "../static/logos/epita.png")

(define-sponsor swissdevjobs
  :website "https://swissdevjobs.ch/menu"
  :logo "../static/logos/swissdevjobs.png")



;;; Programme
(define-programme-day @2020-04-27T00:00:00+01:00
  @08:30:00 (:title "Registration" :role (:organization))
  @09:15:00 (:title "Welcome message" :role (:organization))

  @09:30:00 (:title "Keynote: The Nanopass Framework as a Nanopass Compiler"
             :role (:talk :keynote)
             :speakers ("Andy Keep")
             :description "The nanopass framework is a domain specific language for defining compilers that provides two basic syntactic forms: define-language and define-pass. The define-language form defines the grammar for an intermediate representation and can either define the full language or extend an existing language. Language forms are represented using Scheme records and a parser and unparser can be constructed from the language definition to move between S-expression and nanopass language form representations. The define-pass form defines procedures for operating over these language forms, based on the specified input and output languages.

In addition to these two basic forms, a number of small tools for interacting with languages exist, including tools for extracting the define-language syntactic form for a language, making it easier to see the full language when it was defined as an extension, along with tools for differencing two languages to produce the language extension form, pruning unreachable nonterminals, and defining a procedure for counting nodes in a language form for a given language.

These tools are helpful, but we can imagine wanting more tools, for instance a tool to generate a equivalence procedure over language forms or a tool to generate a procedure for computing a histogram of nonterminal node types in a language form. Unfortunately, each tool must be written with knowledge of the internals of the nanopass framework. What if the nanopass framework instead provided an API for writing these extensions? What if the define-language and define-pass forms, were defined as nanopass languages that could be treated like other nanopass languages? How much of the nanopass framework could be written using the nanopass framework? This talk will explore this experiment.")

  @10:30:00 (:title "Coffee Break" :role (:break))

  @11:00:00 (:title "Omnipresent and low-overhead application debugging"
             :role (:talk)
             :speakers ("Robert Strandh"))

  @11:30:00 (:title "An R7RS Compatible Module System for Termite Scheme"
             :role (:talk)
             :speakers ("Frédéric Hamel" "Marc Feeley"))

  @12:00:00 (:title "LLVM Code Generation for Open Dylan"
             :role (:talk)
             :speakers ("Peter Housel"))

  @12:30:00 (:title "Lunch" :role (:break))

  @14:30:00 (:title "Sealable Metaobjects for Common Lisp"
             :role (:talk)
             :speakers ("Marco Heisig"))

  @15:00:00  (:title "Later Binding: Just-in-Time Compilation of a Younger Dynamic Programming Language"
              :role (:talk)
              :speakers ("Max Rottenkolber"))

  @15:30:00  (:title "Coffee Break" :role (:break))

  @16:00:00  (:title "Bidirectional leveled enumerators"
              :role (:talk)
              :speakers ("Irène Anne Durand"))

  @16:30:00  (:title "Indexing Common Lisp with Kythe"
              :role (:talk)
              :speakers ("Jonathan Godbout"))

  @17:00:00  (:title "TBA"
              :role (:talk)
              :speakers ("TBA"))

  @17:30:00 (:title "Lightning Talks" :role (:talk))

  @19:00:00 (:title "Social Event" :role (:dinner :organization)))


(define-programme-day @2020-04-28T00:00:00+01:00
  @08:30:00 (:title "Registration" :role (:organization))

  @09:00:00 (:title "Keynote: On ECL, the Embeddable Common Lisp"
             :role (:talk :keynote)
             :speakers ("Daniel Kochmański")
             :description "Embeddable Common Lisp is a Common Lisp implementation with historical roots dating back to 1985 when Kyoto Common Lisp was released as an open source project by Taichi Yuasa and Masami Hagiya. It is one of the first Common Lisp implementations predating the ANSI standard (CLtL1) and it has influenced its final version. First developed by academia, then by volunteers from the free software community, it still thrives as one of many actively developed Common Lisp implementations.

Thanks to a portable and small core it is possible to embed ECL in other applications as a shared library. This property enables Common Lisp programmers to develop their applications and plugins as an extension to existing software and to use Common Lisp software on platforms like Android and iOS. Executables and libraries built with ECL are small and suitable for writing utilities and libraries used by applications outside of the Common Lisp world.

Maintaining and improving a Common Lisp implementation is a challenging and fun task with many opportunities to learn about software and compilers. During this presentation I'll talk about the past, the present, and the future of ECL. I'll discuss its heritage, then move to its current architecture with its flaws and advantages, and I will finish with my plans for further development.")

  @10:00:00 (:title "A portable, annotation-based, visual stepper for Common Lisp"
             :speakers ("João Távora")
             :role (:talk))

  @10:30:00 (:title "Coffee Break" :role (:break))

  @11:00:00 (:title "Workshop: Mixing Mutability into the Nanopass Framework"
             :speakers ("Andy Keep")
             :role (:talk :keynote)
             :description "Languages defined using the nanopass framework are represented using immutable Scheme records [1], however, it can be useful to have mutable cells with the terminals of a language form. For instance, the Chez Scheme compiler represents each variable as a single Scheme record instance. This means the binding site and all use sites for a given variable all use the same record instance to represent that variable. The variable record contains mutable fields which allow information from variable uses to be visible at the binding site and vice versa. For instance, variable uses can report whether they are referenced, multiply referenced, or assigned to the variable binding site, or the variable binding site can record information needed at the use sites for a variable without constructing an environment within the pass.

This workshop will give a brief introduction to the nanopass framework using an example compiler for a small subset of Scheme, and then look at how this technique is used for converting assigned variables and computing free variable sets in lambda expressions.

[1] In addition to immutable records, standard (and hence mutable) Scheme lists are used for for representing lists within a language form, but the expectation is that these lists will not be mutated.")

  @12:00:00 (:title "Partial Evaluation Based CPS Transformation: An Implementation Case Study"
             :speakers ("Rajesh Jayaprakash")
             :role (:talk))

  @12:30:00 (:title "Lunch" :role (:break))

  @14:30:00 (:title "Representing method combinations"
             :speakers ("Robert Strandh")
             :role (:talk))

  @15:00:00 (:title "Why You Cannot (Yet) Write an \"Interval Arithmetic\" Library in Common Lisp -- or: Hammering Some Sense into :ieee-floating-point"
             :speakers ("Marco Antoniotti")
             :role (:talk))

  @15:30:00 (:title "Coffee Break" :role (:break))

  @16:00:00 (:title "JACL: A Common Lisp for Developing Single-Page Web Applications"
             :speakers ("Alan Dipert")
             :role (:talk))

  @16:30:00 (:title "Bringing GNU Emacs to native code"
             :speakers ("Andrea Corallo" "Luca Nassi" "Nicola Manca")
             :role (:talk))

  @17:00:00  (:title "TBA"
              :role (:talk)
              :speakers ("TBA"))

  @17:30:00 (:title "Lightning Talks"
             :role (:talk)))
