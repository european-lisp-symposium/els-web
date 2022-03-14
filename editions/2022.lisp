(in-package #:els-web-editions)
(define-edition "2022")
(in-package "2022")

;;(define-date "Submission deadline" @2022-01-23)
;;(define-date "*** Extended deadline ***" @2022-01-30)
;;(define-date "Author notification" @2022-02-21)
;;(define-date "Final papers" @2022-03-07)
;;(define-date "Early registration deadline" @2020-04-01)

(define-date "Conference start" @2022-03-21)
(define-date "Conference end" @2022-03-22)

(define-text :announcement
  (:div :class "announcement" "<a href=\"https://www.last2ticket.com/en/embed/e/4173/s/45625/programming-2022\">Register</a> now!")
  (:div :class "announcement" "Programme available now!")
  #+()(:div :class "announcement" "Submission deadline extended by one week!"))

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
  :role (:administrator :demo :speaker)
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
  :role (:committee :speaker)
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
  :role (:committee :speaker)
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
  :role (:committee :speaker)
  :organization "LaBRI, University of Bordeaux")

(define-person (:family-name "Moeller"
                :given-name "Ralf")
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

(define-person (:family-name "Hester"
                :given-name "Sky")
  :role (:committee)
  :organization "Private Consultant")

(define-person (:family-name "Ritchie"
                :given-name "Sam")
  :description "I'm a researcher at the Mentat Collective, and currently working
on a series of interactive, multiplayer computational textbooks for exploring mathematical physics and other forms of modeled reality. I've lived past work-lives at (Google) X, Stripe, Twitter, founded Paddleguru and Racehub; I'm most well known in the software world as the author of Summingbird, Algebird, and SICMUtils, and as the maintainer of Cascalog. I have a secret identity as a mountain athlete and amateur aircraft mechanic, and live with wife Jenna and daughter Juno in Boulder, Colorado."
  :role (:speaker :keynote :demo))

(define-person (:family-name "Strandh"
                :given-name "Robert")
  :role (:speaker :keynote)
  :description "Recently retired, Robert Strandh can look back at a lifelong experience in computer science and software development both in academia and industry, from 5 countries on 4 continents.

Currently, Strandh's projects are focused on the implementation of dynamic programming languages, as well as on operating-system technology in view of progress in computer and software technology during the past few decades.")


(define-person (:family-name "Monnier"
                :given-name "Stefan")
  :role (:speaker))

(define-person (:family-name "De Roover"
                :given-name "CoenCoen")
  :role (:speaker))


(define-person (:family-name "Retzlaff"
                :given-name "Max-Gerd")
  :description "This demonstrates that uLisp is not only fun but mature enough to be used for serious projects and commercial prototypes.

Max-Gerd Retzlaff started to use Common Lisp in 2003 and uses it professionally since 2005.

He studied computer science at the KIT, Germany. In his diploma thesis in the field of applied geometry he simulated real-world mechanical engineering problems with previously unattained precision, speed, efficiency, and robustness. This was implemented in Common Lisp. If you have used a Hˆfler gear grinding machine in the last decade there is a chance you profited from his work.

Max is a PhD candidate and worked as research and teaching assistant at the KIT Computer Graphics Group in collaboration with the Fraunhofer IOSB, Karlsruhe. He headed the software development of a Berlin-based company providing services for the US insurance market and served for three years as X12C TAS representative of the ANSI Accredited Standards Committee X12 in the USA.

Currently, he works as a software developer at Datagraph, Berlin, developing technology for the Dydra graph database service as well as an independent scientific contractor and freelancer.

Since 2004 Max has been working as an artist and participated with interactive installations in exhibitions in many European cities, with works in the collection of the ZKM Karlsruhe and on permanent display in the DASA Dortmund. More on www.retzlaff-wenger.com.
"
  :role (:speaker :demo))

(define-person (:family-name "Koestler"
                :given-name  "Harald")
  :role (:speaker))

(define-person (:family-name "Sengul"
                :given-name "Andrew")
  :role (:speaker))

(define-person (:family-name "Wessel"
                :given-name "Michael")
  :role (:speaker))

(define-person (:family-name "Marcelino"
                :given-name "Miguel")
  :role (:speaker))

(define-person (:family-name "Leitão"
                :given-name "António")
  :role (:speaker))

(define-person (:family-name "Kursun"
                :given-name "Turgut Reis")
  :role (:speaker))

(define-person (:family-name  "Van der Plas"
                :given-name "Jens")
  :role (:speaker))

(define-person (:family-name  "Stiévenart"
                :given-name "Quentin")
  :role (:speaker))

(define-person (:family-name  "De Roover"
                :given-name  "Coen")
  :role (:speaker))

(define-person (:family-name "Muñoz"
                :given-name "Fermin")
  :roll (:speaker))

(define-location "FEUP, Universidade do Porto"
  :role (:conference)
  :photo "https://2022.programming-conference.org/getImage/carousel/Puente_Don_Luis_I%252C_Oporto%252C_Portugal%252C_2012-05-09%252C_DD_13.JPG?1616701137000"
  :website "https://2022.programming-conference.org/venue/programming-2022-venue"
  :address (:street "Rua Dr. Roberto Frias s/n"
            :post-code "4200-465"
            :city "Porto"
            :country "Portugal")
  :map T)

(define-text :registration
      (:p "Since we are co-locating with &lt;Programming&gt; this year,
registration must be done through their <a href=\"https://www.last2ticket.com/en/embed/e/4173/s/45625/programming-2022\">system</a>."))

(define-sponsor epita
  :website "http://www.epita.fr/"
  :logo "../static/logos/epita.png")

(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

(define-sponsor siscog
  :website "https://www.siscog.pt/"
  :logo "../static/logos/siscog.png")

(define-sponsor acm
  :website "http://www.sigplan.org/"
  :logo "../static/logos/acm.svg")


(define-text :keynotes
  (:ul
   (:li (:b "Sam Ritchie" " Lisp as Renaissance Workshop: A Lispy Tour through Mathematical Physics"))
   (:li (:b "Robert Strandh" " Creating a Common Lisp Implementation"))
   (:li (:b "Sam Ritchie" " Demo: Building SICMUtils, the Atelier of Abstractions"))))

;;; Programme

(define-programme-day @2022-03-21T00:00:00+01:00
  @08:30:00 (:title "Registration, badges, meet and greet"
             :role (:organization))
  @09:00:00 (:title "Welcome Message"
             :role (:organization))
  @09:15:00 (:title "Research Paper: Open Closures: Disclosing lambda's inner monomaniac object!"
             :role (:talk)
             :speakers ("Stefan Monnier")
             :description "While folklore teaches us that closures and objects are two sides of the same coin, they remain quite different in practice, most notably because closures are opaque, the only supported operation being to call them.

In this article we discuss a few cases where we need functions to be less opaque, and propose to satisfy this need by extending our beloved $\lambda$ so as to expose as sorts of record fields some of the variables it captures. These \emph{open closures} are close relatives of CLOS's \emph{funcallable objects} as well as of the \emph{function objects} of traditional object-oriented languages like Java, except that they are functions made to behave like objects rather than the reverse.

We present the design and implementation of such a feature in the context of Emacs Lisp.")
  @10:00:00 (:title "Coffee Break"
             :role (:break))
  @10:30:00 (:title "Lisp as Renaissance Workshop: A Lispy Tour through Mathematical Physics"
             :role (:talk :keynote)
             :speakers ("Sam Ritchie")
             :description "Lisp is an exquisite medium for the communication of computational ideas. From our most accurate observations of physical reality up through chemistry, biology, and cognition, the universe seems to be computing itself; modeling and simulating these systems in machines has led to incredible technological wealth.

Deep principles and beautiful abstractions seem to drive these systems, but they have always been hard to discover; and we are floundering at the computational frontiers of intelligence, synthetic biology and control systems for our climate. The only way to push forward is to build powerful tools that can communicate and teach.

This talk will take a tour through SICMUtils, a Lisp system designed as a workshop for conducting serious work in mathematical physics and sharing those explorations in a deeply interactive, multiplayer way. The library’s growth parallels our human scientific history; hopefully tools like this will help us write the next chapter.

Bio:
I'm a researcher at the Mentat Collective, and currently working on a series of interactive, multiplayer computational textbooks for exploring  mathematical physics and other forms of modeled reality. I've lived past work-lives at (Google) X, Stripe, Twitter, founded Paddleguru and Racehub; I'm most well known in the software world as the author of Summingbird, Algebird, and SICMUtils, and as the maintainer of Cascalog. I have a secret identity as a mountain athlete and amateur aircraft mechanic, and live with wife Jenna and daughter Juno in
Boulder, Colorado.")
  @11:30:00 (:title "Group Exercise")
  @12:00:00 (:title "Lunch"
             :role (:break))
  @13:30:00 (:title "Research Paper: QueryFS: compiling queries to define a filesystem"
             :speakers ("Michael Raskin")
             :role (:talk)
             :description "Personal computing devices store more and more loosely arranged data. Each new method of keeping track of your data supposes that you stop using old methods on this data. One of the more stable interfaces for data access is the filesystem API. However, the standard filesystem semantic provides a fixed and limited set of ways to search for data.

QueryFS is a virtual filesystem for POSIX-like systems that compiles user-supplied queries in various DSLs via translation to Common Lisp code and represents the results as directories. The main current use-case is using it to navigate and process data stored or indexed in PostgreSQL with traditional tools (grep, find, vim etc.)

We show how practical usage of QueryFS looks like and what lies behind this.")
  @14:00:00 (:title "Research Paper: A CLOS protocol for lexical environments"
             :speakers ("Robert Strandh" "Irène Anne Durand")
             :role (:talk)
             :description "The concept of an environment is mentioned in many places in the Common Lisp standard, but the nature of the object is not specified.
For the purpose of this paper, an environment is a mapping (or several such mappings when there is more than one namespace as is the case for Common Lisp) from names to meanings.

In this paper, we propose a replacement for the environment protocol documented in the book ``Common Lisp the Language, second edition'' by Guy Steele. Rather than returning multiple values as the functions in that protocol do, the protocol suggested in this paper is designed so that functions return instances of standard classes. Accessor functions on those instances supply the information needed by a compiler or any other code walker application.

The advantage of our approach is that a protocol based on generic functions and standard classes is easier to extend in backward-compatible ways than the previous protocol, so that implementations can define additional functionality on these objects. Furthermore, CLOS features such as auxiliary methods can be used on
these objects, making it possible to extend or override functionality provided by the protocol, for implementation-specific purposes.

Bio: 
Recently retired, Robert Strandh can look back at a lifelongexperience in computer science and software development both in academia and industry, from 5 countries on 4 continents.

Currently, Strandh's projects are focused on the implementation of dynamic programming languages, as well as on operating-system technology in view of progress in computer and software technology during the past few decades.")
  @14:30:00 (:title "Demo: IoT devices and embedded systems with uLisp"
             :speakers ("Max-Gerd Retzlaff")
             :role (:demo)
             :description "You've probably seen uLisp mentioned in the list of languages on the web page of the European Lisp Symposium. But did you actually look at it and use it? With this demonstration, Max-Gerd Retzlaff invites you to do so! uLisp is a version of Lisp designed and authored by David Johnson-Davies as a subset of Common Lisp to run on microcontrollers. Max extended uLisp a bit and has been using it since January 2021 for both fun as well as commercial projects: He has made a hand-held Lisp machine for his nephew, implemented a small client for the Dydra graph database to store sensor readings directly in the database for later analysis and visualization, and even installed a little Lisp computer in his Vespa motor scooter to serve as a more accurate GPS-based speedometer and clock.

More recently, he used uLisp to design and implement a sensor device for an automated IoT device consisting of ten environmental sensors and four controllable power sockets to activate environmental control measures. It is provisioned via Bluetooth (BLE) and communicates with a REST backend over Wi-Fi via HTTPs and schema-based JSON to report sensor readings and to retrieve commands from a controlling smartphone application (developed by a different party) to control the actors or to calibrate the more complicated sensors.

This demonstrates that uLisp is not only fun but mature enough to be used for serious projects and commercial prototypes.

Max-Gerd Retzlaff started to use Common Lisp in 2003 and uses it professionally since 2005.

He studied computer science at the KIT, Germany. In his diploma thesis in the field of applied geometry he simulated real-world mechanical engineering problems with previously unattained precision, speed, efficiency, and robustness. This was implemented in Common Lisp. If you have used a Hˆfler gear grinding machine in the last decade there is a chance you profited from his work.

Max is a PhD candidate and worked as research and teaching assistant at the KIT Computer Graphics Group in collaboration with the Fraunhofer IOSB, Karlsruhe. He headed the software development of a Berlin-based company providing services for the US insurance market and served for three years as X12C TAS representative of the ANSI Accredited Standards Committee X12 in the USA.

Currently, he works as a software developer at Datagraph, Berlin, developing technology for the Dydra graph database service as well as an independent scientific contractor and freelancer.

Since 2004 Max has been working as an artist and participated with interactive installations in exhibitions in many European cities, with works in the collection of the ZKM Karlsruhe and on permanent display in the DASA Dortmund. More on www.retzlaff-wenger.com.

Contact him via e-mail to mgr@matroid.org"
                    :website "http://www.defsystem.net")
  @15:00:00 (:title "Coffee Break"
             :role (:break))
  @15:30:30 (:title "Research Paper: Closing the Performance Gap Between Lisp and C"
             :speakers ("Marco Heisig" "Harald Koestler")
             :role (:talk)
             :description "Lisp is the second oldest programming language, and the first one to value productivity more than raw execution speed. This initial disregard for performance has indeed led to some mind-bogglingly slow implementations, especially in the early days, but modern Lisp compilers such as SBCL have almost fully closed the performance gap to the fastest imperative programming languages. Almost, but not quite: Until now, many loop optimizations and support for single instruction, multiple data (SIMD) programming are still missing in Lisp.

We correct this deficiency with two libraries: The first one is sb-simd, an SBCL-specific library that provides convenient bindings for various SIMD instructions sets. The second one is Loopus, a portable loop optimization framework that works via macros and source to source transformations. The most prominent features of Loopus are its optimization of array accesses and that, on SBCL, it automatically applies SIMD vectorization to certain loops.

We conclude with a performance evaluation for several example programs, and show that Lisp code using our libraries can achieve up to 94\% of the performance of highly optimized C code.")
  @16:00:00 (:title "Remote Demo: April APL Compiler"
             :role (:talk)
             :speakers ("Andrew Sengul")
             :description "Proposed is a demonstration of the April APL compiler (code hosted at https://github.com/phantomics/april). April compiles a subset of the APL language into Common Lisp, allowing APL’s terse, efficient syntax to be leveraged for array processing and mathematical operations within a Common Lisp program. This presentation will cover April’s basic syntax, its use cases and its architecture, leading into a broader discussion of language design philosophy.")
  @16:30:00 (:title "Enlightening Lightning Talks"
             :role (:talk)))

(define-programme-day @2022-03-22T00:00:00+01:00
  @08:30:00 (:title "Registration, badges, meet and greet"
             :role (:organization))
  @09:00:00 (:title "Research Paper: Transpiling Python to Julia using PyJL"
             :role (:talk)
             :speakers ("Miguel Marcelino" "António Leitão")
             :description "Transpilers translate between high-level programming languages, providing an efficient alternative to manually porting software from one language to another. With the rise of new programming languages, transpilers are ideal tools to assist the conversion of libraries written in more established programming languages to newer and less popular ones. This process facilitates language adoption and fosters their development.
There are currently many transpilation tools available, however, only some focus on producing human-readable and maintainable code, and only smaller set of these generate code that is indistinguishable from human-written programs. The main benefit is that the generated code can easily be understood and modified by programmers, resulting in improved maintainability.
Julia is a recent programming language that targets some of the application areas of the widely popular Python language. However, the number of libraries available in Julia is still lower than what is provided in Python. We propose a solution that involves the development of a transpiler to generate human-readable Julia code from Python code, to speedup the translation of Python libraries to Julia.")
  @09:30:00 (:title "Demo: ETAP: Experimental Typesetting Algorithms Platform"
             :speakers ("Didier Verna")
             :role (:demo)
             :description "We present the early development stages of ETAP, a platform for experimenting with typesetting algorithms. The purpose of this platform is twofold: while its primary objective is to provide building blocks for quickly and easily designing and testing new algorithms (or variations on existing ones), it can also be used as an interactive, real time demonstrator for many features of digital typography, such as kerning, hyphenation, or ligaturing.")
  @10:00:00 (:title "Coffee Break"
             :role (:break))
  @10:30:30 (:title "Creating a Common Lisp Implementation"
             :role (:keynote :talk)
             :speakers ("Robert Strandh")
             :description "Being dissatisfied with the way current Common Lisp implementations are written, and with the duplication of system code between different implementations, we started the SICL project in 2008.  The initial idea was to create modules that the creators of Common Lisp implementations could use to create a complete system from an initial minimal core.  But this idea was unsatisfactory because it required each module to be written in a subset of Common Lisp.  So instead, we decided to use the full language to implement these modules, effectively making them useless to an implementation using traditional bootstrapping techniques.  We therefore decided to also create a new Common Lisp implementation (also named SICL), that could use those modules.

A crucial element is a bootstrapping technique that can handle these modules.  In this spirit, we have developed several modules, including an implementation of CLOS which is also an important element of bootstrapping.  Lately, we have increased our level of ambition in that we want to extract those modules as separate (and separately maintained) repositories, which requires us to deal with code during bootstrapping that was not specifically written for SICL.

In our talk, we describe this evolution of ambition, and its consequences to bootstrapping, in more detail.  We also give an overview of several new techniques we created, some of which have been published (at ILC and ELS) and some of which have not.  Finally, we discuss the future of the project, and other projects for which we imagine SICL to be a base.")
  @11:30:00 (:title "SICL demo"
             :role (:demo))
  @12:00:00 (:title "Lunch"
             :role (:break))
  @13:30:30 (:title "CEDAR"
             :speakers ("Fermin Muñoz")
             :roll (:demo))
  @14:00:00 (:title "Building SICMUtils, the Atelier of Abstractions"
             :speakers ("Sam Ritchie")
             :role (:keynote :demo)
             :description "SICMUtils is a Clojure library designed for interactive exploration of mathematical physics. It is simultaneously a work of persuasive writing, a collection of essays on functional pearls and computational ideas, a stable of workhorse functional abstractions, and a practical place to work and visualize algorithms and physical systems, on a server or in the browser.

How do you build a library like this? This talk will go through the architecture of SICMUtils, based on many of the ideas of \"additive programming\" from Gerald Sussman and Chris Hanson's latest book, Software Design for Flexibility. We'll look at surprising examples of the system becoming easier to extend over time. Clojure's embrace of its host platform lets us use the best modern work in Javascript for visualization, while keeping the horsepower of our servers for real work. Lisp's particular elegance will shine throughout.

Bio:
I'm a researcher at the Mentat Collective, and currently working on a series of interactive, multiplayer computational textbooks for exploring mathematical physics and other forms of modeled reality. I've lived past work-lives at (Google) X, Stripe, Twitter, founded Paddleguru and Racehub; I'm most well known in the software world as the author of Summingbird, Algebird, and SICMUtils, and as the maintainer of Cascalog. I have a secret identity as a mountain athlete and amateur aircraft mechanic, and live with wife Jenna and daughter Juno in Boulder, Colorado.")
  @15:00:00 (:title "Coffee Break"
             :role (:break))
  @15:30:00 (:title "Remote Research Paper: : An Ontology-Based Dialogue Managment Framework for Virtual Personal Assistants in Common Lisp"
             :speakers ("Michael Wessel")
             :role (:talk)
             :description "We present a new approach to dialogue specification for Virtual Personal Assistants (VPAs) based on so-called dialogue workflow graphs. Our approach relies on Semantic Web technology (OWL), implemented in Common Lisp with the help of the Racer reasoner. Our new dialogue specification language (DSL) is a set of Common Lisp macros, a Domain Specific Language, which facilitates customer participation in the modeling process. The resulting dialogue models are also very concise. The DSL is a new modeling layer on top of our ontology-based Dialogue Management (DM) framework OntoVPA. We explain the rationale and benefits behind the new language, and support our claims with concrete reduced Level-of-Effort (LOE) numbers from two recent OntoVPA projects.")
  @16:00:00 (:title "Research Paper: RacketLogger: Logging and Visualising Changes in DrRacket"
             :role (:talk)
             :speakers ("Turgut Reis Kursun"
                        "Jens Van der Plas"
                        "Quentin Stiévenart"
                        "Coen De Roover")
             :description "Developers frequently make code changes while programming, such as deleting a line of code and renaming or introducing a variable. These changes can be detected and logged, for example by the IDE used by the developer. Logging changes is possible at two levels: at the textual level or at the level of the abstract syntax tree (AST) of the program. The logged changes, in both forms, are useful because they can be used to build new software engineering tools, such as static code analysers.

Plugins that log changes have already been developed for some IDEs. However, so far, no change-logging plugin has been developed for the DrRacket IDE, which supports the development of programs written in Scheme-like languages such as R5RS Scheme and Racket.
To fill this gap, we have developed RacketLogger, a change-logging plugin for DrRacket.
RacketLogger logs changes both at the textual level and at the AST level.
To determine changes at the level of the AST, we have adapted Negara et al.'s algorithm to support Scheme syntax.
We have evaluated our plugin by creating a visualisation for the logged changes to measure how well RacketLogger can be used as a building block, and conducted a small-scale user study to measure its usability.")

  @16:30:00 (:title "Enlightening Lightning Talks"
             :role (:talk))

  )

#+()(define-proceedings "../static/proceedings/2022.pdf")
