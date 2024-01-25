(in-package #:els-web-editions)
(define-edition "2008")
(in-package "2008")

;;; Texts
(define-text :announcement
  (:div :class "announcement" "The conference is over!"))

(define-date "Conference start" @2008-05-22)

(define-date "Conference end" @2008-05-23)

;;; Sponsors
(define-sponsor lispworks
  :website "http://www.lispworks.com/"
  :logo "../static/logos/lispworks.png")

(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

(define-sponsor lacub
  :website "http://www.bordeaux-metropole.fr/"
  :logo "../static/logos/lacub.jpg")

(define-sponsor acquitaine
  :website "https://www.nouvelle-aquitaine.fr/"
  :logo "../static/logos/aquitaine.png")

(define-sponsor bordeaux
  :website "http://www.bordeaux.fr/"
  :logo "../static/logos/bordeaux.svg")

(define-sponsor labri
  :website "http://www.labri.fr/"
  :logo "../static/logos/labri.jpg")

(define-sponsor u-bordeaux
  :website "http://www.u-bordeaux.fr/"
  :logo "../static/logos/u-bordeaux.gif")

;;; People
(define-person (:family-name "Verna" :given-name "Didier")
  :role (:administrative-chair :committee :speaker))

(define-person (:family-name "Costanza"
                :given-name "Pascal")
  :role (:programme-chair)
  :organization "Vrije Universiteit Brussel"
  :address (:country "Belgium"))

(define-person (:family-name "Antoniotti"
                :given-name "Marco")
  :role (:committee :speaker)
  :organization "Universita Milano Bicocca"
  :address (:country "Italy"))

(define-person (:family-name "Beurton-Aimar"
                :given-name "Marie")
  :role (:committee)
  :organization "Université Bordeaux"
  :address (:country "France"))

(define-person (:family-name "Boetje"
                :given-name "Jerry")
  :role (:committee)
  :organization "College of Charlston"
  :address (:country "USA"))

(define-person (:family-name "D'Hondt"
                :given-name "Theo")
  :role (:committee)
  :organization "Vrije Universiteit Brussel"
  :address (:country "Belgium"))

(define-person (:family-name "Irène"
                :given-name "Durand"
                :additional-name "Anne")
  :role (:committee)
  :organization "Université Bordeaux"
  :address (:country "France"))

(define-person (:family-name "Feeley"
                :given-name "Marc")
  :role (:committee)
  :organization "Université de Montréal"
  :address (:country "Canada"))

(define-person (:family-name "Gallesio"
                :given-name "Erick")
  :role (:committee)
  :organization "Université de Nice / Sophia Antipolis"
  :address (:country "France"))

(define-person (:family-name "Joswig"
                :given-name "Rainer")
  :role (:committee)
  :organization "Independent Consultant"
  :address (:country "Germany"))

(define-person (:family-name "Leitão"
                :given-name "António")
  :role (:committee :speaker)
  :organization "Technical University of Lisbon"
  :address (:country "Portugal"))

(define-person (:family-name "Lieberman"
                :given-name "Henry")
  :role (:committee)
  :organization "MIT"
  :address (:country "USA"))

(define-person (:family-name "McKay"
                :given-name "Scott")
  :role (:committee)
  :organization "ITA Software"
  :address (:country "USA"))

(define-person (:family-name "Möller"
                :given-name "Ralf")
  :role (:committee)
  :organization "Hamburg University of Technology"
  :address (:country "Germany"))

(define-person (:family-name "Neuss"
                :given-name "Nicolas")
  :role (:committee)
  :organization "Universität Karlsruhe"
  :address (:country "Germany"))

(define-person (:family-name "Pitman"
                :given-name "Kent")
  :role (:committee)
  :organization "PTC"
  :address (:country "USA"))

(define-person (:family-name "Rhodes"
                :given-name "Christophe")
  :role (:committee :speaker)
  :organization "Goldsmiths University of London"
  :address (:country "United Kingdom"))

(define-person (:family-name "Siskind"
                :given-name "Jeffrey"
                :additional-name "Mark")
  :role (:committee)
  :organization "Purdue University"
  :address (:country "USA"))

(define-person (:family-name "González"
                :given-name "Sebastián")
  :role (:speaker))

(define-person (:family-name "Mens"
                :given-name "Kim")
  :role (:speaker))

(define-person (:family-name "Cádiz"
                :given-name "Alfredo")
  :role (:speaker))

(define-person (:family-name "Durand"
                :given-name "Irène"
                :additional-name "Anne")
  :role (:speaker))

(define-person (:family-name "Schwer"
                :given-name "Sylviane")
  :role (:speaker))

(define-person (:family-name "Newton"
                :given-name "Jim")
  :role (:speaker))

(define-person (:family-name "Moore"
                :given-name "Timothy")
  :role (:speaker))

(define-person (:family-name "Laurson"
                :given-name "Mikael")
  :role (:speaker))

(define-person (:family-name "Kuuskankare"
                :given-name "Mika")
  :role (:speaker))

;;; Locations
(define-location "LaBRI Université Bordeaux"
  :role (:conference)
  :photo "http://vpcfvu2016.u-bordeaux.fr/files/LABRI.jpg"
  :website "https://www.labri.fr/"
  :address (:street "351 Cours de la Libération"
            :post-code "33400"
            :city "Talence"
            :country "France")
  :map T)

(define-location "Bayonne Etche Ona"
  :role (:hotel)
  :telephone "+33 5 56 48 00 88"
  :address (:street "15 Cours de de l'Intendance"
            :post-code "33000"
            :city "Bordeaux"))

(define-location "Grand Hôtel Français"
  :role (:hotel)
  :telephone "+33 5 56 48 10 35"
  :address (:street "12 Rue du Temple"
            :post-code "33000"
            :city "Bordeaux"))

(define-location "Hôtel de la Boétie"
  :role (:hotel)
  :telephone "+33 5 56 81 76 68"
  :address (:street "4 Rue de La Boétie"
            :post-code "33000"
            :city "Bordeaux"))

(define-location "Hôtel de l'Opera"
  :role (:hotel)
  :telephone "+33 5 56 81 41 27"
  :address (:street "35 Rue Esprit des Lois"
            :post-code "33000"
            :city "Bordeaux"))

(define-location "Hôtel de la Presse"
  :role (:hotel)
  :telephone "+33 5 56 48 53 88"
  :address (:street "6 Rue Porte Dijeaux"
            :post-code "33000"
            :city "Bordeaux"))

(define-location "Hôtel de Seze"
  :role (:hotel)
  :telephone "+33 5 56 81 72 42"
  :address (:street "23 Allée Tourny"
            :post-code "33000"
            :city "Bordeaux"))

(define-location "Hôtel de la Tour Intendance"
  :role (:hotel)
  :telephone "+33 5 56 44 56 56"
  :address (:street "16 rue de la vieille Tour"
            :post-code "33000"
            :city "Bordeaux"))

(define-location "Hôtel Gambetta"
  :role (:hotel)
  :telephone "+33 5 56 51 21 83"
  :address (:street "66 Rue Porte Dijeaux"
            :post-code "33000"
            :city "Bordeaux"))

(define-location "Hôtel Victoria Garden"
  :role (:hotel)
  :telephone "+33 5 56 33 48 48"
  :address (:street "127 Cours de la Somme"
            :post-code "33800"
            :city "Bordeaux"))

(define-location "Teneo Suites"
  :role (:hotel)
  :telephone "+33 5 57 35 76 00"
  :address (:street "8 Allée du 7ème Art"
            :post-code "33400"
            :city "Talence"))

;;; Programme
(define-programme-day @2008-05-22T00:00:00+02:00
  @08:30:00 (:title "Registration"
             :role (:organization))
  @09:00:00 (:title "Welcome Message"
             :role (:organization))
  @09:30:00 (:title "Writers' Workshop I"
             :role (:workshop))
  @10:00:00 (:title "Writers' Workshop II"
             :role (:workshop))
  @10:30:00 (:title "Coffee"
             :role (:break))
  @11:00:00 (:title "Writers' Workshop III"
             :role (:workshop))
  @11:30:00 (:title "Writers' Workshop IV"
             :role (:workshop))
  @12:00:00 (:title "Lunch"
             :role (:break))
  @14:30:00 (:title "Writers' Workshop V"
             :role (:workshop))
  @15:00:00 (:title "Writers' Workshop VI"
             :role (:workshop))
  @15:30:00 (:title "Writers' Workshop VII"
             :role (:workshop))
  @16:00:00 (:title "Coffee"
             :role (:break))
  @16:30:00 (:title ""
             :role (:break))
  @19:00:00 (:title "Reception at City Hall"
             :role (:dinner))
  @20:00:00 (:title ""
             :role (:break)))

(define-programme-day @2008-05-23T00:00:00+02:00
  @08:30:00 (:title "Registration"
             :role (:organization))
  @09:00:00 (:title "Welcome Message"
             :role (:organization))
  @09:30:00 (:title "The Right Mix: Common Lisp in Bioinformatics, Systems Biology and in the Larger Semantic Network World"
             :role (:talk :keynote)
             :speakers ("Marco Antoniotti")
             :description "Working with CL nowadays is a choice based on a long programming experience (and/or lazyness and or/inertia). Many times this choice is hard because of a number of entrenched limitations of the CL (or simply Lispy) world: lack of many agreed upon, modern and portable extensions, and lack of new programmers being the most visible. Yet, this talk will argue that the situation has improved and that CL is even more \"the right mix\" for many researchers in the sciences, and, in particular, in the fields I have been working for a few years.

For CL, being the right mix comes from the strenghts of the standard and of the nature itself of the language. The ability to build code with more than decent numerical performance and the ability to morph in any (declarative) DSL are the key characteristics that make CL the right tool for many of the sciences.

Bioinformatics and Systems Biology are two relatively broad terms that serve to describe a number of system and algorithmic solutions to problems stemming from the needs of biologists and clinicians. Very roughly speaking, these terms cover the range from \"sequence analysis\" (DNA, RNA, and protein) to statistical interpretation of \"high throughput experiments\" (micro-array and new ion-trap protein studies), to model simulation and testing of metabolic, regulatory and signaling pathways. The numerical capabilities of CL do fit well with these problems. On the other end, these problems require the support of many data manipulation, sharing and, above all, description systems that nowadays are continuously crystallized in different \"ontologies\" and \"controlled vocabularies\" which are then rendered in XML/RDF. CL systems for solving such \"representation\" task predate all of these efforts and it should come to no surprise that Lisp-based systems provide a very good platform to build more expressive DSL's capable of improving the inference capabilities of the tools needed by biologists and physicians.

At this point in time, the \"basic library\" situation for CL is good enough to support its use in the field. CLSQL and XML parsing libraries are the basis for such use. Numerical libraries abound, as well as web development frameworks. Writing inference engines and DSL's has never been a problem for CL programmers and researchers. It is therefore a well founded conclusion that CL is a \"well mixed solution\" for Bioinformatics and Systems Biology, life, universe and everything else. It just needs to be put together.

Marco Antoniotti is an Associate Professor at the Dipartimento di Informatica Sistemistica e Comunicazione, Università degli Studi di Milano-Bicocca, Italy. His interests concentrate in the field of Computational and Systems Biology. He is the author or co-author of several papers and software systems - SHIFT from UC Berkeley, Jester from PARADES, Simpathica and GOALIE from NYU - and co-authored three patents in the field of Genomics Optical Mapping. He received his PhD from New York University in 1995.")
  @10:30:00 (:title "Coffee"
             :role (:break))
  @11:00:00 (:title "Context-Oriented Programming with the Ambient Object System"
             :role (:talk)
             :speakers ("Sebastián González" "Kim Mens" "Alfredo Cádiz"))
  @11:30:00 (:title "Reasoning about qualitative temporal information with S-words and S-languages"
             :role (:talk)
             :speakers ("Irène Durand" "Sylviane Schwer"))
  @12:00:00 (:title "Lunch"
             :role (:break))
  @14:30:00 (:title "Binary Methods Programming: the Clos Perspective"
             :role (:talk)
             :speakers ("Didier Verna"))
  @15:00:00 (:title "Custom Specializers in Object-Oriented Lisp"
             :role (:talk)
             :speakers ("Jim Newton" "Christophe Rhodes"))
  @15:30:00 (:title "UCL-GLORP - An ORM for Common Lisp"
             :role (:talk)
             :speakers ("António Leitão"))
  @16:00:00 (:title "Coffee"
             :role (:break))
  @16:30:00 (:title "An Implementation of CLIM Presentation Types"
             :role (:talk)
             :speakers ("Timothy Moore"))
  @17:00:00 (:title "Visual Programming in PWGL"
             :role (:talk)
             :speakers ("Mikael Laurson" "Mika Kuuskankare"))
  @17:30:00 (:title "Conference End"
             :role (:organization))
  @18:00:00 (:title ""
             :role (:break))
  @19:00:00 (:title "Conference Dinner"
             :role (:dinner)))

(define-proceedings "../static/proceedings/2008.pdf")
