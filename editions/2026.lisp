(in-package #:els-web-editions)
(define-edition "2026")
(in-package "2026")

#+()(define-date "Submission deadline ***extended***" @2026-03-22)
#+()(define-date "Author notification" @2026-04-16)
#+()(define-date "Final papers" @2026-05-02)
#+()(define-date "Early registration deadline" @2026-05-03)

(define-date "Conference start" @2026-05-11)
(define-date "Conference end" @2026-05-12)

(define-text :announcement
  (:div :class "announcement" "The programme is now available!"))

(define-text :additional-info
  (:p "There are several ways for you to join ELS online:"
      (:ul (:li "<b>Via Twitch</b>: You join <a href=\"https://twitch.tv/elsconf\">https://twitch.tv/elsconf</a> and enjoy the show.  If you have a Twitch account, you can also use the text chat to communicate with other participants or the authors.  You can also follow the elsconf user on Twitch to receive a notification when each day's broadcast starts."))
      (:ul (:li "<b>Via IRC</b>: You join the #elsconf channel on <a href=\"https://web.libera.chat/#elsconf\">libera.chat</a>.  Messages from this channel are automatically forwarded to the Twitch chat, and vice versa."))
      (:ul (:li "<b>Via Jitsi</b>: The breaks take place on <a href=\"https://meet.common-lisp.net/els\">Jitsi</a> (a video chat application that runs in any browser).")))
  (:p "The timezone of our schedule is UTC+2. The videos of the streams will
  stay online for two weeks on Twitch, but will also be available on our <a href=\"https://www.youtube.com/@EuropeanLispSymposium\">YouTube channel</a>. See you online!"))

(define-text :submissions

  #+()(:p (:b "This year's special focus: Artificial Intelligence, and Meta-Programming beyond macros."))

  (:p "Submission topics include, but are not limited to:")

  (:ul
   (:li "Context-, aspect-, domain-oriented and generative programming")
   (:li "Macro-, reflective-, meta- and/or rule-based development approaches")
   (:li "Language design and implementation")
   (:li "Language integration, inter-operation and deployment")
   (:li "Development methodologies, support and environments")
   (:li "Educational approaches and perspectives")
   (:li "Experience reports and case studies"))

  (:p "We invite submissions in the following forms. Papers and experience reports must not overlap significantly with the authors’ previously published work in a peer reviewed publication, and must not be under review on another journal or conference. Also, authors must agree with our <a href=\"https://european-lisp-symposium.org/pepms.html\">publication ethics and malpractice statement</a>.")

  (:ul (:li "<b>Papers</b>: Technical papers of up to 8 pages that describe original results or explain known ideas in new and elegant ways.")
       (:li "<b>Experience reports</b>: papers of up to 6 pages describing a Lisp success story and/or analyzing obstacles that have kept it from working in practice.")
       (:li "<b>Tutorials</b>: Abstracts of up to 4 pages for in-depth
       presentations about topics of special interest.")
       (:li "<b>Demonstrations</b>: Abstracts of up to 4 pages for demonstrations of tools, libraries, and applications."))

  (:p "Submissions should be uploaded to <a
  href=\"https://www.easychair.org/conferences/?conf=els2026\">EasyChair</a>. VERY IMPORTANT: to help us with the review process please indicate the type of submission in the title field in the submission form.")

  (:p "LaTeX submissions are strongly encouraged. Please use the LaTeX article template available <a href=\"https://european-lisp-symposium.org/static/submission/template.tex\">here</a> to format your submission." )

  (:p "In general, all submissions should be formatted following the ACM SIGS guidelines and include <a href=\"http://www.acm.org/about/class/2012\">ACM Computing Classification System 2012</a> concepts and terms. Appropriate TeX and Word templates can also be found on the <a href=\"https://www.acm.org/publications/proceedings-template\">ACM publications page</a>." )

  (:p "Please use the <a href=\"http://dl.acm.org/ccs/ccs.cfm\">ACM Computing Classification System site</a> to generate the CCS codes. In order to add a concept, navigate to it using the boxes, and select \"Assign This CCS Concept\" on the left side. You should select one high relevance concept, and up to four medium or low relevance concepts. Once you are done, simply copy the CCS display into the Word document. If you are using TeX, select \"View CCS TeX Code\" and copy the displayed code into your TeX file. The templates should already include sections with bogus CCS codes, which you can simply replace with your own."))


(define-person (:family-name "Verna" :given-name "Didier")
  :website "https://www.didierverna.net/~didier/"
  :role (:organizing-chair))

(define-person (:family-name "Evenson"
                :given-name "Mark")
  :role (:programme-chair)
  :organization "abcl.org"
  :address (:country "Austria"))

(define-person (:family-name "Gac"
                :given-name "Wojciech")
  :role (:local-chair)
  :organization "Keepit"
  :address (:country "Poland"))

(define-person (:family-name "Herda"
                :given-name "Michał")
  :role (:local-chair)
  :organization "Keepit"
  :address (:country "Poland"))

(define-person (:family-name "Hafner"
                :given-name "Yukari")
  :role (:virtualization)
  :photo "https://www.gravatar.com/avatar/daa167d57e692a423067fceba30aadf8"
  :email "shinmera@tymoon.eu"
  :website "https://shinmera.com"
  :nickname "Shinmera"
  :organization "Shirakumo.org"
  :address (:country "Switzerland"))

(define-person (:family-name "Tugai"
                :given-name "Georgiy")
  :role (:virtualization)
  :organization "Configura"
  :address (:country "Sweden"))


(define-person (:family-name "Rideau"
                :given-name "François-René")
  :organization "Gerbil Scheme"
  :address (:country "")
  :role (:speaker :keynote)
  :description "")


#+()(define-person (:family-name ""
                :given-name "")
      :role (:committee)
      :address (:country ""))

(define-person (:family-name "Battyani"
                :given-name "Marc")
  :role (:committee)
  :organization "Enfabrica"
  :address (:country "USA"))

(define-person (:family-name "Cooper"
                :given-name "Dave")
  :role (:committee)
  :organization "Genworks"
  :address (:country "USA"))

(define-person (:family-name "David"
                :given-name "Mark")
  :role (:committee)
  :address (:country "USA"))

(define-person (:family-name "Fukamachi"
                :given-name "Eitaro")
  :role (:committee)
  :address (:country "Japan"))

(define-person (:family-name "de Grivel"
                :given-name "Thomas")
  :role (:committee)
  :organization "kmx.io"
  :address (:country "France"))

(define-person (:family-name "Goldman"
                :given-name "Robert")
  :role (:committee)
  :organization "SIFT"
  :address (:country "USA"))

(define-person (:family-name "Hemann"
                :given-name "Jason")
  :role (:committee)
  :organization "Seton Hall University")

(define-person (:family-name "Micinski"
                :given-name "Kristopher")
  :role (:committee)
  :organization "Syracuse University"
  :address (:country "USA"))

(define-person (:family-name "Raskin"
                :given-name "Michael")
  :role (:committee)
  :organization "LaBRI"
  :address (:country "France"))

(define-person (:family-name "Ruttenberg"
                :given-name "Alan")
  :role (:committee)
  :organization ""
  :address (:country "USA"))

(define-person (:family-name "Vyzovitis"
                :given-name "Dimitris")
  :role (:committee)
  :organization "Mighty Gerbils")

(define-location "Skład Długa"
  :role (:conference)
  :photo "../static/2026/krakow.jpg"
  :website "https://skladkreatywny.pl/"
  :Address (:street "2nd floor, Długa 72"
            :post-code "31-146"
            :city "Kraków"
            :country "Poland")
  :map t)

(define-text :reachability
  (:p (:b "ELS Banquet"))
  (:p "Date & Time: 11.05.2026 18:30")
  (:p "Location: Aquarius Restaurant, Bulwar Czerwieński 81 (river bank, next
       to the Wawel castle)")
  (:p "Cruise Time & Location: 18:50, Statek Sobieski (neighboring ship)")
  (:p
   (:ul
    (:li "The banquet will take place in the boat restaurant Aquarius.")
    (:li "We begin with a 1-hour cruise on another vessel, Sobieski -
  18:50-19:50")
    (:li "The simplest way to get there from the conference venue is by bus:"
         (:ul
          (:li "Lines 513, 169, 179, 304, and 503 should be the most
                convenient")
          (:li "Begin at bus stop \"Nowy Kleparz\", a short walk from the
                conference venue")
          (:li "End at bus stop \"Jubilat\", then a short walk to the river
                bank"))))))


(define-sponsor keepit
  :website "https://www.keepit.com/"
  :logo "../static/logos/keepit.jpg")

(define-sponsor siscog
  :website "https://www.siscog.pt/"
  :logo "../static/logos/siscog.png")


(define-text :keynotes
  (:ul
   (:li
    (:b "McCLIM")
    (:i  " -- Daniel Kochmański")
    (:p "McCLIM is a long-standing GUI toolkit in the Common Lisp ecosystem,
  developed over decades by numerous prominent hackers with periods of both
  active work and stagnation. This talk reflects on hands-on experience of
  working on such a large project in the absence of continued maintainership,
  from modest contributions to sustained development and reconstructing the
  system's theory.")
    (:p "Reviving the McCLIM implementation required, besides fixing bugs,
  gaining incremental insight into its inner workings and how they did fare in
  light of the specification. This understanding was built through
  experimentation, regressions, and occasionally premature features. Early
  efforts focused on stabilizing the X11 backend and core, followed by
  refactoring and making the TrueType renderer the default and fixing infinite
  recursion pitfalls in the geometry substrate.")
    (:p "This groundwork enabled further improvements in the following years.
  A general refactoring of the X11 backend enabled transparency and highly
  performant drawing, where the system fully switched to the XRender
  extension. Refactoring the geometry module made it possible to reimagine the
  region algebra to be closed over its objects and specified operations
  (including region difference and unbounded sets).")
    (:p "More recent developments include work toward thread-safe drawing,
  improvements in text layout, additional backends (including SDL2), and
  ongoing changes to rendering and redisplay mechanisms, a new input editing
  substrate, and expanding the documentation. These efforts culminate in the
  recent release of McCLIM 0.9.9, codenamed Koladia.")
    (:p "Looking ahead, the talk outlines a set of near- and longer-term
  directions. These include continued work on the rendering performance,
  particularly around the rendering queue and animation support, new event
  types, as well as a proposed architectural separation between the windowing
  substrate and the high-level interface system implementing CLIM. The goal of
  this split is to make low-level parts of the system reusable and to allow
  different approaches to building user interfaces to share the same
  foundation. This also avoids imposing CLIM on users who want to explore
  alternative toolkit designs.")
    (:p "The presentation also touches on exploratory ideas, such as
  alternative rendering techniques based on signed distance functions,
  extending the geometry model toward three-dimensional representations and
  specifying the audio substrate, as areas for future investigation rather
  than immediate goals."))
   (:li
    (:b "ECL")
    (:i  " -- Daniel Kochmański")
    (:p "This talk reports on the ongoing WebAssembly port of Embeddable
  Common Lisp (ECL), focusing on runtime adaptation, toolchain constraints,
  and execution models. The project initially targets Emscripten due to its
  POSIX compatibility, which allows running ECL, including Boehm GC, with
  minimal modifications.")
    (:p "I will detail the implementation of runtime subsystems developed
  during the port, including streams, a bridge between Common Lisp and the
  JavaScript runtimes, and REPL integration both in-browser and via an
  external client.")
    (:p "The second part of the talk evaluates WASI as a cleaner compilation
  target and discusses the current limitations preventing practical adoption
  of WasmGC in C-based toolchains. Ongoing refactoring efforts in ECL's
  dynamic environment and type system will be presented as groundwork for
  future portability.")
    (:p "Finally, I will cover cross-compilation support for Common Lisp
  systems and demonstrate early experiments with graphical and interactive
  applications running in the browser."))
   (:li
    (:b "Lambda: the Ultimate Paradigm")
    (:i  " -- François-René Rideau")
    (:p "From its discovery in 1958, Lisp has been at the forefront of
innovation in topics as diverse as Artificial Intelligence, Memory Management,
Object-Oriented Programming, Control Structures, Human Computer
Interaction—and much more.")
    (:p "Then, in the 1990s, progress largely stopped in Lisp, to happen in
other ecosystems. Some Lisp technology was abandoned and forgotten; and while
there remains a niche community of Lisp hackers who keep producing wonderful
innovation, it is largely not at the forefront of technological progress
anymore.")
    (:p "What happened? What made and makes Lisp such a good platform for
creation? What advantages does Lisp still have? How can they be further
amplified? What advantages did it lose? How can the effect be reduced or
reversed? And what does the recent advent of Artificial Intelligence that can
write software mean for the future of Lisp?")
    (:p "Back in the day, Lispers used the slogan “Lambda the Ultimate
<something>” to boast about how Lisp could get to the very essence of so many
issues that others barely understood.")
    (:p "While some Functional Programmers have tried to claim the “Lambda”
slogan for themselves, I’ll argue why indeed Lisp has the “Lambda Nature” in
ways that no other programming language does—precisely because Lisp is more
than a programming language."))))


(define-registration (:inactive)
  (:kind "ELS Early Regular" :price 120 :status :inactive
   :description "ELS conference package (talks, coffee breaks, banquet).")
  (:kind "ELS Early Student" :price 60 :status :inactive
   :description "Same as \"ELS Early Regular\", student price (requires student ID copy via e-mail).")

  (:kind "ELS Late Regular" :price 160 :status :active
   :description "ELS conference package (talks, coffee breaks).")
  (:kind "ELS Late Student" :price 90 :status :active
   :description "Same as \"ELS Late Regular\", student price (requires student ID copy via e-mail).")

  (:option "weekend" :status :active
   :price 40 :description "Sunday excursion (see the Tourism section below)")
  (:option "weekend-guest" :status :active
   :price 40 :description "Sunday excursion guest")
  (:option "banquet-guest" :status :inactive
   :price 30 :description "Banquet Guest"))

(define-text :tourism
  (:h5 "Sunday May 10: excursion to the Wieliczka Salt Mine")
  (:img :class "photo" :width "30%" :style "float: left; padding: 10px;" :src "https://upload.wikimedia.org/wikipedia/commons/d/d1/Wieliczka_Salt_Mine_2024-07-08_%2816%29.jpg")
  (:p "The <a href=\"https://www.wieliczka-saltmine.com/\">Wieliczka Salt
  Mine</a> is a historic underground site near Kraków and a UNESCO World
  Heritage Site. The visit includes a guided walk through chambers carved in
  salt, underground lakes, and historical mining structures dating back
  several centuries. Join us for an exploration a this unique cultural and
  historical landmark.")
  (:p (:i "<strong>WARNING:</strong> group excursions to the mine require
  a minimum of 25, and up to 40 participants. We thus need to reach at least
  25 people in order to secure at least one group. We thus urge you to
  register as soon as possible, and no later than April 19th if you are
  interested, in order to help us secure the tour. Registrants will be
  refunded if the excursion cannot be organized.")))


;;; Programme

(define-programme-day @2026-05-11T00:00:00+01:00
  @09:00:00 (:title "Registration, badges, meet and greet"
             :role (:organization))
  @09:45:00 (:title "Welcome messages and announcements"
             :role (:organization))
  @10:00:00 (:title "Sponsored Talk - Choosing Lisp: Commercial Use of Lisp at Keepit."
             :role (:talk)
             :speakers ("Jakob Østergaard, CTO, Keepit"))
  @11:00:00 (:title "Coffee Break"
             :role (:break))
  @11:29:00 (:title "Session 1: Efficiency & Complexity"
             :role (:organization))
  @11:30:00 (:title "Efficient Range Estimation with NDB Interpreted Code"
             :role (:talk)
             :speakers ("Max-Gerd Retzlaff"))
  @12:00:00 (:title "Taming Complexity: Building and Deploying a 270 KLOC Integrated Scientific Application in Common Lisp"
             :role (:talk)
             :speakers ("Jérôme E. Onwunalu"))
  @12:30:00 (:title "Lunch"
             :role (:break))
  @14:00:00 (:title "Keynote - Lambda: the Ultimate Paradigm"
             :role (:talk)
             :speakers ("François-René Rideau"))
  @15:00:00 (:title "Coffee Break"
             :role (:break))
  @15:29:00 (:title "Session 2: Language"
                    :role (:organization))
  @15:30:00 (:title "A Highly Configurable Common Lisp Reader"
             :role (:talk)
             :speakers ("Jan Moringen" "Robert Strandh"))
  @16:00:00 (:title "Epsilon: A Module System for Lisp"
             :role (:talk)
             :speakers ("Jesse Bouwman"))
  @16:30:00 (:title "An Update on the Method Combinations MOP"
             :role (:talk)
             :speakers ("Didier Verna"))
  @17:00:00 (:title "Short Break"
             :role (:break))
  @17:15:00 (:title "Lightning Talks"
             :role (:talk))
  @18:30:00 (:title "Banquet"
             :role (:dinner)))

(define-programme-day @2026-05-12T00:00:00+01:00
  @09:00:00 (:title "Registration, badges, meet and greet"
             :role (:organization))
  @09:45:00 (:title "Announcements"
             :role (:organization))
  @10:00:00 (:title "Keynote - McCLIM"
             :role (:talk)
             :speakers ("Daniel Kochmański"))
  @11:00:00 (:title "Coffee Break"
             :role (:break))
  @11:29:00 (:title "Session 3: Paradigms & Semantics"
             :role (:organization))
  @11:30:00 (:title "FOL: Bridging Object-Oriented and Functional Programming via the Metaobject Protocol"
             :role (:talk)
             :speakers ("Frank Adrian"))
  @12:00:00 (:title "Ensuring Consistency with OptiX-Semantics: A Use-Case for Low-Effort Code Generation"
             :role (:talk)
             :speakers ("Daniel Gößwein" "Michael Hafner" "Kai Selgrad"))
  @12:30:00 (:title "Lunch"
             :role (:break))
  @14:00:00 (:title "Keynote - ECL"
             :role (:talk)
             :speakers ("Daniel Kochmański"))
  @15:00:00 (:title "Coffee Break"
             :role (:break))
  @15:29:00 (:title "Session 4: Applications"
             :role (:organization))
  @15:30:00 (:title "A Hardware Description Language and Simulation Framework in Common Lisp"
             :role (:talk)
             :speakers ("Stefan-Tiberiu Petre"))
  @16:00:00 (:title "A Lisp Dialect for NDB Interpreted Code"
             :role (:talk)
             :speakers ("Max-Gerd Retzlaff"))
  @16:30:00 (:title "New Deep Learning Receiver Operating Characteristic Formulation Made with Lisp"
             :role (:talk)
             :speakers ("Jacob 'Screwlisp' Pouw-Waas"))
  @17:00:00 (:title "Short Break"
             :role (:break))
  @17:15:00 (:title "Lightning Talks"
             :role (:talk)))

#+()(define-proceedings "../static/proceedings/2026.pdf")
