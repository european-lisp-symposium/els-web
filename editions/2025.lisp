(in-package #:els-web-editions)
(define-edition "2025")
(in-package "2025")

#+()(define-date "Submission deadline" @2025-03-09)
#+()(define-date "Author notification" @2025-03-30)
(define-date "Final papers" @2025-04-13)
(define-date "Early registration deadline" @2025-05-04)

(define-date "Conference start" @2025-05-19)
(define-date "Conference end" @2025-05-20)

(define-text :announcement
  (:div :class "announcement" "The programme is being put up. Stay tuned for updates!"))

#+()(define-text :additional-info
  (:p "There are several ways for you to join ELS online:"
      (:ul (:li "<b>Via Twitch</b>: You join <a href=\"https://twitch.tv/elsconf\">https://twitch.tv/elsconf</a> and enjoy the show.  If you have a Twitch account, you can also use the text chat to communicate with other participants or the authors.  You can also follow the elsconf user on Twitch to receive a notification when each day's broadcast starts."))
      (:ul (:li "<b>Via IRC</b>: You join the #els2025 channel on <a href=\"https://web.libera.chat/#els2025\">libera.chat</a>.  Messages from this channel are automatically forwarded to the Twitch chat, and vice versa."))
      (:ul (:li "<b>Via Jitsi</b>: The breaks take place on <a href=\"https://meet.common-lisp.net/els\">Jitsi</a> (a video chat application that runs in any browser).")))
  (:p "The timezone of our schedule is UTC+2. The videos of the streams will
  stay online for two weeks on Twitch, but will also be available on our <a href=\"https://www.youtube.com/@EuropeanLispSymposium\">YouTube channel</a>. See you online!"))

(define-text :submissions

  (:p (:b "This year's special focus: Artificial Intelligence, and Meta-Programming beyond macros."))

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
  href=\"https://www.easychair.org/conferences/?conf=els2025\">EasyChair</a>. Note: to help us with the review process please indicate the type of submission in the title field in the submission form.")

  (:p "LaTeX submissions are strongly encouraged. Please use the LaTeX article template available <a href=\"https://european-lisp-symposium.org/static/submission/template.tex\">here</a> to format your submission." )

  (:p "In general, all submissions should be formatted following the ACM SIGS guidelines and include <a href=\"http://www.acm.org/about/class/2012\">ACM Computing Classification System 2012</a> concepts and terms. Appropriate TeX and Word templates can also be found on the <a href=\"https://www.acm.org/publications/proceedings-template\">ACM publications page</a>." )

  (:p "Please use the <a href=\"http://dl.acm.org/ccs/ccs.cfm\">ACM Computing Classification System site</a> to generate the CCS codes. In order to add a concept, navigate to it using the boxes, and select \"Assign This CCS Concept\" on the left side. You should select one high relevance concept, and up to four medium or low relevance concepts. Once you are done, simply copy the CCS display into the Word document. If you are using TeX, select \"View CCS TeX Code\" and copy the displayed code into your TeX file. The templates should already include sections with bogus CCS codes, which you can simply replace with your own."))


(define-person (:family-name "Verna" :given-name "Didier")
  :website "https://www.lrde.epita.fr/~didier/"
  :role (:organizing-chair))

(define-person (:family-name "Rideau Đặng-Vũ Bân"
                :given-name "François-René")
  :role (:programme-chair)
  :organization "MuKn"
  :address (:country "USA"))

(define-person (:family-name "Hafner"
                :given-name "Yukari")
  :role (:local-chair :virtualization)
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


(define-person (:family-name "Gutknecht"
                :given-name "Jürg")
  :organization "ETH Zürich"
  :address (:country "Switzerland")
  :role (:speaker :keynote)
  :description "")

(define-person (:family-name "Mendhekar"
                :given-name "Anurag")
  :organization "Paper Culture LLC"
  :address (:country "USA")
  :role (:speaker :keynote)
  :description "")



(define-person (:family-name "Barski"
                :given-name "Conrad")
  :role (:committee)
  :address (:country "USA"))

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

(define-person (:family-name "Culpepper"
                :given-name "Ryan")
  :role (:committee)
  :organization "University of Massachusetts, Bostom"
  :address (:country "USA"))

(define-person (:family-name "Fukamachi"
                :given-name "Eitaro")
  :role (:committee)
  :address (:country "Japan"))

(define-person (:family-name "Goldman"
                :given-name "Robert")
  :role (:committee)
  :organization "SIFT"
  :address (:country "USA"))

(define-person (:family-name "Gray"
                :given-name "Gavin")
  :role (:committee)
  :organization "Brown University"
  :address (:country "USA"))

(define-person (:family-name "Hemann"
                :given-name "Jason")
  :role (:committee)
  :organization "Seton Hall University"
  :address (:country "USA"))

(define-person (:family-name "Micinski"
                :given-name "Kristopher")
  :role (:committee)
  :organization "Syracuse University"
  :address (:country "USA"))

(define-person (:family-name "Morazan"
                :given-name "Marco")
  :role (:committee)
  :organization "Seton Hall University"
  :address (:country "USA"))

(define-person (:family-name "Raskin"
                :given-name "Michael")
  :role (:committee)
  :organization "LaBRI"
  :address (:country "France"))

(define-person (:family-name "Sano"
                :given-name "Masatoshi")
  :role (:committee)
  :organization "Nayuta"
  :address (:country "Japan"))

(define-person (:family-name "Vyzovitis"
                :given-name "Dimitris")
  :role (:committee)
  :organization "Mighty Gerbils")


(define-location "Swiss Game Hub"
  :role (:conference)
  :photo "https://www.swissgamehub.com/wp-content/uploads/2024/01/werkhalle87S.jpg"
  :website "https://www.swissgamehub.com/"
  :Address (:street "Erika-Mann Strasse 11"
            :post-code "8050"
            :city " Zürich"
            :country "Switzerland")
  :map t)

(define-location "Hotel Sternen Oerlikon"
  :role (:hotel)
  :website "https://www.sternenoerlikon.ch/en"
  :address (:street "Schaffhauserstrasse 335"))

(define-location "Acasa Suites"
  :role (:hotel)
  :website "https://acasasuites.com/en/acasa-suites-zurich.html"
  :address (:street "Binzmühlestrasse 72"))

(define-location "Radisson Hotel & Suites"
  :role (:hotel)
  :website "https://www.radissonhotels.com/en-us/hotels/radisson-hotel-and-suites-zurich"
  :address (:street "Thurgauerstrasse 116"))

(define-location "Courtyard by Marriott"
  :role (:hotel)
  :website "https://www.marriott.com/en-us/hotels/zrhcy-courtyard-zurich-north/overview/"
  :address (:street "Max-Bill Platz 19"))

#+()(define-text :reachability )

#+()(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

#+()(define-sponsor siscog
  :website "https://www.siscog.pt/"
  :logo "../static/logos/siscog.png")

(define-sponsor swissgamehub
  :website "https://www.swissgamehub.com"
  :logo "../static/logos/swissgamehub.png")

(define-text :keynotes
  (:ul
   (:li
    (:b "Project Oberon: A Late Appraisal.")
    (:i  " -- Jürg Gutknecht, prof. em. ETH Zürich")
    (:p "In this talk, we will show how and why a long and successful phase of programming language and system development at ETH Zürich starting with Pascal in the 1970s culminated in project Oberon in the 1990s."))
   (:li
    (:b "Is Lisp Still Relevant in the New Age of AI?")
    (:i  " -- Anurag Mendhekar, Paper Culture LLC")
    (:p "Lisp owes its existence and popularity to early AI research. At one time, the entire AI world revolved around Lisp, which provided an enormous amount of energy for the language’s development and for pioneering technologies in compiler design, language innovation, and high-performance hardware (such as the Connection Machine). However, in today’s AI landscape, Lisp is nowhere to be found. Instead, languages like Python—many of whose ideas are borrowed from Lisp—have become the mainstream tools for modern AI.")
    (:p "This raises a key question: What made Lisp so relevant during the
    first AI revolution but seemingly irrelevant in the second? Is there still
    a place for Lisp in this new AI era? If so, what should the Lisp community
    focus on to re-enable its relevance?"))
   (:li
    (:b "Toward safe, flexible, and efficient software in Common Lisp")
    (:i  " -- Robert Smith")
    (:p "Common Lisp is renowned for its ability to express safe, flexible, or efficient code. However, these characteristics are often at odds with one another, especially in practical software co-development settings. Coalton is an embedded language within Common Lisp that leverages a Haskell-like type system to prove type safety of a program and performs a variety of type-based optimizations. Coalton also permits new abstractions that are difficult to express in ordinary Common Lisp. We discuss Coalton and its use at two commercial organizations."))))

#+()(define-text :tourism )

(define-registration (:active)

  (:kind "ELS Early Regular" :price 120 :status :active
   :description "ELS conference package (talks, coffee breaks, banquet).")
  (:kind "ELS Early Student" :price 60 :status :active
   :description "Same as \"ELS Early Regular\", student price (requires student ID copy via e-mail).")

  (:kind "ELS Late Regular" :price 160 :status :inactive
   :description "ELS conference package (talks, coffee breaks, banquet).")
  (:kind "ELS Late Student" :price 90 :status :inactive
   :description "Same as \"ELS Late Regular\", student price (requires student ID copy via e-mail).")

  (:option "weekend" :status :inactive
   :price 50 :description "Weekend excursion (see the Tourism section below)")
  (:option "weekend-guest" :status :inactive
   :price 50 :description "Weekend excursion guest")
  (:option "banquet-guest" :status :active
   :price 30 :description "Banquet Guest"))


;;; Programme

#+()(define-programme-day @2025-05-12T00:00:00+02:00
  @08:30:00 (:title "Registration, badges, t-shirts, meet and greet"
             :role (:organization))
  @09:45:00 (:title "Welcome messages and announcements"
             :role (:organization))
  @10:00:00 (:title "Keynote: The Need for Symbolic AI Programming Languages in the Public Sector"
             :role (:talk :keynote)
             :speakers ("Markus Triska")
             :description
             "Rising expectations in public IT-services lead to increasing implementation complexity at a time where many of the programmers who initially built these services retire. The cost and complexity of building reliable e-government services also depend on the used programming languages. We would greatly benefit from better technologies to create and maintain IT-services that let us flexibly state and reason about laws and regulations on which administrations are based. Our recent experiences in the department V/B/5 of the Austrian Federal Ministry of Finance indicate that symbolic AI programming languages such as Lisp and Prolog are well suited for this purpose. The e-government service Grants4Companies is a recent application of such technologies in the public sector, and is made available to companies via the Austrian Business Service Portal.")
  @11:00:00 (:title "Coffee Break"
             :role (:break))
  @11:30:00 (:title "Keynote: Is the Hype Cycle Real?"
             :role (:talk :keynote)
             :speakers ("Stavros Macrakis")
             :description "Some technologies have grown steadily and undramatically over the years; others have been transient successes, or have been relegated to narrow application areas. How can we benefit from the long-term perspective to understand what might happen with today's most hyped technologies?")
  @12:30:00 (:title "Lunch"
             :role (:break))
  @14:00:00 (:title "Research Paper: R7RS Large Status and Progress"
             :role (:talk)
             :speakers ("Daphne Preston-Kendal"))
  @14:30:00 (:title "Demonstration: The Medley Interlisp Revival"
             :role (:talk :demo)
             :speakers ("Andrew Sengul"))
  @15:00:00 (:title "Demonstration: Lisp Query Notation—A DSL for Data Processing"
             :role (:talk :demo)
             :speakers ("Anders Hoff"))
  @15:30:00 (:title "Coffee Break"
             :role (:break))
  @16:00:00 (:title "Research Paper: Grants4Companies: The Common Lisp PoC"
             :role (:talk)
             :speakers ("Philipp Marek" "Bjoern Lellmann" "Markus Triska"))
  @16:30:00 (:title "Demonstration: An Introduction to Array Programming in Petalisp"
             :role (:talk :demo)
             :speakers ("Marco Heisig"))
  @17:00:00 (:title "Lightning Talks"
             :role (:talk))
  @18:30:00 (:title "Conference dinner (on site -- until 20:30)"
             :role (:break)))

#+()(define-programme-day @2025-05-13T00:00:00+02:00
  @08:30:00 (:title "Registration, badges, t-shirts, meet and greet"
             :role (:organization))
  @09:30:00 (:title "Keynote: Bias is a bug; but not as we know it!"
             :role (:talk :keynote)
             :speakers ("Julian Padget")
             :description "Algorithmic model construction is now accepted technology. Using some data to train a model is commonplace and machine learning has percolated down to the first-year CS curriculum. Testing such models is quite difficult, because conventional approaches learned from conventional programming provide only limited coverage. Furthermore, metrics offer big picture performance but may disguise edge cases. One significant worry is that such systems exhibit differential treatment of individuals or groups because the algorithm has identified an attribute relationship in the data that does not align with the system's business requirements. This is typically referred to (wrongly!) as a `biased' output. We start by examining the language of bias in algorithmic models and argue that (unwanted) bias is a (latent) bug. However, this bug typically has complex causes, as well as the possibility of morphing over time into bias that does align with the requirements. In consequence, we will continue by exploring how consideration of bias can be incorporated into the system life cycle and put forward some strategies for thinking about bias-related debugging.")
  @10:30:00 (:title "Coffee Break"
             :role (:break))
  @11:00:00 (:title "Research Paper: Adaptive Hashing"
             :role (:talk)
             :speakers ("Gábor Melis"))
  @11:30:00 (:title "Research paper: Period Information Extraction: A DSL Solution to a Domain Problem"
             :role (:talk)
             :speakers ("Arthur Evensen"))
  @12:00:00 (:title "Demonstration: the Quickref Cohort"
             :role (:talk :demo)
             :speakers ("Didier Verna"))
  @12:30:00 (:title "Lunch"
             :role (:break))
  @14:00:00 (:title "Research paper: py4cl2-cffi: Using CPython's C API to Call Python Callables from Common Lisp"
             :role (:talk)
             :speakers ("Shubhamkar Ayare"))
  @14:30:00 (:title "Demonstration: Qlot, a Project-Local Library Installer"
             :role (:talk :demo)
             :speakers ("Eitaro Fukamachi"))
  @15:00:00 (:title "Demonstration: Murmel and JMurmel"
             :role (:talk)
             :speakers ("Robert Mayer" "Thomas Östreicher"))
  @15:30:00 (:title "Coffee Break"
             :role (:break))
  @16:00:00 (:title "Lightning Talks"
             :role (:talk)))

#+()(define-proceedings "../static/proceedings/2025.pdf")
