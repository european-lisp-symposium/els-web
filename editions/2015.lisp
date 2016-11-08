(in-package #:els-web-editions)
(in-edition 2015)

;;; People
(define-person (:family-name "Verna"
                :given-name "Didier")
  :role (:administrator)
  :email "didier@elsaa.org"
  :website "http://www.didierverna.net"
  :organization "ELS")

(define-person (:family-name "Padget"
                :given-name "Julian")
  :role (:programme-chair)
  :organization "University of Bath"
  :location (:country "UK"))

(define-person (:family-name "Rhodes"
                :given-name "Christophe")
  :role (:local-chair)
  :organization "Goldsmiths University of London"
  :location (:country "UK"))

(define-person (:family-name "Chua"
                :given-name "Sacha")
  :role (:committee)
  :location (:city "Toronto" :country "Canada"))

(define-person (:family-name "Weitz"
                :given-name "Edmund")
  :role (:committee)
  :organization "University of Applied Sciences"
  :location (:city "Hamburg" :country "Germany"))

(define-person (:family-name "Joswig"
                :given-name "Rainer")
  :role (:committee)
  :location (:city "Hamburg" :country "Germany"))

(define-person (:family-name "Liebermann"
                :given-name "Henry")
  :role (:committee)
  :organization "MIT"
  :location (:country "USA"))

(define-person (:family-name "Flatt"
                :given-name "Matthew")
  :role (:committee)
  :organization "University of Utah"
  :location (:country "USA"))

(define-person (:family-name "Queinnec"
                :given-name "Christian")
  :role (:committee)
  :organization "University Pierre et Marie Curie"
  :location (:city "Paris 6" :country "France"))

(define-person (:family-name "Attardi"
                :given-name "Giuseppe")
  :role (:committee)
  :organization "University of Pisa"
  :location (:country "Italy"))

(define-person (:family-name "Freely"
                :given-name "Marc")
  :role (:committee)
  :organization "University of Montreal"
  :location (:country "Canada"))

(define-person (:family-name "Eglen"
                :given-name "Stephen")
  :role (:committee)
  :organization "University of Cambridge"
  :location (:country "UK"))

(define-person (:family-name "Strandh"
                :given-name "Robert")
  :role (:committee :speaker)
  :organization "University of Bordeaux"
  :location (:country "France"))

(define-person (:family-name "Levine"
                :given-name "Nick")
  :role (:committee)
  :organization "RavenPack"
  :location (:country "Spain"))

(define-person (:family-name "Beane"
                :given-name "Zach")
  :role (:speaker)
  :organization "Clozure Associates")

(define-person (:family-name "Seppke"
                :given-name "Benjamin")
  :role (:speaker))

(define-person (:family-name "Dreschler-Fischer"
                :given-name "Leonie")
  :role (:speaker))

(define-person (:family-name "Fisk"
                :given-name "Donald")
  :role (:speaker))

(define-person (:family-name "Correia"
                :given-name "Hugo")
  :role (:speaker))

(define-person (:family-name "Leitão"
                :given-name "António")
  :role (:speaker))

(define-person (:family-name "van der Walt"
                :given-name "Paul")
  :role (:speaker))

(define-person (:family-name "Durand"
                :given-name "Irène"
                :additional-name "Anne")
  :role (:speaker))

(define-person (:family-name "Ó Nualláin"
                :given-name "Breanndán")
  :role (:speaker))

(define-person (:family-name "Cracauer"
                :given-name "Martin")
  :role (:speaker)
  :organization "Google")

(define-person (:family-name "Cooper"
                :given-name "Dave")
  :role (:speaker))

(define-person (:family-name "Marty"
                :given-name "Alain")
  :role (:speaker))

(define-person (:family-name "Lynch"
                :given-name "Simon")
  :role (:speaker))

(define-person (:family-name "Dancy"
                :given-name "Ahmon")
  :role (:speaker)
  :organization "Franz Inc.")

(define-person (:family-name "Stokke"
                :given-name "Bodil")
  :role (:speaker))

(define-person (:family-name "Fukamachi"
                :given-name "Eitaro")
  :role (:speaker))

(define-person (:family-name "Schafmeister"
                :given-name "Christian")
  :role (:speaker))

(define-person (:family-name "Urbanek"
                :given-name "Miroslav")
  :role (:speaker))

;; Potentially you could also record attendees and use this info to generate the name-tags.

;;; Locations
(define-location "Goldsmiths, University of London"
  :role (:conference)
  :photo "http://www.european-lisp-symposium.org/editions/2015/img/london/rhb-gold.jpg"
  :website "http://www.gold.ac.uk/"
  :address (:street "New Cross"
            :city "London"
            :post-code "SE14 6NW"
            :country "United Kingdom"))

(define-location "Premier Inn"
  :role (:hotel)
  :website "http://www.tripadvisor.co.uk/Hotel_Review-g186338-d2040574-Reviews-Premier_Inn_London_Greenwich-London_England.html"
  :address (:street "43-81 Greenwich High Road"
            :city "London"
            :post-code "SE10 8JL"))

(define-location "Travelodge"
  :role (:hotel)
  :website "http://www.tripadvisor.co.uk/Hotel_Review-g186338-d2535117-Reviews-Travelodge_Greenwich-London_England.html"
  :address (:street "Blackheath Road, Greenwich"
            :city "London"
            :post-code "SE10 8EF"))

(define-location "Mercure"
  :role (:hotel)
  :website "http://www.tripadvisor.co.uk/Hotel_Review-g186338-d3507299-Reviews-Mercure_London_Greenwich-London_England.html"
  :address (:street "Catherine Grove, Greenwich"
            :city "London"
            :post-code "SE10 8FR"))

(define-location "Novotel"
  :role (:hotel)
  :website "http://www.tripadvisor.co.uk/Hotel_Review-g186338-d529404-Reviews-Novotel_London_Greenwich-London_England.html"
  :address (:street "173-185 Greenwich High Road"
            :city "London"
            :post-code "SE10 8JA"))

(define-location "Ibis"
  :role (:hotel)
  :website "http://www.tripadvisor.co.uk/Hotel_Review-g186338-d191908-Reviews-Ibis_London_Greenwich-London_England.html"
  :address (:street "30 Stockwell Street, Greenwich"
            :city "London"
            :post-code "SE10 9JN"))

;;; Programme
(define-programme-day @2015-04-20T00:00:00+01:00
  @08:30:00 (:title "Registration"
             :role (:organization))
  @09:00:00 (:title "Welcome Message"
             :role (:organization))
  @09:30:00 (:title "Quicklisp: On Beyond Beta"
             :role (:talk :keynote)
             :speakers ("Zach Beane"))
  @10:30:00 (:title "Coffee"
             :role (:break))
  @11:00:00 (:title "Efficient Applicative Programming Environments for Computer Vision Applications"
             :role (:talk)
             :speakers ("Benjamin Seppke" "Leonie Dreschler-Fischer"))
  @11:30:00 (:title "Keyboard? How quaint. Visual Dataflow Implemented in Lisp"
             :role (:talk)
             :speakers ("Donald Fisk"))
  @12:00:00 (:title "P2R - Implementation of Processing in Racket"
             :role (:talk)
             :speakers ("Hugo Correia" "António Leitão"))
  @12:30:00 (:title "Lunch"
             :role (:break))
  @14:30:00 (:title "Constraining application behaviour by generating languages"
             :role (:talk)
             :speakers ("Paul van der Walt"))
  @15:00:00 (:title "Processing List Elements in Reverse Order"
             :role (:talk)
             :speakers ("Irène Durand" "Robert Strandh"))
  @15:30:00 (:title "Executable Pseudocode for Graph Algorithms"
             :role (:talk)
             :speakers ("Breanndán Ó Nualláin"))
  @16:00:00 (:title "Coffee"
             :role (:break))
  @16:30:00 (:title "Unwanted memory retention"
             :role (:talk :keynote)
             :speakers ("Martin Cracauer"))
  @17:30:00 (:title "Lightning Talks"
             :role (:talk :lightning))
  @18:00:00 (:title ""
             :role (:break))
  @19:30:00 (:title "Conference Dinner"
             :role (:dinner)))

(define-programme-day @2015-04-21T00:00:00+01:00
  @09:30:00 (:title "A Gentle Introduction to Gendl, a Common Lisp-based Knowledge Based Engineering Environment"
             :role (:talk :tutorial)
             :speakers ("Dave Cooper"))
  @11:00:00 (:title "Coffee"
             :role (:break))
  @11:30:00 (:title "lambdatalk"
             :role (:talk)
             :speakers ("Alain Marty"))
  @12:00:00 (:title "Symbolic Pattern Matching in Clojure"
             :role (:talk)
             :speakers ("Simon Lynch"))
  @12:30:00 (:title "Escaping the Heap"
             :role (:talk :keynote)
             :speakers ("Ahmon Dancy"))
  @13:00:00 (:title "Lunch"
             :role (:break))
  @14:30:00 (:title "µKanren: Running the Little Things Backwards"
             :role (:talk :keynote)
             :speakers ("Bodil Stokke"))
  @15:30:00 (:title "Coffee"
             :role (:break))
  @16:00:00 (:title "Woo: a fast HTTP server for Common Lisp"
             :role (:talk)
             :speakers ("Eitaro Fukamachi"))
  @16:30:00 (:title "Clasp: Common Lisp+LLVM+C++"
             :role (:talk)
             :speakers ("Christian Schafmeister"))
  @17:00:00 (:title "Quantum Physics Simulations in Common Lisp"
             :role (:talk)
             :speakers ("Miroslav Urbanek"))
  @17:30:00 (:title "First-class Global Environments in Common Lisp"
             :role (:talk)
             :speakers ("Robert Strandh"))
  @18:00:00 (:title "Lightning Talk"
             :role (:talk :lightning))
  @18:30:00 (:title "Conference End"
             :role (:organization)))
