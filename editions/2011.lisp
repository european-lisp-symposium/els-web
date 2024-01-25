(in-package #:els-web-editions)
(define-edition "2011")
(in-package "2011")

;;; Texts
(define-text :announcement
  (:div :class "announcement" "The conference is over!"))

(define-date "Conference start" @2011-03-31)

(define-date "Conference end" @2011-04-01)

;;; Sponsors
(define-sponsor lispworks
  :website "http://www.lispworks.com/"
  :logo "../static/logos/lispworks.png")

(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

(define-sponsor novasparks
  :website "http://www.novasparks.com/"
  :logo "../static/logos/novasparks.jpg")

(define-sponsor freiheit
  :website "http://www.freiheit.com/en/"
  :logo "../static/logos/freiheit.svg")

(define-sponsor tuhh
  :website "https://www.tuhh.de"
  :logo "../static/logos/tuhh.svg")

;;; People
(define-person (:family-name "Verna" :given-name "Didier")
  :role (:administrative-chair :programme-chair :committee))

(define-person (:family-name "Moeller"
                :given-name "Ralf")
  :role (:local-chair)
  :organization "Hamburg University of Technology"
  :address (:country "Germany"))

(define-person (:family-name "Leitão"
                :given-name "António")
  :role (:committee)
  :organization "Instituto Superior Técnico/INESC-ID"
  :address (:country "Portugal"))

(define-person (:family-name "Rhodes"
                :given-name "Christophe")
  :role (:committee)
  :organization "Goldsmiths University of London"
  :address (:country "United Kingdom"))

(define-person (:family-name "Liebke"
                :given-name "David"
                :additional-name "Edgar")
  :role (:committee)
  :organization "Relevance Inc."
  :address (:country "USA"))

(define-person (:family-name "Lieberman"
                :given-name "Henry")
  :role (:committee)
  :organization "MIT Media Laboratory"
  :address (:country "USA"))

(define-person (:family-name "McCarthy"
                :given-name "Jay")
  :role (:committee)
  :organization "Brigham Young University"
  :address (:country "USA"))

(define-person (:family-name "Reina"
                :given-name "José"
                :additional-name "Luis Ruit")
  :role (:committee)
  :organization "Universidad de Sevilla"
  :address (:country "Spain"))

(define-person (:family-name "Serrano"
                :given-name "Manuel")
  :role (:committee)
  :organization "INRIA"
  :address (:country "France"))

(define-person (:family-name "Antoniotti"
                :given-name "Marco")
  :role (:committee)
  :organization "Universita Milano Bicocca"
  :address (:country "Italy"))

(define-person (:family-name "Sperber"
                :given-name "Michael")
  :role (:committee)
  :organization "DeinProgramm"
  :address (:country "Germany"))

(define-person (:family-name "Costanza"
                :given-name "Pascal")
  :role (:committee)
  :organization "Vrije Universiteit of Brussel"
  :address (:country "Belgium"))

(define-person (:family-name "McKay"
                :given-name "Scott")
  :role (:committee)
  :organization "ITA Software"
  :address (:country "USA"))

(define-person (:family-name "Zilles"
                :given-name "Craig")
  :role (:speaker)
  :organization "University of Illinois")

(define-person (:family-name "Pavlov"
                :given-name "Valentin")
  :role (:speaker))

(define-person (:family-name "Rager"
                :given-name "David"
                :additional-name "L.")
  :role (:speaker))

(define-person (:family-name "Hunt"
                :given-name "Warren"
                :additional-name "A.")
  :role (:speaker))

(define-person (:family-name "Kaufmann"
                :given-name "Matt")
  :role (:speaker))

(define-person (:family-name "Battyani"
                :given-name "Marc")
  :role (:speaker)
  :organization "NovaSparks")

(define-person (:family-name "Durand"
                :given-name "Irène"
                :additional-name "Anne")
  :role (:speaker))

(define-person (:family-name "Hernández"
                :given-name "Antonio"
                :additional-name "Garrote")
  :role (:speaker))

(define-person (:family-name "Garcia"
                :given-name "Maria"
                :additional-name "Moreno")
  :role (:speaker))

(define-person (:family-name "Syropoulos"
                :given-name "Apostolos")
  :role (:speaker))

(define-person (:family-name "Strandh"
                :given-name "Robert")
  :role (:speaker))

(define-person (:family-name "Villeneuve"
                :given-name "Matthieu")
  :role (:speaker))

(define-person (:family-name "Neuss"
                :given-name "Nicolas")
  :role (:speaker))

(define-person (:family-name "Normak"
                :given-name "Kurt")
  :role (:speaker))

(define-person (:family-name "Cavar"
                :given-name "Damir")
  :role (:speaker))

(define-person (:family-name "Gulan"
                :given-name "Tanja")
  :role (:speaker))

(define-person (:family-name "Kero"
                :given-name "Damir")
  :role (:speaker))

(define-person (:family-name "Pehar"
                :given-name "Franjo")
  :role (:speaker))

(define-person (:family-name "Valerjev"
                :given-name "Pavle")
  :role (:speaker))

(define-person (:family-name "Berryman"
                :given-name "Alec")
  :role (:speaker))

;;; Locations
(define-location "TUHH"
  :role (:conference)
  :photo "http://www.hamburg-news.hamburg/site_media/uploads/20140530_tuhh_hauptgebaeude_3_b_copyright_lina_p_a_nguyen_web_2_1.jpg"
  :website "https://www.tuhh.de/"
  :address (:street "Schwarzenbergstraße 1"
            :extended "Building i"
            :post-code "21073"
            :city "Hamburg"
            :country "Germany")
  :map T)

(define-location "Hotel Panorama Harburg"
  :role (:hotel)
  :website "http://www.panorama-hotels-hamburg.de/"
  :telephone "+49 40 41 33 30 0"
  :address (:street "Harburger Ring 8-10"
            :post-code "21073"
            :city "Hamburg"))

(define-location "Hotel Heimhude Hamburg"
  :role (:hotel)
  :website "http://www.hotel-heimhude.de/"
  :telephone "+49 40 41 33 30 0 "
  :address (:street "Heimhuder Str. 16"
            :post-code "20148"
            :city "Hamburg"))

(define-location "Hotel Heimfeld Hamburg-Harburg"
  :role (:hotel)
  :website "http://www.hotelheimfeld.de/"
  :telephone "+49 40 7 90 56 78"
  :address (:street "Heimfelderstr. 91-93"
            :post-code "21075"
            :city "Hamburg"))

(define-location "Hotel Lindtner Hamburg-Harburg"
  :role (:hotel)
  :website "http://www.lindtner.com/"
  :telephone "+49 40 79 009 448"
  :address (:street "Heimfelderstr. 123"
            :post-code "21075"
            :city "Hamburg"))

(define-location "Elysée Hotel Hamburg"
  :role (:hotel)
  :website "http://www.grand-elysee.com/"
  :telephone "+49 40 41 41 2 0"
  :address (:street "Rothenbaumchaussee 10"
            :post-code "20148"
            :city "Hamburg"))

(define-location "Hotel Vorbach Hamburg"
  :role (:hotel)
  :website "http://www.hotel-vorbach.de/"
  :telephone "+49 40 44 18 20"
  :address (:street "Johnsallee 63"
            :post-code "20148"
            :city "Hamburg"))

;;; Programme
(define-programme-day @2011-03-30T00:00:00+02:00
  @18:00:00 (:title "Welcome Reception"
             :role (:organization))
  @22:00:00 (:title ""
             :role (:break)))

(define-programme-day @2011-03-31T00:00:00+02:00
  @08:30:00 (:title "Registration"
             :role (:organization))
  @09:00:00 (:title "Welcome Message"
             :role (:organization))
  @09:30:00 (:title "Compiling for the Common Case"
             :role (:talk :keynote)
             :speakers ("Craig Zilles")
             :description "Microprocessor vendors are actively exploring mechanisms that offer the potential to reduce the effort to produce parallel code. One such mechanism, is the ability to atomically execute code which is useful for accelerating critical sections, lock-free data structures, and for implementing transactional memory. With 3 prior implementations (Transmeta's Crusoe, Azul's Vega, and Sun's Rock) this mechanism has a lot of potential to be ubiquitous in the next decade. In this talk, I'll discuss how this mechanism can be re-purposed to provide very efficient user-mode checkpoint/rollback, allowing a compiler to generate \"speculative\" versions of code that support only the expected case. I'll detail our experiences exploring compiling in such an environment in the context of an x86 binary translator, a Java virtual machine, and the Python dynamic language.")
  @10:30:00 (:title "Coffee"
             :role (:break))
  @11:00:00 (:title "Supercomputing in Lisp"
             :role (:talk)
             :speakers ("Valentin Pavlov"))
  @11:45:00 (:title "A Futures Library and Parallelism Abstractions for a Functional Subset of Lisp"
             :role (:talk)
             :speakers ("David Rager" "Warren Hunt" "Matt Kaufmann"))
  @12:30:00 (:title "Lunch"
             :role (:break))
  @14:00:00 (:title "Reconfigurable Computing on Steroids: Using Common Lisp to Generate Domain Specific Hardware"
             :role (:talk :keynote)
             :speakers ("Marc Battyani")
             :description "General purpose CPUs have been hitting the frequency wall but as the number of transistors in electronic chips continues to steadily increase, there is a tremendous need for other computing paradigms. One of them is the use of reconfigurable hardware (FPGA) to accelerate specific kinds of computations. Even though the performance gain can be huge, FPGAs are notoriously very difficult to program, which has been one of the major drawbacks in their adoption. There have been several attempts to solve this problem using C to VHDL/Verilog compilers. Though this can be useful at times, our opinion is that it is not a good approach. In this talk, we will explain how and why we use domain specific languages that enable us to generate high performance Domain Specific Hardware optimized for the final tasks being implemented. We will also present our experience at NovaSparks where we have been using Common Lisp to successfully define and implement those DSL->DSH compilers in financial applications since 2007.")
  @15:00:00 (:title "Coffee"
             :role (:break))
  @15:30:00 (:title "Implementing huge term automata"
             :role (:talk)
             :speakers ("Irène Durand"))
  @16:15:00 (:title "Jobim: an Actors Library for the Clojure Programming Language"
             :role (:talk)
             :speakers ("Antonio Hernández" "Maria Garcia"))
  @17:00:00 (:title "Lightning Talks"
             :role (:talk :lightning))
  @18:00:00 (:title ""
             :role (:break))
  @20:00:00 (:title "Conference Dinner"
             :role (:dinner)))

(define-programme-day @2011-04-01T00:00:00+02:00
  @09:00:00 (:title "Scala: an Object-Oriented Surprise"
             :role (:talk :keynote)
             :speakers ("Apostolos Syropoulos")
             :description "Scala is an OO language that was released in 2003. The distinguished features of Scala include a seamless integration of functional programming features into an otherwise OO language. Scala owes its name to its ability to scale, that is, it is a language that can grow by providing an infrastructure that allows the introduction of new constructs and data types. Scala is a compiled language. Its compiler produces bytecode for the Java Virtual Machine, thus, allowing the (almost) seamless use of Java tools and constructs from within Scala. Most importantly, Scala is a concurrent programming language, thus, it is a tool for today as well as tomorrow.")
  @10:00:00 (:title "Coffee"
             :role (:break))
  @10:30:00 (:title "SICL, Building Blocks for Implementers of Common Lisp"
             :role (:talk)
             :speakers ("Robert Strandh" "Matthieu Villeneuve"))
  @11:15:00 (:title "Using Common Lisp in University Course Administration"
             :role (:talk)
             :speakers ("Nicolas Neuss"))
  @12:00:00 (:title "Lunch"
             :role (:break))
  @13:30:00 (:title "Bites of Lists - Mapping and Filtering Sublists"
             :role (:talk)
             :speakers ("Kurt Normak"))
  @14:15:00 (:title "The Scheme Natural Language Toolkit (S-NLTK): NLP Library for R6RS and Racket"
             :role (:talk)
             :speakers ("Damir Cavar" "Tanja Gulan" "Damir Kero" "Franjo Pehar" "Pavle Valerjev"))
  @15:00:00 (:title "Coffee"
             :role (:break))
  @15:30:00 (:title "Parallelizing a Commercial Common Lisp Code-Base for Performance"
             :role (:talk)
             :speakers ("Alec Berryman"))
  @16:15:00 (:title "The Next Lisp Challenges - Distribution, Concurrency, Parallelism"
             :role (:talk :panel))
  @17:00:00 (:title "Conference End"
             :role (:organization)))

(define-proceedings "../static/proceedings/2011.pdf")
