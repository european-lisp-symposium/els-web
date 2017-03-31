(in-package #:els-web-editions)
(define-edition "2017")
(in-package "2017")

;;; Texts
(define-text :announcement
  (:div :class "announcement" "This year's conference is co-located with <a href=\"http://2017.programmingconference.org/home\">Programming 2017</a>"))

(define-date "Conference start" @2017-04-03)

(define-date "Conference end" @2017-04-04)

;;; Sponsors
(define-sponsor cl-foundation
  :website "http://cl-foundation.org/"
  :logo "../static/logos/cl-foundation.png")

(define-sponsor epita
  :website "http://www.epita.fr/"
  :logo "../static/logos/epita.png")

(define-sponsor biotech-ufl
  :website "http://www.biotech.ufl.edu/"
  :logo "../static/logos/ufl.svg")

(define-sponsor lispworks
  :website "http://www.lispworks.com/"
  :logo "../static/logos/lispworks.png")

(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

(define-sponsor brunner
  :website "http://www.systemhaus-brunner.de/"
  :logo "../static/logos/brunner.png")

;;; People
(define-person (:family-name "Verna"
                :given-name "Didier")
  :role (:administrator :speaker)
  :email "www@european-lisp-symposium.org"
  :website "http://www.european-lisp-symposium.org"
  :organization "ELS")

(define-person (:family-name "Riva"
                :given-name "Alberto")
  :role (:programme-chair)
  :organization "University of Florida"
  :address (:country "USA"))

(define-person (:family-name "Antoniotti"
                :given-name "Marco")
  :role (:committee)
  :organization "Università Milano Bicocca"
  :address (:country "Italy"))

(define-person (:family-name "Battyani"
                :given-name "Marc")
  :role (:committee))

(define-person (:family-name "D'Hondt"
                :given-name "Theo")
  :role (:committee)
  :organization "Vrije Universiteit Brussel"
  :address (:country "Belgium"))

(define-person (:family-name "Feeley"
                :given-name "Marc")
  :role (:committee)
  :organization "Université de Montreal"
  :address (:country "Canada"))

(define-person (:family-name "Ionescu"
                :given-name "Stelian")
  :role (:committee)
  :organization "Google"
  :address (:country "Switzerland"))

(define-person (:family-name "Joswig"
                :given-name "Rainer")
  :role (:committee)
  :organization "Independent Consultant"
  :address (:country "Germany"))

(define-person (:family-name "Leitão"
                :given-name "António"
                :additional-name "Menezes")
  :role (:committee)
  :organization "Technical University of Lisbon"
  :address (:country "Portugal"))

(define-person (:family-name "Levine"
                :given-name "Nick")
  :role (:committee)
  :organization "RavenPack"
  :address (:country "Spain"))

(define-person (:family-name "Lieberman"
                :given-name "Henry")
  :role (:committee)
  :organization "MIT"
  :address (:country "USA"))

(define-person (:family-name "Tarver"
                :given-name "Mark")
  :role (:committee)
  :organization "Shen Programming Group")

(define-person (:family-name "McCarthy"
                :given-name "Jay")
  :role (:committee)
  :organization "University of Massachusetts"
  :address (:city "Lowell" :country "USA"))

(define-person (:family-name "Queinnec"
                :given-name "Christian")
  :role (:committee)
  :organization "Université Pierre et Marie Curie"
  :address (:country "France"))

(define-person (:family-name "Rideau"
                :given-name "François-René")
  :role (:committee :speaker)
  :organization "Bridgewater Associates"
  :address (:country "USA"))

(define-person (:family-name "Siivola"
                :given-name "Nikodemus")
  :role (:committee)
  :organization "ZenRobotics Ltd")

(define-person (:family-name "Stalla"
                :given-name "Alessio")
  :role (:committee)
  :organization "Università degli Studi di Genova"
  :address (:country "Italy"))

(define-person (:family-name "Hübner"
                :given-name "Hans")
  :role (:speaker)
  :organization "LambdaWerk GmbH"
  :address (:country "Germany"
            :city "Berlin"))

(define-person (:family-name "Khomtchouk"
                :given-name "Bohdan"
                :additional-name "B.")
  :role (:speaker)
  :organization "University of Miami Miller School of Medicine"
  :address (:country "USA"
            :city "Miami"))

(define-person (:family-name "Herda"
                :given-name "Michal")
  :role (:speaker))

(define-person (:family-name "Domkin"
                :given-name "Vsevolod")
  :role (:speaker))

(define-person (:family-name "Peschanski"
                :given-name "Frederic")
  :role (:speaker))

(define-person (:family-name "Newton"
                :given-name "Jim")
  :role (:speaker))

(define-person (:family-name "Colange"
                :given-name "Maximilien")
  :role (:speaker))

(define-person (:family-name "Wood"
                :given-name "Alexander")
  :role (:speaker))

(define-person (:family-name "Goldman"
                :given-name "Robert")
  :role (:speaker))

(define-person (:family-name "Pipping"
                :given-name "Elias")
  :role (:speaker))

(define-person (:family-name "Hafner"
                :given-name "Nicolas")
  :role (:speaker))

(define-person (:family-name "Brunner"
                :given-name "Daniel")
  :role (:speaker))

(define-person (:family-name "Brunner"
                :given-name "Stephan")
  :role (:speaker))

(define-person (:family-name "Seppke"
                :given-name "Benjamin")
  :role (:speaker))

(define-person (:family-name "Dreschler-Fischer"
                :given-name "Leonie")
  :role (:speaker))

(define-person (:family-name "Heisig"
                :given-name "Marco")
  :role (:speaker))

(define-person (:family-name "Neuss"
                :given-name "Nicolas")
  :role (:speaker))

(define-person (:family-name "Losh"
                :given-name "Steve")
  :role (:speaker))

(define-person (:family-name "Durand"
                :given-name "Irène")
  :role (:speaker))

(define-person (:family-name "Strandh"
                :given-name "Robert")
  :role (:speaker))

(define-person (:family-name "Lier"
                :given-name "Alexander")
  :role (:speaker))

(define-person (:family-name "Selgrad"
                :given-name "Kai")
  :role (:speaker))

(define-person (:family-name "Stamminger"
                :given-name "Marc")
  :role (:speaker))

(define-person (:family-name "De Bleser"
                :given-name "Jonas")
  :role (:speaker))

(define-person (:family-name "Stiévenart"
                :given-name "Quentin")
  :role (:speaker))

(define-person (:family-name "Nicolay"
                :given-name "Jens")
  :role (:speaker))

(define-person (:family-name "De Roover"
                :given-name "Coen")
  :role (:speaker))

(define-person (:family-name "Marty"
                :given-name "Alain")
  :role (:speaker))

(define-person (:family-name "Raskin"
                :given-name "Mikhail")
  :role (:speaker))

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
(define-programme-day @2017-04-03T00:00:00+02:00
  @09:00:00 (:title "Welcome Message"
	     :role (:organization))
  @09:30:00 (:title "Identity in a World of Values"
	     :role (:talk :keynote)
	     :speakers ("Hans Hübner")
	     :description "Data persistence can add a great deal of complexity to application software, and making the gap between application and storage has been a constant field of research, experiments and products. In the object oriented programming paradigm, persistence seems to be a natural extension to object behavior, and even though one could argue that many persistent object systems have flaws and leak their abstractions, there is a large body of prior art and research in that area.

In the functional programming world, persistence does not find as natural a partnering abstraction, and it is often either conceptionally pushed to the boundaries of the application, or treated in an ad-hoc fashion interleaved with the beauty and conceptional rigor of pure functions.

The presentation discusses these forces and explores how Clojure's Software Transactional Memory system can be used to implement application data persistence.")
  @10:30:00 (:title "Coffee"
             :role (:break))
  @11:00:00 (:title "Common Lisp UltraSpec - A Project For Modern Common Lisp Documentation"
             :role (:talk)
             :speakers ("Michal Herda"))
  @11:30:00 (:title "Loading Multiple Versions of an ASDF System in the Same Lisp Image"
             :role (:talk)
             :speakers ("Vsevolod Domkin"))
  @12:00:00 (:title "Lunch"
             :role (:break))
  @13:30:00 (:title "A Lisp Way to Type Theory and Formal Proofs"
             :role (:talk)
             :speakers ("Frederic Peschanski"))
  @14:00:00 (:title "Programmatic Manipulation of Common Lisp Type Specifiers"
             :role (:talk)
             :speakers ("Jim Newton" "Didier Verna" "Maximilien Colange"))
  @14:30:00 (:title "Type Inference in Cleavir"
             :role (:talk)
             :speakers ("Alexander Wood"))
  @15:00:00 (:title "Coffee"
             :role (:break))
  @15:30:00 (:title "Delivering Common Lisp Applications with ASDF 3.3"
             :role (:talk)
             :speakers ("Robert Goldman" "Elias Pipping" "François-René Rideau"))
  @15:52:00 (:title "Radiance – a Web Application Environment"
             :role (:talk)
             :speakers ("Nicolas Hafner"))
  @16:15:00 (:title "Teaching Students of Engineering some Insights of the Internet of Things using Racket and the RaspberryPi"
             :role (:talk)
             :speakers ("Daniel Brunner" "Stephan Brunner"))
  @16:37:00 (:title "Interactive Functional Medical Image Analysis"
             :role (:talk)
             :speakers ("Benjamin Seppke" "Leonie Dreschler-Fischer"))
  @17:00:00 (:title "Lightning Talks"
             :role (:talk :lightning))
  @17:30:00 (:title ""
             :role (:break)))

(define-programme-day @2017-04-04T00:00:00+02:00
  @09:00:00 (:title "How the strengths of Lisp-family languages facilitate building complex and flexible bioinformatics applications"
	     :role (:talk :keynote)
	     :speakers ("Bohdan Khomtchouk")
	     :description "We present a rationale for expanding the presence of the Lisp family of programming languages in bioinformatics and computational biology research. Put simply, Lisp-family languages enable programmers to more quickly write programs that run faster than in other languages. Languages such as Common Lisp, Scheme and Clojure facilitate the creation of powerful and flexible software that is required for complex and rapidly evolving domains like biology. We will point out several important key features that distinguish languages of the Lisp family from other programming languages, and we will explain how these features can aid researchers in becoming more productive and creating better code. We will also show how these features make these languages ideal tools for artificial intelligence and machine learning applications. We will specifically stress the advantages of domain-specific languages (DSLs): languages that are specialized to a particular area, and thus not only facilitate easier research problem formulation, but also aid in the establishment of standards and best programming practices as applied to the specific research field at hand. DSLs are particularly easy to build in Common Lisp, the most comprehensive Lisp dialect, which is commonly referred to as the 'programmable programming language'. We are convinced that Lisp grants programmers unprecedented power to build increasingly sophisticated artificial intelligence systems that may ultimately transform machine learning and artificial intelligence research in bioinformatics and computational biology.")
  @10:00:00 (:title "Parallelizing Femlisp"
             :role (:talk)
             :speakers ("Marco Heisig" "Nicolas Neuss"))
  @10:30:00 (:title "Coffee"
             :role (:break))
  @11:00:00 (:title "General Game Playing in Common Lisp"
             :role (:talk)
             :speakers ("Steve Losh"))
  @12:00:00 (:title "Lunch"
             :role (:break))
  @13:30:00 (:title "Fast, Maintainable, and Portable Sequence Functions"
             :role (:talk)
             :speakers ("Irène Durand" "Robert Strandh"))
  @14:00:00 (:title "DIY Meta Languages with Common Lisp"
             :role (:talk)
             :speakers ("Alexander Lier" "Kai Selgrad" "Marc Stamminger"))
  @14:30:00 (:title "Static Taint Analysis of Event-driven Scheme Programs"
             :role (:talk)
             :speakers ("Jonas De Bleser" "Quentin Stiévenart" "Jens Nicolay" "Coen De Roover"))
  @15:00:00 (:title "Coffee"
             :role (:break))
  @15:30:00 (:title "on the {lambda way}"
             :role (:talk)
             :speakers ("Alain Marty"))
  @16:00:00 (:title "Writing a portable code walker in Common Lisp"
             :role (:talk)
             :speakers ("Mikhail Raskin"))
  @16:30:00 (:title "Removing redundant tests by replicating control paths"
             :role (:talk)
             :speakers ("Irène Durand" "Robert Strandh"))
  @17:00:00 (:title "Lightning Talks"
             :role (:talk :lightning))
  @17:30:00 (:title "Conference End"
             :role (:organization)))
