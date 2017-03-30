(in-package #:els-web-editions)
(define-edition "2016")
(in-package "2016")

;;; Texts
(define-text :announcement
  (:div :class "announcement" "The conference is over!"))

(define-date "Conference start" @2016-05-09)

(define-date "Conference end" @2016-05-10)

;;; Sponsors
(define-sponsor acm
  :website "http://www.sigplan.org/"
  :logo "../static/logos/acm.svg")

(define-sponsor epita
  :website "http://www.epita.fr/"
  :logo "../static/logos/epita.png")

(define-sponsor lispworks
  :website "http://www.lispworks.com/"
  :logo "../static/logos/lispworks.png")

(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

(define-sponsor agh
  :website "http://www.agh.edu.pl/en"
  :logo "../static/logos/agh.jpg")

(define-sponsor investissement-davenir
  :website "http://www.gouvernement.fr/investissements-d-avenir-cgi"
  :logo "../static/logos/investissement-davenir.jpg")

(define-sponsor bordeaux-cpu
  :website "http://cpu.labex.u-bordeaux.fr/"
  :logo "../static/logos/u-bordeaux.gif")

;;; People
(define-person (:family-name "Verna"
                :given-name "Didier")
  :role (:administrator :committee :speaker)
  :email "www@european-lisp-symposium.org"
  :website "http://www.european-lisp-symposium.org"
  :organization "ELS")

(define-person (:family-name "Durand"
                :given-name "Irène")
  :role (:programme-chair)
  :organization "LaBRI, University of Bordeaux"
  :address (:country "France"))

(define-person (:family-name "Psota"
                :given-name "Michał")
  :role (:local-chair)
  :organization "Emergent Network Defense"
  :address (:city "Kraków" :country "Poland"))

(define-person (:family-name "Leitao"
                :given-name "Antonio")
  :role (:committee)
  :organization "INESC-ID / Instituto Superior Técnico, Universidade de Lisboa"
  :address (:country "Portugal"))

(define-person (:family-name "Herzeel"
                :given-name "Charlotte")
  :role (:committee)
  :organization "IMEC"
  :address (:city "Leuven" :country "Belgium"))

(define-person (:family-name "Queinnec"
                :given-name "Christian")
  :role (:committee)
  :organization "University Pierre et Marie Curie"
  :address (:city "Paris 6" :country "France"))

(define-person (:family-name "Rhodes"
                :given-name "Christophe")
  :role (:committee)
  :organization "Goldsmiths, University of London"
  :address (:country "UK"))

(define-person (:family-name "Gallesio"
                :given-name "Erick")
  :role (:committee)
  :organization "University of Nice-Sophia Antipolis"
  :address (:country "France"))

(define-person (:family-name "Rideau"
                :given-name "François-René")
  :role (:committee :speaker)
  :organization "Google"
  :address (:country "USA"))

(define-person (:family-name "Attardi"
                :given-name "Giuseppe")
  :role (:committee)
  :organization "University of Pisa"
  :address (:country "Italy"))

(define-person (:family-name "Pitman"
                :given-name "Kent")
  :role (:committee)
  :organization "HyperMeta Inc."
  :address (:country "USA"))

(define-person (:family-name "Dreschler-Fischer"
                :given-name "Leonie")
  :role (:committee :speaker)
  :organization "University of Hamburg"
  :address (:country "Germany"))

(define-person (:family-name "Constanza"
                :given-name "Pascal")
  :role (:committee)
  :organization "Intel Corporation"
  :address (:country "Belgium"))

(define-person (:family-name "Strandh"
                :given-name "Robert")
  :role (:committee :speaker)
  :organization "University of Bordeaux"
  :address (:country "France"))

(define-person (:family-name "Sergeraert"
                :given-name "Francis")
  :role (:speaker)
  :organization "Institut Fourier")

(define-person (:family-name "Reia"
                :given-name "Rafael")
  :role (:speaker))

(define-person (:family-name "Leitão"
                :given-name "António"
                :additional-name "Menezes")
  :role (:speaker))

(define-person (:family-name "Newton"
                :given-name "Jim"
                :additional-name "E.")
  :role (:speaker))

(define-person (:family-name "Demaille"
                :given-name "Akim")
  :role (:speaker))

(define-person (:family-name "Hamacher"
                :given-name "Kay")
  :role (:speaker))

(define-person (:family-name "Selgrad"
                :given-name "Kai")
  :role (:speaker))

(define-person (:family-name "Lier"
                :given-name "Alexander")
  :role (:speaker))

(define-person (:family-name "Dörntlein"
                :given-name "Jan")
  :role (:speaker))

(define-person (:family-name "Reiche"
                :given-name "Oliver")
  :role (:speaker))

(define-person (:family-name "Stamminger"
                :given-name "Marc")
  :role (:speaker))

(define-person (:family-name "Heisig"
                :given-name "Marco")
  :role (:speaker))

(define-person (:family-name "Neuss"
                :given-name "Nicolas")
  :role (:speaker))

(define-person (:family-name "Seppke"
                :given-name "Benjamin")
  :role (:speaker))

(define-person (:family-name "Raskin"
                :given-name "Michael")
  :role (:speaker))

(define-person (:family-name "Mamardashvili"
                :given-name "Nikita")
  :role (:speaker))

(define-person (:family-name "Karpinski"
                :given-name "Stefan")
  :role (:speaker))

(define-person (:family-name "Hasu"
                :given-name "Tero")
  :role (:speaker))

(define-person (:family-name "Flatt"
                :given-name "Matthew")
  :role (:speaker))

(define-person (:family-name "Jensen"
                :given-name "Søren"
                :additional-name "Kejser")
  :role (:speaker))

(define-person (:family-name "Thomsen"
                :given-name "Lone"
                :additional-name "Leth")
  :role (:speaker))

(define-person (:family-name "Schafmeister"
                :given-name "Christian"
                :additional-name "E.")
  :role (:speaker))

(define-person (:family-name "Franke"
                :given-name "Linus")
  :role (:speaker))

(define-person (:family-name "Anderson"
                :given-name "James")
  :role (:speaker))

(define-person (:family-name "Knight"
                :given-name "James"
                :additional-name "Y.")
  :role (:speaker))

(define-person (:family-name "Walczak"
                :given-name "Andrzej")
  :role (:speaker))

;;; Locations
(define-location "Dept. of Computer Science, AGH University of Science and Technology"
  :role (:conference)
  :photo "http://www.european-lisp-symposium.org/editions/2016/img/agh-ust.jpg"
  :website "http://www.agh.edu.pl/en"
  :address (:street "Kawiory 21"
            :post-code "30-055"
            :city "Kraków"
            :country "Poland")
  :map T)

(define-location "Hostel Olimp and Hostel Strumyk"
  :role (:hotel)
  :website "http://taniehostele.pl/")

(define-location "Hotel Polonez"
  :role (:hotel)
  :website "http://www.hotelpolonez.pl/en/")

(define-location "Art Garden Residence"
  :role (:hotel)
  :website "http://artgardenresidence.pl/")

(define-location "Hotel Excelsio Boutique"
  :role (:hotel)
  :website "http://www.excelsior-krakow.pl/")

(define-location "Fortuna Bis"
  :role (:hotel)
  :website "http://www.hotel-fortunabis.pl/")

(define-location "Ibis Budget"
  :role (:hotel)
  :website "http://www.ibis.com/pl/hotel-6605-ibis-budget-krakow-bronowice/index.shtml")

(define-location "Ibis Kraków Centrum"
  :role (:hotel)
  :website "http://www.ibis.com/pl/hotel-3710-ibis-krakow-centrum/index.shtml")

(define-location "Novotel Kraków City West"
  :role (:hotel)
  :website "http://www.novotel.com/pl/hotel-3407-novotel-krakow-city-west/index.shtml")

;;; Programme
(define-programme-day @2016-05-08T00:00:00+02:00
  @18:00:00 (:title "Welcome reception, pre-registration"
             :role (:organization)))

(define-programme-day @2016-05-09T00:00:00+02:00
  @08:30:00 (:title "Registration"
             :role (:organization))
  @09:00:00 (:title "Welcome Message"
             :role (:organization))
  @09:30:00 (:title "Lexical Closures and Complexity"
             :role (:talk :keynote)
             :speakers ("Francis Sergeraert")
             :description "The power of Common Lisp for Functional_Programming is well known, the key tool being the notion of \"lexical closure\", allowing the programmer to write programs which, during execution, dynamically generate functional objects of arbitrary complexity. Using this technology, new algorithms in Algebraic Topology have been discovered, implemented in Common Lisp and used, producing homology and homotopy groups so far unreachable. An algorithm is viewed as \"tractable\" if its theoretical complexity is not worse than polynomial. The study of this complexity for the aforementioned of Algebraic Topology algorithms requires a lucid knowledge of the concrete implementation of these lexical closures. This talk is devoted to a report about a result of polynomial complexity so obtained. The scope of the method is general and in particular no knowledge in Algebraic Topology is expected from the audience.")
  @10:30:00 (:title "Coffee"
             :role (:break))
  @11:00:00 (:title "Refactoring Dynamic Languages"
             :role (:talk)
             :speakers ("Rafael Reia" "António Leitão"))
  @11:30:00 (:title "Type-Checking of Heterogeneous Sequences in Common Lisp"
             :role (:talk)
             :speakers ("Jim Newton" "Akim Demaille" "Didier Verna"))
  @12:00:00 (:title "A CLOS Protocol for Editor Buffers"
             :role (:talk)
             :speakers ("Robert Strandh"))
  @12:30:00 (:title "Lunch"
             :role (:break))
  @14:00:00 (:title "Using Lisp Macro-Facilities for Transferable Statistical Tests"
             :role (:talk)
             :speakers ("Kay Hamacher"))
  @14:30:00 (:title "A High-Performance Image Processing DSL for Heterogeneous Architectures"
             :role (:talk)
             :speakers ("Kai Selgrad" "Alexander Lier" "Jan Dörntlein" "Oliver Reiche" "Marc Stamminger"))
  @15:00:00 (:title "Coffee"
             :role (:break))
  @15:30:00 (:title "Distributed High Performance Computing in Common Lisp"
             :role (:talk)
             :speakers ("Marco Heisig" "Nicolas Neuss"))
  @16:00:00 (:title "Fast Interactive Functional Computer Vision with Racket"
             :role (:talk)
             :speakers ("Benjamin Seppke" "Leonie Dreschler-Fischer"))
  @16:30:00 (:title "Accessing local variables during debugging"
             :role (:talk)
             :speakers ("Michael Raskin" "Nikita Mamardashvili"))
  @17:00:00 (:title "Lightning Talks"
             :role (:talk :lightning))
  @17:30:00 (:title ""
             :role (:break)))

(define-programme-day @2016-05-10T00:00:00+02:00
  @09:00:00 (:title "Julia - To Lisp or not to Lisp"
             :role (:talk :keynote)
             :speakers ("Stefan Karpinski")
             :description "Julia is a general purpose dynamic language, designed to make numerical computing fast and convenient. Many aspects of Julia should be quite familiar since they are \"stolen\" straight from Lisp: it’s expression-oriented, lexically scoped, has closures, coroutines, and macros that operate on code as data. But Julia departs from the Lisp tradition in other ways. Julia has syntax – lots of it. Macro invocations look different than function calls. Some dynamic behaviors are sacrificed to make programs easier to analyze (for both humans and compilers), especially where it allows simpler, more reliable program optimization.

Julia’s most distinctive feature is its emphasis on creating lightweight types and defining their behavior in terms of generic functions. While many Lisps support multiple dispatch as an opt-in feature, in Julia all function are generic by default. Even basic operators like `+` are generic, and primitive types like `Int` and `Float64` are defined in the standard library, and their behavior is specified via multiple dispatch. A combination of aggressive method specialization, inlining and data-flow-based type inference, allow these layers of abstraction and dispatch to be eliminated when it counts – Julia generally has performance comparable to static languages.

In the tradition of the great Lisp hackers, this talk will include lots of live coding in the REPL, with all the excitement, and possibility of failure entailed.")
  @10:30:00 (:title "Coffee"
             :role (:break))
  @11:00:00 (:title "A modern implementation of the LOOP macro"
             :role (:talk)
             :speakers ("Robert Strandh"))
  @11:30:00 (:title "Source-to-Source Compilation via Submodules"
             :role (:talk)
             :speakers ("Tero Hasu" "Matthew Flatt"))
  @12:00:00 (:title "Extending Software Transactional Memory in Clojure with Side-Effects and Transaction Control"
             :role (:talk)
             :speakers ("Søren Jensen" "Lone Thomsen"))
  @12:30:00 (:title "Lunch"
             :role (:talk :break))
  @14:00:00 (:title "CANDO: A Compiled Programming Language for Computer-Aided Nanomaterial Design and Optimization Based on Clasp Common Lisp"
             :role (:talk)
             :speakers ("Christian Schafmeister"))
  @14:30:00 (:title "A Case Study in Implementation-Space Exploration"
             :role (:talk)
             :speakers ("Alexander Lier" "Linus Franke" "Marc Stamminger" "Kai Selgrad"))
  @15:00:00 (:title "Coffee"
             :role (:talk))
  @15:30:00 (:title "An Inferred System Description Facility"
             :role (:talk)
             :speakers ("James Anderson"))
  @16:00:00 (:title "Building Common Lisp programs using Bazel"
             :role (:talk)
             :speakers ("James Knight" "François-René Rideau" "Andrzej Walczak"))
  @16:30:00 (:title "Lightning Talks"
             :role (:talk :lightning))
  @17:00:00 (:title "Conference End"
             :role (:organization))
  @17:30:00 (:title ""
             :role (:break))
  @19:30:00 (:title "Conference Dinner"
             :role (:dinner)))

(define-proceedings "../static/proceedings/2016.pdf")
