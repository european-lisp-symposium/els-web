(in-package #:els-web-editions)
(define-edition "2013")
(in-package "2013")

;;; Texts
(define-text :announcement
  (:div :class "announcement" "The conference is over!"))

(define-date "Conference start" @2013-06-03)

(define-date "Conference end" @2013-06-04)

;;; Sponsors
(define-sponsor lispworks
  :website "http://www.lispworks.com/"
  :logo "../static/logos/lispworks.png")

(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

(define-sponsor clozure
  :website "http://www.clozure.com/"
  :logo "../static/logos/clozure.png")

(define-sponsor alu
  :website "http://www.alu.org"
  :logo "../static/logos/alu.jpg")

(define-sponsor inria
  :website "https://www.inria.fr/en/"
  :logo "../static/logos/inria.svg")

;;; People
(define-person (:family-name "Verna"
                :given-name "Didier")
  :role (:administrator :committee)
  :email "didier@elsaa.org"
  :website "http://www.didierverna.net"
  :organization "Epita"
  :location (:country "France"))

(define-person (:family-name "Costanza"
                :given-name "Pascal")
  :role (:committee)
  :organization "Intel"
  :location (:country "Belgium"))

(define-person (:family-name "Courtès"
                :given-name "Ludovic")
  :role (:committee)
  :organization "Inria"
  :location (:country "France"))

(define-person (:family-name "D'Hondt"
                :given-name "Theo")
  :role (:committee)
  :organization "Vrije Universiteit Brussel"
  :location (:country "Belgium"))

(define-person (:family-name "Gallesio"
                :given-name "Erick")
  :role (:committee)
  :organization "University of Nice-Sophia Antipolis")

(define-person (:family-name "Loitsch"
                :given-name "Florian")
  :role (:committee :speaker)
  :organization "Google"
  :location (:country "Denmark"))

(define-person (:family-name "Noermark"
                :given-name "Kurt")
  :role (:committee)
  :organization "Aalborg University"
  :location (:country "Denmark"))

(define-person (:family-name "Queinnec"
                :given-name "Christian")
  :role (:committee)
  :organization "Upmc"
  :location (:country "France"))

(define-person (:family-name "Shivers"
                :given-name "Olin")
  :role (:committee)
  :organization "Northeastern University"
  :location (:country "USA"))

(define-person (:family-name "Serrano"
                :given-name "Manuel")
  :role (:committee)
  :organization "Inria"
  :location (:country "France"))

(define-person (:family-name "Courtes"
                :given-name "Ludovic")
  :role (:speaker))

(define-person (:family-name "Raskin"
                :given-name "Mikhail")
  :role (:speaker))

(define-person (:family-name "Sandewall"
                :given-name "Erik")
  :role (:speaker))

(define-person (:family-name "Cornez"
                :given-name "Jason")
  :role (:speaker))

(define-person (:family-name "Tobin-Hochstadt"
                :given-name "Sam")
  :role (:speaker))

(define-person (:family-name "de Salabert"
                :given-name "Arturo")
  :role (:speaker))

(define-person (:family-name "Assayag"
                :given-name "Gérard")
  :role (:speaker))

(define-person (:family-name "Kuuskankare"
                :given-name "Mika")
  :role (:speaker))

(define-person (:family-name "Durand"
                :given-name "Irène")
  :role (:speaker))

(define-person (:family-name "Courcelle"
                :given-name "Bruno")
  :role (:speaker))

(define-person (:family-name "Rideau"
                :given-name "François-René")
  :role (:speaker))

(define-person (:family-name "Rottenkolber"
                :given-name "Max")
  :role (:speaker))

(define-person (:family-name "Domkin"
                :given-name "Vsevolod")
  :role (:speaker))

;;; Locations
(define-location "Somewhere"
  :role (:conference)
  ;; :photo "IMAGE URL"
  ;; :website "WEBSITE URL"
  :address (;; :street "A"
            ;; :extended "B"
            ;; :post-code "C"
            :city "Madrid"
            :country "Spain")
  :map T)

;;; Programme
(define-programme-day @2013-06-03T00:00:00+02:00
  @09:00:00 (:title "Asynchronous Programming in Dart"
             :role (:talk :keynote)
             :speakers ("Florian Loitsch"))
  @10:00:00 (:title "Functional Package Management with Guix"
             :role (:talk)
             :speakers ("Ludovic Courtes"))
  @10:45:00 (:title "Coffee"
             :role (:break))
  @11:15:00 (:title "Data-transformer: an example of data-centered tool set"
             :role (:talk)
             :speakers ("Mikhail Raskin"))
  @12:00:00 (:title "The Leonardo System and Software Individuals"
             :role (:talk)
             :speakers ("Erik Sandewall"))
  @13:00:00 (:title "Lunch"
             :role (:break))
  @14:30:00 (:title "Streams-Based, Multi-Threaded News Classification"
             :role (:talk :keynote)
             :speakers ("Jason Cornez"))
  @15:30:00 (:title "Tutorial: Typed Racket"
             :role (:talk)
             :speakers ("Sam Tobin-Hochstadt"))
  @16:15:00 (:title "Coffee"
             :role (:break))
  @16:45:00 (:title "Platforms for games and adversarial search, functional and formal evaluation of Lisp code exercises"
             :role (:talk)
             :speakers ("Arturo de Salabert"))
  @17:30:00 (:title "Lightning Talks"
             :role (:talk :lightning))
  @18:00:00 (:title ""
             :role (:break)))

(define-programme-day @2013-06-04T00:00:00+02:00
  @09:00:00 (:title "Lisp and Music Research"
             :role (:talk :keynote)
             :speakers ("Gérard Assayag"))
  @10:00:00 (:title "DBL - a Lisp-based interactive document markup language"
             :role (:talk)
             :speakers ("Mika Kuuskankare"))
  @10:45:00 (:title "Coffee"
             :role (:break))
  @11:15:00 (:title "Infinite transducers on terms denoting graphs"
             :role (:talk)
             :speakers ("Irène Durand" "Bruno Courcelle"))
  @12:00:00 (:title "ASDF3: building portable Common Lisp programs"
             :role (:talk :tutorial)
             :speakers ("François-René Rideau"))
  @13:00:00 (:title "Lunch"
             :role (:break))
  @14:30:00 (:title "Lazy Signal Combinators in Common Lisp"
             :role (:talk)
             :speakers ("Max Rottenkolber"))
  @15:30:00 (:title "CL-NLP - a Natural Language Processing library for Common Lisp"
             :role (:talk :demonstration)
             :speakers ("Vsevolod Domkin"))
  @16:25:00 (:title ""
             :role (:break)))

(define-proceedings "http://www-sop.inria.fr/members/Manuel.Serrano/conferences/proceedings-els2013.pdf")
