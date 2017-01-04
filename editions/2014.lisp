(in-package #:els-web-editions)
(define-edition "2014")
(in-package "2014")

;;; Texts
(define-text :announcement
  (:div :class "announcement" "The conference is over!"))

(define-date "Conference start" @2014-05-05)

(define-date "Conference end" @2014-05-06)

;;; Sponsors
(define-sponsor epita
  :website "http://www.epita.fr/"
  :logo "../static/logos/epita.png")

(define-sponsor lispworks
  :website "http://www.lispworks.com/"
  :logo "../static/logos/lispworks.png")

(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

(define-sponsor ircam
  :website "http://www.ircam.fr/"
  :logo "../static/logos/ircam.png")

(define-sponsor cnrs
  :website "http://www.cnrs.fr/"
  :logo "../static/logos/cnrs.svg")

(define-sponsor upmc
  :website "http://www.upmc.fr/"
  :logo "../static/logos/upmc.gif")

;;; People
(define-person (:family-name "Verna"
                :given-name "Didier")
  :role (:administrator :local-chair)
  :email "didier@elsaa.org"
  :website "http://www.didierverna.net"
  :organization "EPITA Research and Development Laboratory"
  :address (:country "France"))

(define-person (:family-name "Pitman"
                :given-name "Kent")
  :role (:programme-chair)
  :organization "Hypermeta Inc."
  :address (:country "USA"))

(define-person (:family-name "Assayag"
                :given-name "Gérard")
  :role (:local-chair)
  :organization "IRCAM, UMR STMS (CNRS, UPMC)"
  :address (:country "France"))

(define-person (:family-name "Beurton-Aimar"
                :given-name "Marie")
  :role (:committee)
  :organization "LaBRI University of Bordeaux"
  :address (:country "France"))

(define-person (:family-name "Parquier"
                :given-name "Pierre")
  :role (:committee)
  :organization "IBM France Lab"
  :address (:city "Paris" :country "France"))

(define-person (:family-name "Joswig"
                :given-name "Rainer")
  :role (:committee)
  :address (:city "Hamburg" :country "Germany"))

(define-person (:family-name "Attardi"
                :given-name "Giuseppe")
  :role (:committee)
  :organization "Università di Pisa"
  :address (:country "Italy"))

(define-person (:family-name "Yuasa"
                :given-name "Taiichi")
  :role (:committee)
  :organization "Kyoto University"
  :address (:country "Japan"))

(define-person (:family-name "Leitão"
                :given-name "António")
  :role (:committee :speaker)
  :organization "Instituto Superior Técnico Universidade de Lisboa"
  :address (:country "Portugal"))

(define-person (:family-name "Rhodes"
                :given-name "Christophe")
  :role (:committee :speaker)
  :organization "Goldsmiths University of London"
  :address (:country "United Kingdom"))

(define-person (:family-name "Shivers"
                :given-name "Olin")
  :role (:committee)
  :organization "Northeastern University"
  :address (:country "USA"))

(define-person (:family-name "Herzeel"
                :given-name "Charlotte")
  :role (:committee)
  :organization "IMEC ExaScience Life Lab"
  :address (:city "Leuven" :country "Belgium"))

(define-person (:family-name "Becker"
                :given-name "Daniela")
  :role (:local-organizer)
  :organization "EPITA Research and Development Laboratory"
  :address (:country "France"))

(define-person (:family-name "Benoit"
                :given-name "Sylvie")
  :role (:local-organizer)
  :organization "IRCAM"
  :address (:city "France" :country "France"))

(define-person (:family-name "Gabriel"
                :given-name "Richard"
                :additional-name "P.")
  :role (:speaker))

(define-person (:family-name "Levine"
                :given-name "Nick")
  :role (:speaker))

(define-person (:family-name "Rideau"
                :given-name "François-René")
  :role (:speaker))

(define-person (:family-name "Moringen"
                :given-name "Jan")
  :role (:speaker))

(define-person (:family-name "Lichteblau"
                :given-name "David")
  :role (:speaker))

(define-person (:family-name "Costanza"
                :given-name "Pascal")
  :role (:speaker))

(define-person (:family-name "Bois"
                :given-name "François-Xavier")
  :role (:speaker))

(define-person (:family-name "Barthés"
                :given-name "Jean-Paul")
  :role (:speaker))

(define-person (:family-name "Marty"
                :given-name "Alain")
  :role (:speaker))

(define-person (:family-name "Melis"
                :given-name "Gábor")
  :role (:speaker))

(define-person (:family-name "Ghilardi"
                :given-name "Massimiliano")
  :role (:speaker))

(define-person (:family-name "Gómez-Sebastià"
                :given-name "Ignasi")
  :role (:speaker))

(define-person (:family-name "Oliva"
                :given-name "Luis")
  :role (:speaker))

(define-person (:family-name "Alvarez-Napagao"
                :given-name "Sergio")
  :role (:speaker))

(define-person (:family-name "Garcia-Gasulla"
                :given-name "Dario")
  :role (:speaker))

(define-person (:family-name "Tejeda"
                :given-name "Arturo")
  :role (:speaker))

(define-person (:family-name "Vazquez"
                :given-name "Javier")
  :role (:speaker))

(define-person (:family-name "Raimondi"
                :given-name "Franco")
  :role (:speaker))

(define-person (:family-name "Primiero"
                :given-name "Giuseppe")
  :role (:speaker))

(define-person (:family-name "Androutsopoulos"
                :given-name "Kelly")
  :role (:speaker))

(define-person (:family-name "Gorogiannis"
                :given-name "Nikos")
  :role (:speaker))

(define-person (:family-name "Loomes"
                :given-name "Martin")
  :role (:speaker))

(define-person (:family-name "Margolis"
                :given-name "Michael")
  :role (:speaker))

(define-person (:family-name "Varsani"
                :given-name "Puja")
  :role (:speaker))

(define-person (:family-name "Weldin"
                :given-name "Nick")
  :role (:speaker))

(define-person (:family-name "Zivanovic"
                :given-name "Alex")
  :role (:speaker))

(define-person (:family-name "Ramos"
                :given-name "Pedro")
  :role (:speaker))

(define-person (:family-name "Selgrad"
                :given-name "Kai")
  :role (:speaker))

(define-person (:family-name "Lier"
                :given-name "Alexander")
  :role (:speaker))

(define-person (:family-name "Wittmann"
                :given-name "Markus")
  :role (:speaker))

(define-person (:family-name "Lohmann"
                :given-name "Daniel")
  :role (:speaker))

(define-person (:family-name "Stamminger"
                :given-name "Marc")
  :role (:speaker))

(define-person (:family-name "Bouche"
                :given-name "Dimitri")
  :role (:speaker))

(define-person (:family-name "Bresson"
                :given-name "Jean")
  :role (:speaker))

(define-person (:family-name "Rottenkolber"
                :given-name "Max")
  :role (:speaker))

(define-person (:family-name "Nika"
                :given-name "Jérôme")
  :role (:speaker))

(define-person (:family-name "Piéchaud"
                :given-name "Robert")
  :role (:speaker))

;;; Locations
(define-location "IRCAM"
  :role (:conference)
  :photo "https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/IRCAM_at_Beaubourg_2009.jpg/800px-IRCAM_at_Beaubourg_2009.jpg"
  :website "http://www.ircam.fr"
  :address (:street "place Igor-Stravinsky"
            :extended "1"
            :post-code "75004"
            :city "Paris"
            :country "France")
  :map T)

(define-location "Hôtel du Cygne"
  :role (:hotel)
  :website "http://www.hotelducygne.fr/")

(define-location "Hôtel École Centrale"
  :role (:hotel)
  :website "http://paris-marais-hotel.fr/")

(define-location "Hôtel Beaubourg"
  :role (:hotel)
  :website "http://www.beaubourg-paris-hotel.com/")

;;; Programme
(define-programme-day @2014-05-04T00:00:00+02:00
  @18:00:00 (:title "Welcome Reception and Pre-Registration"
             :role (:organization))
  @22:00:00 (:title "" :role (:break)))

(define-programme-day @2014-05-05T00:00:00+02:00
  @08:30:00 (:title "Registration"
             :role (:organization))
  @09:00:00 (:title "Welcome Message"
             :role (:organization))
  @09:30:00 (:title "Making Creativity: Software as Creative Partner"
             :role (:talk :keynote)
             :speakers ("Richard Gabriel")
             :description "Programming, software development, and software engineering: We are taught to solve puzzles and do what we’re told. We carry these lessons into our jobs and careers without deliberation. Old fashioned software engineering aims to make no mistakes; agile aims to render programmers compliant, and commands them make money for their bosses. For the past year I’ve been exploring what creativity means during the act of writing, and I’ve been doing it by constructing a software partner that acts as a scientific engine of discovery — a partner that displays a flair for the strange that even the most daring poets can rarely match. I don’t have requirements, I don’t have specifications, and I normally don’t have a plan much beyond a guess. If my program doesn’t surprise me, I cry “failure!” and lament.

I’ll explore what programming is, how software can act as a collaborator, show you how the agile practices are like training wheels, and explain how a program can astound.

All in Lisp, of course.")
  @10:30:00 (:title "Coffee"
             :role (:break))
  @11:00:00 (:title "CLAUDE - The Common Lisp Library Audience Expansion Toolkit"
             :role (:talk)
             :speakers ("Nick Levine"))
  @11:30:00 (:title "ASDF3, or Why Lisp is Now an Acceptable Scripting Language"
             :role (:talk)
             :speakers ("François-René Rideau"))
  @12:00:00 (:title "Generalizers: New Metaobjects for Generalized Dispatch"
             :role (:talk)
             :speakers ("Christophe Rhodes" "Jan Moringen" "David Lichteblau"))
  @12:30:00 (:title "Lunch"
             :role (:break))
  @14:00:00 (:title "Parallel Programming with Lisp for Performance"
             :role (:talk :keynote)
             :speakers ("Pascal Costanza")
             :description "This presentation gives an overview of parallel programming constructs and primitives, and how they can be used efficiently from within Common Lisp. The focus of this talk is on taking advantage of multi-core processors for improving the performance of algorithms. For this reason, the most important techniques for achieving efficiency in general will also be covered. The presentation will be based on examples from high performance and life sciences computing.")
  @15:00:00 (:title "Coffee"
             :role (:break))
  @15:30:00 (:title "web-mode.el, heterogeneous recursive code parsing with Emacs Lisp"
             :role (:talk)
             :speakers ("François-Xavier Bois"))
  @16:00:00 (:title "The OMAS Multi-Agent Platform"
             :role (:talk)
             :speakers ("Jean-Paul Barthés"))
  @16:30:00 (:title "Yet Another Wiki"
             :role (:talk)
             :speakers ("Alain Marty"))
  @17:00:00 (:title "Lightning Talks"
             :role (:talk :lightning))
  @18:00:00 (:title ""
             :role (:break)))

(define-programme-day @2014-05-06T00:00:00+02:00
  @09:00:00 (:title "Sending Beams into the Parallel Cube"
             :role (:talk :keynote)
             :speakers ("Gábor Melis")
             :description "We send probes into the topic hypercube bounded by machine learning, parallelism, software and contests, demonstrate existing and sketch future Lisp infrastructure, pin the future and foreign arrays down.

We take a seemingly random walk along the different paths, watch the scenery of pairwise interactions unfold and piece a puzzle together. In the purely speculative thread, we compare models of parallel computation, keeping an eye on their applicability and lisp support. In the the Python and R envy thread, we detail why lisp could be a better vehicle for scientific programming and how high performance computing is eroding lisp's largely unrealized competitive advantages. Switching to constructive mode, a basic data structure is proposed as a first step.

In the machine learning thread, lisp's unparalleled interactive capabilities meet contests, neural networks cross threads and all get in the way of the presentation.")
  @10:00:00 (:title "Coffee"
             :role (:break))
  @10:30:00 (:title "High performance concurrency in Common Lisp - hybrid transactional memory with STMX"
             :role (:talk)
             :speakers ("Massimiliano Ghilardi"))
  @11:00:00 (:title "A functional approach for disruptive event discovery and policy monitoring in mobility scenarios"
             :role (:talk)
             :speakers ("Ignasi Gómez-Sebastià" "Luis Oliva" "Sergio Alvarez-Napagao" "Dario Garcia-Gasulla" "Arturo Tejeda" "Javier Vazquez"))
  @11:30:00 (:title "A Racket-Based Robot to Teach First-Year Computer Science"
             :role (:talk)
             :speakers ("Franco Raimondi" "Giuseppe Primiero" "Kelly Androutsopoulos" "Nikos Gorogiannis" "Martin Loomes" "MIchael Margolis" "Puja Varsani" "Nick Weldin" "Alex Zivanovic"))
  @12:00:00 (:title "Lunch"
             :role (:break))
  @13:30:00 (:title "A Need for Multilingual Names"
             :role (:talk)
             :speakers ("Jean-Paul Barthés"))
  @14:00:00 (:title "An Implementation of Python for Racket"
             :role (:talk)
             :speakers ("Pedro Ramos" "António Leitão"))
  @14:30:00 (:title "Defmacro for C: Lightweight, Ad Hoc Code Generation"
             :role (:talk)
             :speakers ("Kai Selgrad" "Alexander Lier" "Markus Wittmann" "Daniel Lohmann" "Marc Stamminger"))
  @15:00:00 (:title "Coffee"
             :role (:break))
  @15:30:00 (:title "Lisp for Music Technology"
             :role (:talk :keynote :workshop)
             :speakers ("Dimitri Bouche" "Jean Bresson" "Christophe Rhodes" "Max Rottenkolber" "Jérôme Nika" "Robert Piéchaud")
             :description "Numerous Lisp-based musical systems have been developed and used in the past. However, Lisp usage has been progressively discontinued with the development of new branches in mainstream computer music such as digital signal processing, real-time systems or distributed multimedia computing.

The power and expressivity of Lisp make it a valuable language to musicians for exploring high-level compositional processes, and this language remains a fundamental support for computer-aided composition research and creation at Ircam.

In this session we propose to present an overview of current computer-aided music composition projects, and discuss with ELS attendees the challenges, issues and perspectives for using Lisp in aforementioned music technologies.")
  @17:00:00 (:title "Lightning Talks"
             :role (:talk :lightning))
  @17:30:00 (:title "Conference End"
             :role (:organization))
  @18:00:00 (:title ""
             :role (:break))
  @19:30:00 (:title "Conference Dinner"
             :role (:dinner)))

(define-proceedings "http://www.european-lisp-symposium.org/editions/2014/ELS2014.pdf")
