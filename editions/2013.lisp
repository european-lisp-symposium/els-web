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
(define-person (:family-name "Verna" :given-name "Didier")
  :role (:administrative-chair :committee))

(define-person (:family-name "Costanza"
                :given-name "Pascal")
  :role (:committee)
  :organization "Intel"
  :address (:country "Belgium"))

(define-person (:family-name "Courtès"
                :given-name "Ludovic")
  :role (:committee)
  :organization "Inria"
  :address (:country "France"))

(define-person (:family-name "D'Hondt"
                :given-name "Theo")
  :role (:committee)
  :organization "Vrije Universiteit Brussel"
  :address (:country "Belgium"))

(define-person (:family-name "Gallesio"
                :given-name "Erick")
  :role (:committee)
  :organization "University of Nice-Sophia Antipolis")

(define-person (:family-name "Loitsch"
                :given-name "Florian")
  :role (:committee :speaker)
  :organization "Google"
  :address (:country "Denmark"))

(define-person (:family-name "Noermark"
                :given-name "Kurt")
  :role (:committee)
  :organization "Aalborg University"
  :address (:country "Denmark"))

(define-person (:family-name "Queinnec"
                :given-name "Christian")
  :role (:committee)
  :organization "Upmc"
  :address (:country "France"))

(define-person (:family-name "Shivers"
                :given-name "Olin")
  :role (:committee)
  :organization "Northeastern University"
  :address (:country "USA"))

(define-person (:family-name "Serrano"
                :given-name "Manuel")
  :role (:committee)
  :organization "Inria"
  :address (:country "France"))

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
(define-location "Gran Meliá Palacio De Los Duques"
  :role (:conference)
  :photo "http://www.hospitalitynet.org/picture/153061386.jpg"
  :website "https://www.melia.com/es/hoteles/espana/madrid/gran-melia-palacio-de-los-duques/index.html"
  :address (:street "Cuesta de Santo Domingo 5 y 7"
            :city "Madrid"
            :country "Spain")
  :map T)

;;; Programme
(define-programme-day @2013-06-03T00:00:00+02:00
  @09:00:00 (:title "Asynchronous Programming in Dart"
             :role (:talk :keynote)
             :speakers ("Florian Loitsch")
             :description "Florian Loitsch has a passion for dynamic languages, like Scheme, JavaScript and now Dart. He wrote a Scheme-to-JavaScript compiler during his thesis, and then completed a JavaScript-to-Scheme compiler in his spare time.

In 2010 he joined Google's team in Aarhus (Denmark) where he worked on V8 and later Dart. Being part of the Dart team Florian has helped specifying the language, which was presented in late 2011. In 2012 he became the Tech Lead for the Dart libraries where, among other tasks, he participated on the creation of a new asynchronous library that is based on Streams and Futures (aka promises).")
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
             :speakers ("Jason Cornez")
             :description "Streams are a way of organizing indefinite collections of data such that each item can naturally flow through a network of computations. Using some simple abstractions, we construct a computation network that operates on streams with each node being handled by a separate computation thread. The result is efficient, maintainable and all done in Common Lisp.

The financial industry is hungry to trade on news, but often ill-equipped to do so. The continuous publication of news is like big data in real time. RavenPack processes this flow and produces actionable News Analytics for any industry with an appetite for news. Jason Cornez joined RavenPack in 2003 to solve real-world problems using Common Lisp.")
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
             :speakers ("Gérard Assayag")
             :description "Lisp has long been and still is a privileged language for building \"experiments in musical intelligence\", to quote the title of a book by David Cope, a famous researcher in the field. Thus its use in several \"Computer Assisted Composition\" systems or more generally for environments oriented towards the modelisation, representation, analysis and generation of music. Although the choice of Lisp has been generally reserved to high level, symbolic and formal representations, it is also possible to benefit from this powerful functional language paradigm and from its characteristic data / program duality (think of the musical duality between structures and processes) in complex setups, where the whole range of representations and time scales is invoked from the acoustic signal to the formal organisation. Some interesting past and present systems will be presented in this perspective, including OpenMusic and OMax, designed by the author with his team at IRCAM.

Gerard Assayag is the founder of the Music Representations Team at Ircam, where he has designed with his collaborators OpenMusic and OMax, two lisp based environments which have become international standards for computer assisted music composition / analysis and for music improvisation. He is head of the Ircam STMS research Lab since Jan 2011. Ircam is the biggest joint facility for music research and production in the world, where many leading technologies and softwares have been created.")
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
  @16:25:00 (:title "Conference End"
             :role (:organization)))

(define-proceedings "../static/proceedings/2013.pdf")
