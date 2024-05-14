(in-package #:els-web-editions)
(define-edition "2023")
(in-package "2023")

;;(define-date "Submission deadline" @2023-02-26)
;;(define-date "*** Extended deadline ***" @2022-01-30)
;;(define-date "Author notification" @2023-03-26)
;;(define-date "Final papers" @2023-04-09)
;;(define-date "Early registration deadline" @2023-04-09)

(define-date "Conference start" @2023-04-24)
(define-date "Conference end" @2023-04-25)

(define-text :announcement
    (:div :class "announcement" "The conference is over!"))

#+()(define-text :additional-info
  (:p "There are several ways for you to join ELS online:"
      (:ul (:li "<b>Via Twitch</b>: You join <a href=\"https://twitch.tv/elsconf\">https://twitch.tv/elsconf</a> and enjoy the show.  If you have a Twitch account, you can also use the text chat to communicate with other participants or the authors.  You can also follow the elsconf user on Twitch to receive a notification when each day's broadcast starts."))
      (:ul (:li "<b>Via IRC</b>: You join the #els2023 channel on <a href=\"https://web.libera.chat/#els2023\">libera.chat</a>.  Messages from this channel are automatically forwarded to the Twitch chat, and vice versa."))
      (:ul (:li "<b>Via Jitsi</b>: The breaks take place on <a href=\"https://meet.common-lisp.net/els\">Jitsi</a> (a video chat application that runs in any browser).")))
  (:p "The timezone of our schedule is UTC+2. The videos of the streams will
  stay online for two weeks on Twitch, but will also be available on our <a href=\"https://www.youtube.com/@EuropeanLispSymposium\">YouTube channel</a>. See you online!"))

#+()(define-text :submissions

  (:p "Submission topics include, but are not limited to:")

  (:ul
   (:li "Context-, aspect-, domain-oriented and generative programming")
   (:li "Macro-, reflective-, meta- and/or rule-based development approaches")
   (:li "Language design and implementation")
   (:li "Language integration, inter-operation and deployment")
   (:li "Development methodologies, support and environments")
   (:li "Educational approaches and perspectives")
   (:li "Experience reports and case studies"))

  (:p "We invite submissions in the following forms:")

  (:ul (:li "<b>Papers</b>: Technical papers of up to 8 pages that describe original results or explain known ideas in new and elegant ways.")
       (:li "<b>Tutorials</b>: Abstracts of up to 4 pages for in-depth
       presentations about topics of special interest.")
       (:li "<b>Demonstrations</b>: Abstracts of up to 4 pages for demonstrations of tools, libraries, and applications.")
       (:li "<b>Experience reports</b>: papers of up to 6 pages describing a Lisp success story and/or analyzing obstacles that have kept it from working in practice."))

  (:p "You can upload submissions on <a href=\"https://www.easychair.org/conferences/?conf=els2023\">EasyChair</a>.")

  (:p "All submissions should be formatted following the ACM SIGS guidelines and include <a href=\"http://www.acm.org/about/class/2012\">ACM Computing Classification System 2012</a> concepts and terms. Appropriate TeX and Word templates can be found on the <a href=\"https://www.acm.org/publications/proceedings-template\">ACM publications page</a>.")

  (:p "LaTeX submissions are encouraged. For LaTeX submissions, please use the SIGCONF style (two columns, reasonably compact). This is done like this: <code>\\usepackage[format=sigconf]{acmart}</code>." )

  (:p "Please use the <a href=\"http://dl.acm.org/ccs/ccs.cfm\">ACM Computing Classification System site</a> to generate the CCS codes. In order to add a concept, navigate to it using the boxes, and select \"Assign This CCS Concept\" on the left side. You should select one high relevance concept, and up to four medium or low relevance concepts. Once you are done, simply copy the CCS display into the Word document. If you are using TeX, select \"View CCS TeX Code\" and copy the displayed code into your TeX file. The templates should already include sections with bogus CCS codes, which you can simply replace with your own.")

  (:p "If you are using the correct style and classification system, your document will contain a section called <code>CCS Concepts</code> and include terms formatted like <code>•Information systems → Web applications</code>. If your document includes a section titled <code>Categories and Subject Descriptors</code> with things in a style like <code>D.2.3 [Software Engineering]: Coding Tools and Techniques</code>, then you have to update to the new 2012 system and templates as linked above. If the CCS section does not show up in the TeX generated PDF at all, make sure that your TeX file includes the <code>\\printccsdesc</code> command below the abstract."))


(define-person (:family-name "Verna" :given-name "Didier")
  :website "https://www.lrde.epita.fr/~didier/"
  :role (:organizing-chair :speaker))

(define-person (:family-name "Monnier"
                :given-name "Stefan")
  :role (:programme-chair)
  :organization "DIRO, Université de Montréal"
  :address (:country "Canada"))

(define-person (:family-name "Ó Nualláin"
                :given-name "Breanndán")
  :role (:local-chair)
  :organization "Machine Learning Programs"
  :address (:country "Netherlands"))

(define-person (:family-name "Tugai"
                :given-name "Georgiy")
  :role (:virtualization)
  :organization "Configura"
  :address (:country "Sweden"))

(define-person (:family-name "Hafner"
                :given-name "Yukari")
  :role (:virtualization :speaker)
  :photo "https://en.gravatar.com/userimage/12617850/a50422c48339a730dee468056eab402c.png"
  :email "shinmera@tymoon.eu"
  :website "https://shinmera.com"
  :nickname "Shinmera"
  :organization "Shirakumo.org"
  :address (:country "Switzerland"))


(define-person (:family-name "Evenson"
                :given-name "Mark")
  :role (:committee)
  :organisation "not.org"
  :address (:country "Austria"))

(define-person (:family-name "Heisig"
                :given-name "Marco")
  :role (:committee)
  :organisation "Friedrich-Alexander-Universität Erlangen-Nürnberg"
  :address (:country "Germany"))

(define-person (:family-name "Dimitriou"
                :given-name "Ioanna")
  :role (:committee)
  :organisation "Igalia S.L."
  :address (:country "Germany"))

(define-person (:family-name "Smith"
                :given-name "Robert")
  :organisation "HRL Laboratories"
  :role (:committee))

(define-person (:family-name "Engdegård"
                :given-name "Mattias")
  :role (:committee))

(define-person (:family-name "Feeley"
                :given-name "Marc")
  :role (:committee)
  :organisation "Université de Montréal"
  :address (:country "Canada"))

(define-person (:family-name "Battyani"
                :given-name "Marc")
  :role (:committee)
  :organisation "FractalConcept")

(define-person (:family-name "Ruttenberg"
                :given-name "Alan")
  :role (:committee)
  :organisation "National Center for Ontological Research"
  :address (:country "USA"))

(define-person (:family-name "Levine"
                :given-name "Nick")
  :role (:committee)
  :organisation "RavenPack"
  :address (:country "Spain"))

(define-person (:family-name "Courtès"
                :given-name "Ludovic")
  :role (:committee)
  :organisation "Inria"
  :address (:country "France"))

(define-person (:family-name "Flatt"
                :given-name "Matthew")
  :role (:committee)
  :organisation "University of Utah"
  :address (:country "USA"))

(define-person (:family-name "Durand"
                :given-name "Irène")
  :role (:committee)
  :organisation "Université Bordeaux 1"
  :address (:country "France"))

(define-person (:family-name "McCarthy"
                :given-name "Jay")
  :role (:committee)
  :organisation "Brigham Young University"
  :address (:country "USA"))

(define-person (:family-name "Bonnaire-Sergeant"
                :given-name "Ambrose")
  :role (:committee)
  :organisation "Cisco")

(define-person (:family-name "League"
                :given-name "Christopher")
  :role (:committee)
  :organisation "Long Island University"
  :address (:country "USA"))

(define-person (:family-name "Sussman"
                :given-name "Gerald J.")
  :organisation "MIT CSAIL"
  :address (:country "USA")
  :role (:speaker :keynote)
  :description "We have made amazing progress in the construction and
    deployment of systems that do work originally thought to
    require human-like intelligence.  On the symbolic side we
    have world-champion Chess-playing and Go-playing systems.
    We have deductive systems and algebraic manipulation systems
    that exceed the capabilities of human mathematicians.  We
    are now observing the rise of connectionist mechanisms that
    appear to see and hear pretty well, and chatbots that appear
    to have some impressive linguistic ability.  But there is a
    serious problem.  The mechanisms that can distinguish
    pictures of cats from pictures of dogs have no idea what a
    cat or a dog is.  The chatbots have no idea what they are
    talking about.  The algebraic systems do not understand
    anything about the real physical world.  And no deontic
    logic system has any idea about feelings and morality.

    So what is the problem?  We generally do not know how
    to combine systems so that a system that knows how to
    solve problems of class A and another system that knows
    how to solve problems of class B can be combined to
    solve not just problems of class A or class B but can
    solve problems that require both skills that are needed
    for problems of class A and skills that are needed for
    problems of class B.

    Perhaps this is partly a problem of plumbing.  We do not
    have linguistic structures that facilitate discovering and
    building combinations.  This is a fundamental challenge for
    the programming-language community.  We need appropriate
    ideas for abstract plumbing fittings that enable this kind
    of cooperation among disparate mechanisms.  For example, why
    is the amazingly powerful tree exploration mechanism that is
    used for games not also available, in the same system, to a
    deductive engine that is being applied to a social
    interaction problem?

    I will attempt to elucidate this problem and perhaps point
    at avenues of attack that we may work on together.")

(define-person (:family-name "Hermans"
                :given-name "Felienne")
  :organisation "Vrije Universiteit Amsterdam"
  :address (:country "Nederlands")
  :role (:speaker :keynote)
  :description
  "When kids learn to program they often use either a visual language
like Scratch, or a textual language like Python. While visual
languages are great for the first steps, children and educators often
want to move on to textual languages. However, early on, a textual
language and its error messages can be scary. Hedy aims to bridge this
gap with a programming language that is gradual, using different
language levels.

In level 1, there is hardly any syntax at all; printing is done with:
print hello!

At every level, new syntax and concepts are added, so learners do not
have to master everything at once. Hedy builds up to a subset of
Python including conditions, loops, variables, and lists.

To make learning as accessible as possible, Hedy also allows for the
use of localized keywords, f.e in Spanish: imprimir Hello! Hedy
(www.hedy.org) was launched in early 2020 and over 5 million Hedy
progams have been created to date, and has been translated into 46
languages.")

(define-person (:family-name "Vollmer"
                :given-name "Michael")
  :organisation "School of Computing, University of Kent"
  :address (:country "UK")
  :role (:speaker :keynote)
  :description
  "It is common for software running today to use object representations fixed
by the language runtime system; both the Java and Haskell runtimes dictate
an object layout, and the compiler must stick to it for all programs. And
yet when humans optimize a program, one of their primary levers on
performance is changing data representation. For example, an HPC programmer
knows how to pack a regular tree into a byte array for more efficient
access. Unfortunately, this is error-prone, making it an undesirable way to
achieve performance optimization at the expense of safety and readability.

Furthermore, whenever a program receives data from the network or disk,
rigid insistence on a particular heap layout causes an impedance mismatch we
know as deserialization. Data represented in memory has pointers and
arbitrary, sparse layout, while data on disk is packed contiguously, so data
must be transformed from one form to another and back.

Programming with serialized data is a technique for unifying the in-memory
and on-disk representations of data, where the serialized form is used both
on-disk and in-memory. This technique allows data processing programs to
skip the deserialization/reserialization steps by operating directly on the
data in its serialized form. It also represents a principled approach to
optimizing programs by compacting data representations, which increases
locality and minimizes indirection.

In this talk, I will present a programming language, LoCal, for programming
with serialized data. I will also describe Gibbon, an experimental compiler
that automatically transforms functional programs to operate on
serialized data.")

(define-person (:family-name "Jongmans"
                :given-name "Sung-Shik")
  :organisation "Open Universiteit"
  :address (:country "Nederlands")
  :role (:speaker :keynote)
  :description
  "To simplify shared-memory concurrent programming, languages have started to
offer core support for high-level communications primitives, in the form of
message passing though channels, in addition to lower-level synchronization
primitives.  Yet, a growing body of evidence suggests that channel-based
programming abstractions also have their issues.  The Discourje project aims
to help programmers cope with channels and concurrency bugs in Clojure
programs, based on dynamic analysis.  The idea is that programmers write not
only implementations of communication protocols in their Clojure programs,
but also specifications.  Discourje then offers a run-time verification
library to ensure that channel actions in implementations are safe relative
to specifications.")

(define-location "Startup Village"
  :role (:conference)
  :photo "https://upload.wikimedia.org/wikipedia/commons/b/be/KeizersgrachtReguliersgrachtAmsterdam.jpg"
  :website "https://www.startupvillage.nl/"
  :address (:street "Science Park 608"
            :post-code "1098 XH"
            :city "Amsterdam"
            :country "Nederlands")
  :map T)

(define-text :reachability
  (:p "ELS 2023 will take place in "
      (:a :href "https://startupvillage.nl/"
          "Startup Village")
      " which is located in "
      (:a :href "https://www.amsterdamsciencepark.nl/"
          "Amsterdam Science Park")
      ", one of the campuses of the "
      (:a :href "https://www.uva.nl/" "University of Amsterdam") ".")

  (:p "Amsterdam Science Park has its own "
      (:a :href "https://9292.nl/en/station-amsterdam-science-park"
          "railway station")
      " from where it is 10 minutes walk across the campus to Startup Village.
You can find information and schedules on the site of "
      (:a :href "https://www.ns.nl/en" "NS") ", the Dutch national railway.")

  (:p "Startup Village is also served by the number 40 bus. You can alight at bus stop "
      (:a :href "https://9292.nl/en/amsterdam/bushalte-science-park-oost"
          "Science Park Terra")
      " which is right at the entrance to the Village. You may "
      (:a :href "https://reisproducten.gvb.nl/en/uur-en-dagkaarten"
          "buy a ticket")
      " for one hour, one day or multiday. And if you haven't bought a ticket in
advance, you can even pay incidentally by swiping your bank pass in the tram
or bus.")

  (:p "Generally speaking, public transport in and around Amsterdam is of high
quality. Your favourite search engine will usually give you accurate and
up-to-date information but these sites may also be helpful for planning your
trips."

      (:lu (:li (:a :href "https://www.gvb.nl/en" "Amsterdam public transport"))
           (:li (:a :href "https://9292.nl/en"
                    "Public Transport route finder in the Netherlands"))))

  (:p "One of the best ways to get around Amsterdam is by bike.
There are many places in the city where you can rent a bike but one that you
might find particularly convenient is the "
      (:a :href "https://www.ns.nl/en/door-to-door/ov-fiets" "OV Fiets")
      " (OV is \"public transport\" and \"fiets\" is the Dutch word for a bike).
You can pick up a rental bike at most railway stations for €4.45 per day.")

  (:p "If you arrive by car, you can park in "
      (:a :href "https://www.amsterdamsciencepark.nl/wp-content/uploads/2022/12/Bezoekersplattegrond-Amsterdam-Science-Park_2022.pdf"
          "Parking lot P7")
      " which is two minutes walk from Startup Village. Parking costs €4.50 per hour."))

(define-sponsor diro
  :website "https://diro.umontreal.ca/"
  :logo "../static/2023/diro.png")

(define-sponsor mlp
  :website "https://www.mlprograms.com/"
  :logo "../static/2023/mlp.png")

(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

(define-sponsor siscog
  :website "https://www.siscog.pt/"
  :logo "../static/logos/siscog.png")

#+()(define-sponsor ravenpack
  :website "https://www.ravenpack.com/"
  :logo "../static/logos/ravenpack.jpg")

(define-sponsor sigplan
  :website "http://www.sigplan.org/"
  :logo "../static/logos/SIGPLAN.png")

(define-sponsor acm
  :website "http://www.acm.org/"
  :logo "../static/logos/ACM.png")


#+()(define-text :keynotes
  (:ul
   (:li
    (:b "Artificial Intelligence: a Problem of Plumbing?<br />")
    (:i  "Gerald J. Sussman, MIT CSAIL, USA"))
   (:li
    (:b "Hedy: Gradual, Multi-Lingual, and Teacher-Centric Programming Education<br />")
    (:i "Felienne Hermans, Vrije Universiteit Amsterdam, Nederlands"))
   (:li
    (:b "A Language-Based Approach to Programming with Serialized Data<br />")
    (:i "Michael Vollmer, University of Kent, UK"))
   (:li
    (:b "Run-Time Verification of Communication Protocols in Clojure<br />")
    (:i "Sung-Shik Jongmans, Open University of the Netherlands, Nederlands"))))


(define-text :tourism
  (:p "Some events at around the time of the conference may be of interest.")
  (:p "April 27th in the Nederlands is King's Day,
the national holiday, a renowned and very colorful event, especially in
Amsterdam. This is a great opportunity for those who'd wish to combine ELS
with some tourism...")
  (:p "More information on King's Day "
      (:a :href "https://www.iamsterdam.com/en/see-and-do/whats-on/major-events-and-celebrations/kings-day"
          "here"))
  (:p (:a :href "https://keukenhof.nl/en/" "The Keukenhof")
      " describes itself as \"The most beautiful spring garden in the world.\"
It is currently in bloom.")
  (:p (:a :href "https://www.rijksmuseum.nl" "The Rijksmuseum")
      " is currently hosting the largest exhibition ever of paintings by"
      (:a :href "https://www.rijksmuseum.nl/en/whats-on/exhibitions/vermeer"
          " Vermeer")
      ". However it will be difficult to find tickets."))

#+()(define-registration (:active)
  (:kind "Early regular" :price 120 :status :inactive
   :description "Full conference package (talks, coffee breaks, banquet).")
  (:kind "Early student" :price 60 :status :inactive
   :description "Same as \"Early regular\", student price (requires student ID copy via e-mail).")
  (:kind "Regular" :price 160 :status :active
   :description "Full conference package (talks, coffee breaks, note: banquet out).")
  (:kind "Student" :price 90 :status :active
   :description "Same as \"Regular\", student price (requires student ID copy via e-mail).")
  (:option "banquet" :status :inactive
   :checked t :price 0 :description "Banquet")
  (:option "banquet-guest" :status :inactive
   :price 30 :description "Banquet guest")
  (:option "certificate" :price 0 :description "Certificate of attendance"))


;;; Programme
(define-programme-day @2023-04-24T00:00:00+02:00
  @09:00:00 (:title "Registration, badges, meet and greet"
             :role (:organization))
  @09:45:00 (:title "Welcome message and announcements"
             :role (:organization))
  @10:00:00 (:title "Keynote: Run-Time Verification of Communication Protocols in Clojure"
             :role (:talk :keynote)
             :speakers ("Sung-Shik Jongmans")
             :description "To simplify shared-memory concurrent programming, languages have started to offer core support for high-level communications primitives, in the form of message passing though channels, in addition to lower-level synchronization primitives.  Yet, a growing body of evidence suggests that channel-based programming abstractions also have their issues.

The Discourje project aims to help programmers cope with channels and concurrency bugs in Clojure programs, based on dynamic analysis. The idea is that programmers write not only implementations of communication protocols in their Clojure programs, but also specifications.  Discourje then offers a run-time verification library to ensure that channel actions in implementations are safe relative to specifications.")
  @11:00:00 (:title "Coffee Break"
             :role (:break))
  @11:30:00 (:title "Research Paper: A MOP-Based Implementation for Method Combinations"
             :role (:talk)
             :speakers ("Didier Verna"))
  @12:00:00 (:title "Research Paper: A Minimal Run-Time Overhead Metaobject Protocol for Julia"
             :role (:talk)
             :speakers ("Marcelo Santos" "Antonio Leitao"))
  @12:30:00 (:title "Lunch"
             :role (:break))
  @14:00:00 (:title "Research Paper: An Elegant and Fast Algorithm for Partitioning Types"
             :role (:talk)
             :speakers ("Jim Newton"))
  @14:30:00 (:title "Demonstration: GRASP: An Extensible Tactile Interface for Editing S-expressions"
             :role (:demo)
             :speakers ("Panicz Maciej Godek"))
  @15:00:00 (:title "Coffee Break"
             :role (:break))
  @15:30:00 (:title "Keynote: Hedy: Gradual, Multi-Lingual, and Teacher-Centric
Programming Education"
             :role (:talk :keynote)
             :speakers ("Felienne Hermans")
             :description "When kids learn to program they often use either a visual language like Scratch, or a textual language like Python. While visual languages are great for the first steps, children and educators often want to move on to textual languages. However, early on, a textual language and its error messages can be scary. Hedy aims to bridge this gap with a programming language that is gradual, using different language levels.

In level 1, there is hardly any syntax at all; printing is done with: print hello!

At every level, new syntax and concepts are added, so learners do not have to master everything at once. Hedy builds up to a subset of Python including conditions, loops, variables, and lists.

To make learning as accessible as possible, Hedy also allows for the use of localized keywords, f.e in Spanish: imprimir Hello! Hedy (www.hedy.org) was launched in early 2020 and over 5 million Hedy progams have been created to date, and has been translated into 46 languages.")
  @16:30:00 (:title "Enlightening Lightning Talks"
             :role (:talk))
  @18:30:00 (:title "Conference dinner (on site)"
                    :role (:break)))

(define-programme-day @2023-04-25T00:00:00+02:00
  @09:30:00 (:title "Keynote: A Language-Based Approach to Programming with Serialized Data"
             :role (:talk :keynote)
             :speakers ("Michael Vollmer")
             :description "It is common for software running today to use object representations fixed by the language runtime system; both the Java and Haskell runtimes dictate an object layout, and the compiler must stick to it for all programs. And yet when humans optimize a program, one of their primary levers on performance is changing data representation. For example, an HPC programmer knows how to pack a regular tree into a byte array for more efficient access. Unfortunately, this is error-prone, making it an undesirable way to achieve performance optimization at the expense of safety and readability.

Furthermore, whenever a program receives data from the network or disk, rigid insistence on a particular heap layout causes an impedance mismatch we know as deserialization. Data represented in memory has pointers and arbitrary, sparse layout, while data on disk is packed contiguously, so data must be transformed from one form to another and back.

Programming with serialized data is a technique for unifying the in-memory and on-disk representations of data, where the serialized form is used both on-disk and in-memory. This technique allows data processing programs to skip the deserialization/reserialization steps by operating directly on the data in its serialized form. It also represents a principled approach to optimizing programs by compacting data representations, which increases locality and minimizes indirection.

In this talk, I will present a programming language, LoCal, for programming with serialized data. I will also describe Gibbon, an experimental compiler that automatically transforms functional programs to operate on serialized data.")
  @10:30:00 (:title "Coffee Break"
             :role (:break))
  @11:00:00 (:title "Demonstration (remote): A stepper for Armed Bear Common Lisp (ABCL)"
             :role (:demo)
             :speakers ("Alejandro Zamora Fonseca"))
  @11:30:00 (:title "Experience Report: Kandria - A Game in Common Lisp"
             :role (:demo)
             :speakers ("Yukari Hafner"))
  @12:00:00 (:title "Sponsored: SISCOG - 35 years of keeping trains on track"
             :role (:demo)
             :speakers ("Fábio Almeida"))
  @12:30:00 (:title "Lunch"
             :role (:break))
  @14:00:00 (:title "Research Paper (remote): Parallel Garbage Collection for SBCL"
             :role (:talk)
             :speakers ("Hayley Patton"))
  @14:30:00 (:title "Research Paper: Design of an Efficient Lisp Bytecode Machine and Compiler"
             :role (:talk)
             :speakers ("Alexander Wood" "Charles Zhang" "Christian Schafmeister"))
  @15:00:00 (:title "Coffee Break"
             :role (:break))
  @15:30:00 (:title "Keynote (remote): Artificial Intelligence: a Problem of Plumbing?"
             :role (:talk :keynote)
             :speakers ("Gerald J. Sussman")
             :description "We have made amazing progress in the construction and deployment of systems that do work originally thought to require human-like intelligence.  On the symbolic side we have world-champion Chess-playing and Go-playing systems. We have deductive systems and algebraic manipulation systems that exceed the capabilities of human mathematicians.  We are now observing the rise of connectionist mechanisms that appear to see and hear pretty well, and chatbots that appear to have some impressive linguistic ability.  But there is a serious problem.  The mechanisms that can distinguish pictures of cats from pictures of dogs have no idea what a cat or a dog is. The chatbots have no idea what they are talking about.  The algebraic systems do not understand anything about the real physical world.  And no deontic logic system has any idea about feelings and morality.

So what is the problem?  We generally do not know how to combine systems so that a system that knows how to solve problems of class A and another system that knows how to solve problems of class B can be combined to solve not just problems of class A or class B but can solve problems that require both skills that are needed for problems of class A and skills that are needed for problems of class B.

Perhaps this is partly a problem of plumbing.  We do not have linguistic structures that facilitate discovering and building combinations.  This is a fundamental challenge for the programming-language community.  We need appropriate ideas for abstract plumbing fittings that enable this kind of cooperation among disparate mechanisms.  For example, why is the amazingly powerful tree exploration mechanism that is used for games not also available, in the same system, to a deductive engine that is being applied to a social interaction problem?

I will attempt to elucidate this problem and perhaps point at avenues of attack that we may work on together.")
  @16:30:00 (:title "Enlightening Lightning Talks"
             :role (:talk)))

(define-proceedings "../static/proceedings/2023.pdf")
