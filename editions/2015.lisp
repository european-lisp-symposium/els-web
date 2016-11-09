(in-package #:els-web-editions)
(in-edition 2015)

;;; Texts
(load-commons)

(define-text :announcement
  (:div :class "announcement" "The Conference is Over!"))

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
  :photo "https://c1.staticflickr.com/8/7234/7181843480_65728a3904_b.jpg"
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
             :speakers ("Zach Beane")
             :description "Quicklisp was released in 2010 as a public beta. Five years later, it's still in beta. How has Quicklisp (and Common Lisp) evolved in the past five years? What will it take for Quicklisp to go on beyond beta?")
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
             :speakers ("Martin Cracauer")
             :description "This talk goes over numerous oddities in a Lisp-based system which led to unwanted heap memory retention and to constant resident memory growth over the uptime of the system. Issues covered include a mostly conservative but also paged garbage collector, the difficulty of clearing out data structures that are retainted as an optimization but that might hold on to large amounts of heap (and how that happens in C++, too) and how large intercollected and theoretically uprooted \"clouds of heap debris\" interact with stale pointers out of same. The most delicious pieces center around pointer staleness out of the saved (on-disk, but read-write mapped) part of the heap, which is not garbage collected, into anonymous memory backed heap and how you can create rootless but uncollected and \"untraceable\" object circles. Untraceable until you hack up the GC to help you.")
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
             :speakers ("Ahmon Dancy")
             :description "Common Lisp implementations provide great automatic memory management of data structures. These data structures are allocated from a memory area called the “heap”. However, there are times when heap allocation is inadequate to satisfy the needs of the application. For example, sometimes data structures need to be persistent or shareable amongst separate processes. In these cases, alternatives to using the heap must be considered.

In this talk we will explore the motivations for out-of-heap data structures. We will discuss some of the out-of-heap data structures that we’ve created in the course of developing our database product, such as lists, hash tables, and arrays. We will describe the tools and mechanisms that we used to implement them, including memory-mapped files, foreign structs, aligned pointers and direct memory accesses. Finally we will discuss the downsides of out-of-heap data structures and the constant struggle between abstractions and performance.")
  @13:00:00 (:title "Lunch"
             :role (:break))
  @14:30:00 (:title "µKanren: Running the Little Things Backwards"
             :role (:talk :keynote)
             :speakers ("Bodil Stokke")
             :description "Relational programming, or logic programming, is a programming paradigm that exhibits remarkable and powerful properties, to the extent that its implementation seems frightfully daunting to the layman. µKanren is a minimal relational language that seeks to strip the paradigm down to its core, leaving us with a succinct, elegant and above all simple set of primitives on top of which we can rebuild even the most powerful relational constructs.

In this talk, we will explore the µKanren language by implementing it from first principles in a simple functional programming language, going on to demonstrate how you can assemble these simple building blocks into a semblance of its richer parent, miniKanren, and maybe solve a logic puzzle or two to make sure it’s working as advertised.")
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
  @18:00:00 (:title "Lightning Talks"
             :role (:talk :lightning))
  @18:30:00 (:title "Conference End"
             :role (:organization)))
