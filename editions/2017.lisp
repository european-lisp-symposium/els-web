(in-package #:els-web-editions)
(define-edition "2017")
(in-package "2017")

;;; Texts
(define-text :announcement
  (:div :class "announcement" "This year's conference is co-located with <a href=\"http://2017.programmingconference.org/home\">Programming 2017</a>")
  (:div :class "announcement" "Submissions are now closed."))

(define-date "Submission deadline" @2017-02-06)

(define-date "Notification of acceptance" @2017-03-06)

(define-date "Final papers" @2017-03-20)

(define-date "Conference start" @2017-04-03)

(define-date "Conference end" @2017-04-04)

;;; Sponsors
(define-sponsor brunner
  :website "http://www.systemhaus-brunner.de/"
  :logo "../static/logos/brunner.png")

(define-sponsor epita
  :website "http://www.epita.fr/"
  :logo "../static/logos/epita.png")

(define-sponsor lispworks
  :website "http://www.lispworks.com/"
  :logo "../static/logos/lispworks.png")

(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

(define-sponsor cl-foundation
  :website "http://cl-foundation.org/"
  :logo "../static/logos/cl-foundation.png")

;;; People
(define-person (:family-name "Verna"
                :given-name "Didier")
  :role (:administrator)
  :email "didier@elsaa.org"
  :website "http://www.didierverna.net"
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
  :role (:committee)
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
(define-programme-day @2017-04-03T00:00:00+01:00
  @09:30:00 (:title "How the strengths of Lisp-family languages facilitate building complex and flexible bioinformatics applications"
             :role (:talk :keynote)
             :speakers ("Bohdan Khomtchouk")
             :description "We present a rationale for expanding the presence of the Lisp family of programming languages in bioinformatics and computational biology research. Put simply, Lisp-family languages enable programmers to more quickly write programs that run faster than in other languages. Languages such as Common Lisp, Scheme and Clojure facilitate the creation of powerful and flexible software that is required for complex and rapidly evolving domains like biology. We will point out several important key features that distinguish languages of the Lisp family from other programming languages, and we will explain how these features can aid researchers in becoming more productive and creating better code. We will also show how these features make these languages ideal tools for artificial intelligence and machine learning applications. We will specifically stress the advantages of domain-specific languages (DSLs): languages that are specialized to a particular area, and thus not only facilitate easier research problem formulation, but also aid in the establishment of standards and best programming practices as applied to the specific research field at hand. DSLs are particularly easy to build in Common Lisp, the most comprehensive Lisp dialect, which is commonly referred to as the 'programmable programming language'. We are convinced that Lisp grants programmers unprecedented power to build increasingly sophisticated artificial intelligence systems that may ultimately transform machine learning and artificial intelligence research in bioinformatics and computational biology."))

(define-programme-day @2017-04-04T00:00:00+01:00
  @09:00:00 (:title "Identity in a World of Values"
             :role (:talk :keynote)
             :speakers ("Hans Hübner")
             :description "Data persistence can add a great deal of complexity to application software, and making the gap between application and storage has been a constant field of research, experiments and products. In the object oriented programming paradigm, persistence seems to be a natural extension to object behavior, and even though one could argue that many persistent object systems have flaws and leak their abstractions, there is a large body of prior art and research in that area.

In the functional programming world, persistence does not find as natural a partnering abstraction, and it is often either conceptionally pushed to the boundaries of the application, or treated in an ad-hoc fashion interleaved with the beauty and conceptional rigor of pure functions.

The presentation discusses these forces and explores how Clojure's Software Transactional Memory system can be used to implement application data persistence."))
