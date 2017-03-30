(in-package #:els-web-editions)
(define-edition "2010")
(in-package "2010")

;;; Texts
(define-text :announcement
  (:div :class "announcement" "The conference is over!"))

(define-date "Conference start" @2010-05-06)

(define-date "Conference end" @2010-05-07)

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

(define-sponsor ravenbrook
  :website "http://www.ravenbrook.com/"
  :logo "../static/logos/ravenbrook.png")

(define-sponsor ravenpack
  :website "http://www.ravenpack.com/"
  :logo "../static/logos/ravenpack.png")

(define-sponsor siscog
  :website "http://www.siscog.pt/"
  :logo "../static/logos/siscog.jpg")

(define-sponsor fundação-luso-americana
  :website "http://www.flad.pt/"
  :logo "../static/logos/flad.png")

(define-sponsor fct
  :website "http://www.fct.pt/"
  :logo "../static/logos/fct.png")

(define-sponsor fundação-calouste-gulbenkian
  :website "https://gulbenkian.pt"
  :logo "../static/logos/gulbenkian.png")

(define-sponsor banco-espirito-santo
  :website "http://www.bes.pt/"
  :logo "../static/logos/bes.svg")

(define-sponsor instituto-superior-técnico
  :website "https://tecnico.ulisboa.pt/en/"
  :logo "../static/logos/ist.png")

(define-sponsor câmara-municipal-de-lisboa
  :website "http://www.cm-lisboa.pt/"
  :logo "../static/logos/cm-lisboa.jpg")

;;; People
(define-person (:family-name "Verna"
                :given-name "Didier")
  :role (:administrator :committee :speaker)
  :email "www@european-lisp-symposium.org"
  :website "http://www.european-lisp-symposium.org"
  :organization "EPITA"
  :address (:country "France"))

(define-person (:family-name "Rhodes"
                :given-name "Christophe")
  :role (:programme-chair)
  :organization "Goldsmiths University of London"
  :address (:country "United Kingdom"))

(define-person (:family-name "Leitão"
                :given-name "António")
  :role (:local-chair)
  :organization "Technical University of Lisbon"
  :address (:country "Portugal"))

(define-person (:family-name "Antoniotti"
                :given-name "Marco")
  :role (:committee)
  :organization "Università Milano Bicocca"
  :address (:country "Italy"))

(define-person (:family-name "Attardi"
                :given-name "Giuseppe")
  :role (:committee)
  :organization "Università di Pisa"
  :address (:country "Italy"))

(define-person (:family-name "Costanza"
                :given-name "Pascal")
  :role (:committee :speaker)
  :organization "Vrije Universiteit Brussel"
  :address (:country "Belgium"))

(define-person (:family-name "Durand"
                :given-name "Irène"
                :additional-name "Anne")
  :role (:committee :speaker)
  :organization "Université Bordeaux"
  :address (:country "France"))

(define-person (:family-name "Feeley"
                :given-name "Marc")
  :role (:committee)
  :organization "Université de Montréal"
  :address (:country "Canada"))

(define-person (:family-name "Garret"
                :given-name "Ron")
  :role (:committee)
  :organization "Amalgamated Widgets Unlimited"
  :address (:country "USA"))

(define-person (:family-name "Kiczales"
                :given-name "Gregor")
  :role (:committee)
  :organization "University of British Columbia"
  :address (:country "Canada"))

(define-person (:family-name "Levine"
                :given-name "Nick")
  :role (:committee)
  :organization "Ravenbrook Ltd"
  :address (:country "United Kingdom"))

(define-person (:family-name "McKay"
                :given-name "Scott")
  :role (:committee)
  :organization "ITA Software Inc."
  :address (:country "USA"))

(define-person (:family-name "Norvig"
                :given-name "Peter")
  :role (:committee)
  :organization "Google"
  :address (:country "USA"))

(define-person (:family-name "Pitman"
                :given-name "Kent")
  :role (:committee :speaker)
  :organization "HyperMeta Inc"
  :address (:country "USA"))

(define-person (:family-name "Queinnec"
                :given-name "Christian")
  :role (:committee)
  :organization "Université Pierre et Marie Curie"
  :address (:country "France"))

(define-person (:family-name "Strandh"
                :given-name "Robert")
  :role (:committee)
  :organization "Université Bordeaux"
  :address (:country "France"))

(define-person (:family-name "Wilkes"
                :given-name "Barry")
  :role (:committee)
  :organization "Citi"
  :address (:country "United Kingdom"))

(define-person (:family-name "Yuasa"
                :given-name "Taiichi")
  :role (:committee)
  :organization "Kyoto University"
  :address (:country "Japan"))

(define-person (:family-name "Courcelle"
                :given-name "Bruno")
  :role (:speaker))

(define-person (:family-name "Bakic"
                :given-name "Aleksandar")
  :role (:speaker))

(define-person (:family-name "Cornez"
                :given-name "Jason")
  :role (:speaker)
  :organization "RavenPack")

(define-person (:family-name "Boetje"
                :given-name "Jerry")
  :role (:speaker))

(define-person (:family-name "Melcher"
                :given-name "Steven")
  :role (:speaker))

(define-person (:family-name "Seppke"
                :given-name "Benjamin")
  :role (:speaker))

(define-person (:family-name "Dreschler-Fischer"
                :given-name "Leonie")
  :role (:speaker))

(define-person (:family-name "Plotnick"
                :given-name "Alexander")
  :role (:speaker))

(define-person (:family-name "Felleisen"
                :given-name "Matthias")
  :role (:speaker)
  :organization "Northeastern University")

;;; Locations
(define-location "Fundação Calouste Gulbenkian"
  :role (:conference)
  :photo "https://gulbenkian.pt/wp-content/uploads/2016/05/HP_apoios.jpg"
  :website "https://gulbenkian.pt"
  :address (:street "Av. de Berna 45 A"
            :post-code "1067-001"
            :city "Lisboa"
            :country "Portugal")
  :map T)

(define-location "Hotel Radisson Sas Lisboa"
  :role (:hotel)
  :website "http://www.radisson.com/lisbonpt"
  :telephone "+351 210045000")

(define-location "Holiday Inn Lisboa"
  :role (:hotel)
  :website "http://www.hollidayinn.com/lisbonprt"
  :telephone "+351 210044000")

(define-location "Hotel Flórida"
  :role (:hotel)
  :website "http://www.hotel.florida.pt/"
  :telephone "+351 213576145")

(define-location "Hotel Vip Barcelona"
  :role (:hotel)
  :website "http://www.viphotels.com/"
  :telephone "+351 217954273")

(define-location "Holiday Inn LISBON-CONTINENTAL"
  :role (:hotel)
  :website "http://www.holiday-inn.com/lisbon-contine"
  :telephone "+351 210046000")

(define-location "Sana Malhoa Hotel"
  :role (:hotel)
  :website "http://www.sanahotels.com/sanaparkmalhoa.html"
  :telephone "+351 210061800")

(define-location "VIP Zurique"
  :role (:hotel)
  :website "http://www.viphotels.com/"
  :telephone "+351 217814000")

(define-location "Sana Capitol Hotel"
  :role (:hotel)
  :website "http://www.sanahotels.com/sanaparkmalhoa.html"
  :telephone "+351 210064425")

(define-location "Hotel A. S."
  :role (:hotel)
  :website "http://www.hotel-aslisboa.com/"
  :telephone "+351 218429360")

(define-location "Hotel Eduardo VII"
  :role (:hotel)
  :website "http://www.hoteleduardovii.pt/"
  :telephone "+351 213568822")

;;; Programme
(define-programme-day @2010-05-05T00:00:00+01:00
  @16:00:00 (:title "Registration"
             :role (:organization))
  @17:30:00 (:title ""
             :role (:break)))

(define-programme-day @2010-05-06T00:00:00+01:00
  @08:30:00 (:title "Registration"
             :role (:organization))
  @09:00:00 (:title "Welcome Message"
             :role (:organization))
  @09:30:00 (:title "Going Meta: Reflections on Lisp, Past and Future"
             :role (:talk :keynote)
             :speakers ("Kent Pitman")
             :description "Over a period of several decades, I have had the good fortune to witness and influence the design, evolution, standardization and use of quite a number of dialects of Lisp, including MACLISP, T, Scheme, Zetalisp, Common Lisp, and ISLISP. I will offer reflections, from a personal point of view, about what enduring lessons I have learned through this long involvement.

Both the programming world and the real world it serves have changed a lot in that time. Some issues that faced Lisp in the past no longer matter, while others matter more than ever. I'll assess the state of Lisp today, what challenges it faces, what pitfalls it needs to avoid, and what Lisp's role might and should be in the future of languages, of programming, and of humanity.")
  @10:30:00 (:title "Coffee"
             :role (:break))
  @11:00:00 (:title "Verifying monadic second order graph properties with tree automata"
             :role (:talk)
             :speakers ("Bruno Courcelle" "Irène Durand"))
  @12:00:00 (:title "A DSEL for Computational Category Theory"
             :role (:talk)
             :speakers ("Aleksandar Bakic"))
  @12:45:00 (:title "Lunch"
             :role (:break))
  @14:30:00 (:title "Reading the News with Common Lisp"
             :role (:talk :keynote)
             :speakers ("Jason Cornez")
             :description "The financial industry thrives on data: oceans of historical archives and rivers of low-latency, real-time feeds. If you can know more, know sooner,or know differently, then there is the opportunity to exploit this knowledge and make money. Today's automated trading systems consume this data and make unassisted decisions to do just that. But even though almost every trader will tell you that news is an important input into their trading decisions, most automated systems today are completely unaware of the news — some data is missing. What technology is being used to change all this and make news available as analytic data to meet the aggressive demands of the financial industry?

For around seven years now, RavenPack has been using Common Lisp as the core technology to solve problems and create opportunities for the financial industry. We have a revenue-generating business model where we sell News Analytics — factual and sentiment data extracted from unstructured, textual news. In this talk, I'll describe the RavenPack software architecture with special focus on how Lisp plays a critical role in our technology platform, and hopefully in our success. I hope to touch upon why we at RavenPack love Lisp, some challenges we face when using Lisp, and perhaps even some principles of successful software engineering.")
  @15:30:00 (:title "Coffee"
             :role (:break))
  @16:00:00 (:title "Marrying Common Lisp to Java, and Their Offspring"
             :role (:talk)
             :speakers ("Jerry Boetje" "Steven Melcher"))
  @17:00:00 (:title "Computer Vision with Allegro Common Lisp and the VIGRA Library using VIGRACL"
             :role (:talk :tutorial)
             :speakers ("Benjamin Seppke" "Leonie Dreschler-Fischer"))
  @19:00:00 (:title "Reception at the City Hall"
             :role (:organization)))

(define-programme-day @2010-05-07T00:00:00+01:00
  @09:00:00 (:title "Parallel Programming in Common Lisp"
             :role (:talk :tutorial)
             :speakers ("Pascal Costanza")
             :description "Parallel programming is the wave of the future: It becomes harder and harder to increase the speed of single-core processors, therefore chip vendors have turned to multi-core processors to provide more computing power. However, parallel programming is in principle very hard since it introduces the potential for a combinatorial explosion of the program state space. Therefore, we need different programming models to reduce the complexity induced by concurrency.

Common Lisp implementations have started to provide low-level symmetric multi-processing (SMP) facilities for current multi-core processors. In this tutorial, we will learn about important parallel programming concepts, what impact concurrency has on our intuitions about program efficiency, what low-level features are provided by current Common Lisp implementations, how they can be used to build high-level concepts, and what concepts Lispers should watch out for in the near future. The tutorial will cover basic concepts such as task parallelism, data parallelism and pipeline models; synchronization primitives ranging from compare-and-swap, over locks and software transactional memory, to mailboxes and barriers; integration with Lisp-specific concepts, such as special variables; and last but not least some rules of thumb for writing parallel programs.")
  @10:30:00 (:title "Coffee"
             :role (:break))
  @11:00:00 (:title "CLoX: Common Lisp Objects for XEmacs"
             :role (:talk)
             :speakers ("Didier Verna"))
  @12:00:00 (:title "CLWEB: A literate programming system for Common Lisp"
             :role (:talk)
             :speakers ("Alexander Plotnick"))
  @12:45:00 (:title "Lunch"
             :role (:break))
  @14:30:00 (:title "Lots of Languages, Tons of Types"
             :role (:talk :keynote)
             :speakers ("Matthias Felleisen")
             :description "Since 1995 my research team (PLT) and I have been working on a language for creating programming languages — small and large. Our code base includes a range of languages, and others contribute additional languages on a regular basis. PLT programmers don't hesitate to pick our lazy dialect to implement one module and to link it to a strict language for another module in the same system. Later they may even migrate one of the modules to the typed variant during some maintenance task.

An expressive macro system is one key to this riches of languages. Starting with the 1986 introduction of hygienic macros, the SCHEME world has worked on turning macros into tools for creating proper abstractions. The first part of my talk will briefly describe this world of modern macros and its key attributes: hygiene, referential transparency, modularity of macros, phase separation, and macro specification.

The second part of my talk will focus on how to equip LISP-like languages with a sound type systems and that will illustrate the second key idea, namely, monitoring the interactions between different languages. Our approach to type systems allows programmers to stick to their favorite LISP idioms. It mostly suffices to annotate functions and structures with type declarations during maintenance work. To ensure the soundness of this information even when higher-order values flow back and forth between typed and untyped modules, module boundaries are automatically equipped with software contracts that enforce type-invariants at all levels.")
  @15:30:00 (:title "Coffee"
             :role (:break))
  @16:00:00 (:title "Panel"
             :role (:talk :panel))
  @17:00:00 (:title "Conference End"
             :role (:organization))
  @17:30:00 (:title ""
             :role (:break))
  @20:30:00 (:title "Conference Dinner"
             :role (:dinner)))

(define-proceedings "../static/proceedings/2010.pdf")
