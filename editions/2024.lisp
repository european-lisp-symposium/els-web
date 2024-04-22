(in-package #:els-web-editions)
(define-edition "2024")
(in-package "2024")

#+()(define-date "Submission deadline ** EXTENDED ** " @2024-02-25)
#+()(define-date "Author notification" @2024-03-24)
(define-date "Final papers" @2024-04-21)
(define-date "Early registration deadline" @2024-04-14)

(define-date "Conference start" @2024-05-06)
(define-date "Conference end" @2024-05-07)

(define-text :announcement
  (:div :class "announcement"
        "Full programme announced!")
  (:div :class "announcement" "Note: SBCL25 is happening on May 2-3 (just before the weekend) in Vienna, too!"))

#+()(define-text :additional-info
  (:p "There are several ways for you to join ELS online:"
      (:ul (:li "<b>Via Twitch</b>: You join <a href=\"https://twitch.tv/elsconf\">https://twitch.tv/elsconf</a> and enjoy the show.  If you have a Twitch account, you can also use the text chat to communicate with other participants or the authors.  You can also follow the elsconf user on Twitch to receive a notification when each day's broadcast starts."))
      (:ul (:li "<b>Via IRC</b>: You join the #els2024 channel on <a href=\"https://web.libera.chat/#els2024\">libera.chat</a>.  Messages from this channel are automatically forwarded to the Twitch chat, and vice versa."))
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

  (:p "This year, we suggest an emphasis on best practices, approaches, and technologies for building highly recursive and self-adapting architectures, in particular for AI, ML, tool integration and instruction generation, using dynamic programming languages.")

  (:p "You can upload submissions on <a href=\"https://www.easychair.org/conferences/?conf=els2024\">EasyChair</a>.")

  (:p "All submissions should be formatted following the ACM SIGS guidelines and include <a href=\"http://www.acm.org/about/class/2012\">ACM Computing Classification System 2012</a> concepts and terms. Appropriate TeX and Word templates can be found on the <a href=\"https://www.acm.org/publications/proceedings-template\">ACM publications page</a>.")

  (:p "LaTeX submissions are encouraged. For LaTeX submissions, please use the SIGCONF style (two columns, reasonably compact). This is done like this: <code>\\usepackage[format=sigconf]{acmart}</code>." )

  (:p "Please use the <a href=\"http://dl.acm.org/ccs/ccs.cfm\">ACM Computing Classification System site</a> to generate the CCS codes. In order to add a concept, navigate to it using the boxes, and select \"Assign This CCS Concept\" on the left side. You should select one high relevance concept, and up to four medium or low relevance concepts. Once you are done, simply copy the CCS display into the Word document. If you are using TeX, select \"View CCS TeX Code\" and copy the displayed code into your TeX file. The templates should already include sections with bogus CCS codes, which you can simply replace with your own.")

  (:p "If you are using the correct style and classification system, your document will contain a section called <code>CCS Concepts</code> and include terms formatted like <code>•Information systems → Web applications</code>. If your document includes a section titled <code>Categories and Subject Descriptors</code> with things in a style like <code>D.2.3 [Software Engineering]: Coding Tools and Techniques</code>, then you have to update to the new 2012 system and templates as linked above. If the CCS section does not show up in the TeX generated PDF at all, make sure that your TeX file includes the <code>\\printccsdesc</code> command below the abstract."))

(define-person (:family-name "Verna" :given-name "Didier")
  :website "https://www.lrde.epita.fr/~didier/"
  :role (:organizing-chair))

(define-person (:family-name "Attardi"
                :given-name "Giuseppe")
  :role (:programme-chair)
  :organization "University of Pisa"
  :address (:country "Italy"))

(define-person (:family-name "Marek" :given-name "Philipp")
  :role (:local-chair)
  :organization "BRZ"
  :address (:city "Vienna" :country "Austria"))

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

(define-person (:family-name "Herda"
                :given-name "Michał")
  :role (:virtualization)
  :address (:country "Poland"))


(define-person (:given-name "Ambrose" :family-name "Bonnaire-Sergeant")
  :role (:committee)
  :organization "Untypable LLC")
(define-person (:given-name "Frédéric" :family-name " Peschanski")
  :role (:committee)
  :organization "UPMC/LIP6")
(define-person (:given-name "Jay" :family-name " McCarthy")
  :role (:committee)
  :organization "UMass Lowell")
(define-person (:given-name "Jim" :family-name " Newton")
  :role (:committee)
  :organization "EPITA Research Lab")
(define-person (:given-name "Kai" :family-name " Selgrad")
  :role (:committee)
  :organization "OTH Regensburg")
(define-person (:given-name "Mark" :family-name " Evenson")
  :role (:committee)
  :organization "not.org")
(define-person (:given-name "Michael" :family-name " Raskin")
  :role (:committee)
  :organization "LaBRI/CNRS UMR 5800, University of Bordeaux")
(define-person (:given-name "Robert" :family-name " Smith")
  :role (:committee)
  :organization "HRL Laboratories LLC")
(define-person (:given-name "Robert P." :family-name " Goldman")
  :role (:committee)
  :organization "SIFT LLC")
(define-person (:given-name "Stefan" :family-name " Monnier")
  :role (:committee)
  :organization "Université de Montréal")

(define-person (:family-name "Padget"
                :given-name "Julian")
  :organisation "University of Bath"
  :address (:country "UK")
  :role (:speaker :keynote)
  :description "Algorithmic model construction is now accepted technology.
                Using some data to train a model is commonplace and machine
                learning has percolated down to the first-year CS curriculum.
                Testing such models is quite difficult, because conventional
                approaches learned from conventional programming provide only
                limited coverage. Furthermore, metrics offer big picture
                performance but may disguise edge cases. One significant worry
                is that such systems exhibit differential treatment of
                individuals or groups because the algorithm has identified an
                attribute relationship in the data that does not align with
                the system's business requirements. This is typically referred
                to (wrongly!) as a `biased' output. We start by examining the
                language of bias in algorithmic models and argue
                that (unwanted) bias is a (latent) bug. However, this bug
                typically has complex causes, as well as the possibility of
                morphing over time into bias that does align with the
                requirements. In consequence, we will continue by exploring
                how consideration of bias can be incorporated into the system
                life cycle and put forward some strategies for thinking about
                bias-related debugging.")

(define-person (:family-name "Macrakis"
                :given-name "Stavros")
  :organisation "Amazon OpenSearch"
  :role (:speaker :keynote)
  :description "Some technologies have grown steadily and undramatically over
                the years; others have been transient successes, or have been
                relegated to narrow application areas. How can we benefit from
                the long-term perspective to understand what might happen with
                today's most hyped technologies?")

(define-person (:family-name "Triska"
                :given-name "Markus")
  :organisation "Austrian Federal Ministry of Finances"
  :role (:speaker :keynote)
  :description "Rising expectations in public IT-services lead to increasing
                implementation complexity at a time where many of the
                programmers who initially built these services retire. The
                cost and complexity of building reliable e-government services
                also depend on the used programming languages. We would
                greatly benefit from better technologies to create and
                maintain IT-services that let us flexibly state and reason
                about laws and regulations on which administrations are based.
                Our recent experiences in the department V/B/5 of the Austrian
                Federal Ministry of Finance indicate that symbolic AI
                programming languages such as Lisp and Prolog are well suited
                for this purpose. The e-government service Grants4Companies is
                a recent application of such technologies in the public
                sector, and is made available to companies via the Austrian
                Business Service Portal.")



(define-location "ELS in the Sky Lounge of University Vienna, in collaboration with the Department for European, International and Comparative Law"
  :role (:conference)
  :photo "https://event.univie.ac.at/fileadmin/_processed_/csm_Aussenansicht_OMP_3_f71b0260cd.jpg"
  :website "https://event.univie.ac.at/en/venue-management/locations-and-rooms/oskar-morgenstern-platz-1/sky-lounge/"
  :address (:street "Oskar Morgenstern Platz 1"
            :post-code "1090"
            :city "Vienna"
            :country "Austria")
  ;; showing a live google map means transferring personal data (IP
  ;; addresses!) to the USA, which is being legally challenged, with decisions
  ;; already given
  :map nil)

(define-text :reachability
  (:p "ELS will happen in the "
   (:a :href "https://osm.org/go/0JrJGowI?m="
    "Sky Lounge")
   " of the University of Vienna; that's only a few minutes walk from the underground line U4, stations \"Rossauer Lände\" or \"Schottenring\".")
  (:p "SBCL25 will be held at "
   (:a :href "https://osm.org/go/0JrJKLvk?m="
    "the BRZ")
   " (but we're handling the registrations), also on the U4, near \"Landstraße\". "
   "Please have a look at "
   (:a :href "https://sbcl.org/sbcl25/" "this page")
   " for more information."))


(define-sponsor bmf
  :website "https://www.bmf.gv.at/"
  :logo "../static/logos/bmf.png")

#+()(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

(define-sponsor siscog
  :website "https://www.siscog.pt/"
  :logo "../static/logos/siscog.png")

#+()(define-sponsor ravenpack
  :website "https://www.ravenpack.com/"
  :logo "../static/logos/ravenpack.jpg")

#+()(define-sponsor sigplan
  :website "http://www.sigplan.org/"
  :logo "../static/logos/SIGPLAN.png")

#+()(define-sponsor acm
  :website "http://www.acm.org/"
  :logo "../static/logos/ACM.png")


#+()(define-text :keynotes
  (:ul
   (:li
    (:b "Bias is a bug; but not as we know it!")
    (:i  " -- Julian Padget")
    (:p "Algorithmic model construction is now accepted technology.
         Using some data to train a model is commonplace and machine learning
         has percolated down to the first-year CS curriculum. Testing such
         models is quite difficult, because conventional approaches learned
         from conventional programming provide only limited coverage.
         Furthermore, metrics offer big picture performance but may disguise
         edge cases. One significant worry is that such systems exhibit
         differential treatment of individuals or groups because the algorithm
         has identified an attribute relationship in the data that does not
         align with the system's business requirements. This is typically
         referred to (wrongly!) as a `biased' output. We start by examining
         the language of bias in algorithmic models and argue that (unwanted)
         bias is a (latent) bug. However, this bug typically has complex
         causes, as well as the possibility of morphing over time into bias
         that does align with the requirements. In consequence, we will
         continue by exploring how consideration of bias can be incorporated
         into the system life cycle and put forward some strategies for
         thinking about bias-related debugging.")
    (:p (:i (:small "Julian started working with Lisp in the 1980s with stints
                     at IBM (Lisp/VM) and Utah (Portable Standard Lisp) while
                     also working on applications in computer algebra - Reduce
                     and Scratchpad (later called Axiom) - before contributing
                     to the design of EuLisp and to ISO Lisp standardisation.
                     In the mid 1990s he began to focus on multiagent systems
                     and then on the design of normative frameworks to guide
                     agent decision making. Recent work includes the use of
                     inductive logic programming for the automated revision of
                     norms, value engineering in socio-technical systems and
                     the development of frameworks for agents on HPC and
                     agents on the web. Cross-disciplinary research includes
                     power systems engineering, automotive systems, proteomics
                     and AI regulation, as well as participation in
                     standardisation at ISO and IEEE."))))
   (:li
    (:b "Is the hype cycle real?")
    (:i " -- Stavros Macrakis")
    (:p "Some technologies have grown steadily and undramatically over the
         years; others have been transient successes, or have been relegated
         to narrow application areas. How can we benefit from the long-term
         perspective to understand what might happen with today's most hyped
         technologies?")
    (:p (:i (:small "Stavros Macrakis learned Lisp in 1969. In the 70s, he was
                     a member of the Macsyma symbolic algebra group at MIT,
                     and he now contributes to its open source version,
                     Maxima. He has spent most of his career as a product
                     manager, at OSF, Lycos, FAST, GLG, and Google. Now in the
                     Amazon OpenSearch group, he is responsible for Search."))))
   (:li
    (:b "The Need for Symbolic AI Programming Languages in the Public Sector")
    (:i " -- Markus Triska")
    (:p "Rising expectations in public IT-services lead to increasing
         implementation complexity at a time where many of the programmers who
         initially built these services retire. The cost and complexity of
         building reliable e-government services also depend on the used
         programming languages. We would greatly benefit from better
         technologies to create and maintain IT-services that let us flexibly
         state and reason about laws and regulations on which administrations
         are based. Our recent experiences in the department V/B/5 of the
         Austrian Federal Ministry of Finance indicate that symbolic AI
         programming languages such as Lisp and Prolog are well suited for
         this purpose. The e-government service Grants4Companies is a recent
         application of such technologies in the public sector, and is made
         available to companies via the Austrian Business Service Portal.")
    (:p (:i (:small "Markus Triska is deputy department head of department
                     V/B/5 (e-Government for businesses) in the Austrian
                     Federal Ministry of Finance. As a delegate to ISO/IEC
                     JTC1/SC22/WG17 and ISO/IEC JTC1/SC42, he contributes to
                     the Prolog ISO standard and to the standardisation of AI
                     technologies. He has made several contributions to GNU
                     Emacs and to free Prolog systems."))))))

(define-text :tourism
  (:p (:b "Public transport information")
   (:p "There are " (:b "train lines from/to the airport")
    "; the special \"" (:i "CAT") "\" (\"" (:i "City Airport Train") "\") costs some more (about 5x) but takes about the same time, so I recommend to avoid it and use the normal train lines instead.")
   (:p "These trains go to \"" (:i "Hauptbahnhof") "\" (U1, red) or later on \"" (:i "Meidling") "\" (U6, brown); or, the other main direction is to \"Landstraße\" (U3, U4).")
   (:p "If you use day/week/etc. tickets for Vienna you can tell that to the ticket machine (there'll be a button \"" (:i "I have a ticket for Vienna") "\"), so you only need to pay for the outside-of-Vienna-half of the ride, that's only €2,00. Coins recommended ;)")
   (:p "Vienna has good "
    (:a :href "https://www.wienerlinien.at/fahrpl%C3%A4ne"
     "public transportation")
    ". "
    "Here's "
    (:a :href "../static/2024/SVP.pdf" :title "Vienna public transport graph, PDF" "a PDF")
    " showing only the underground and railways -- busses and trams are not included! "
    "The android app " (:a :href "https://transportr.app/" "Transportr") " (FDroid, Google Play) supports " (:i "ÖBB") " and " (:i "Wiener Linien") ".")
   (:p
    "My recommendation is to buy "
    (:a :href "https://www.wienerlinien.at/zeitkarten" " day tickets and/or a 72-hour and/or 7-day tickets")
    " (depending on how long you stay); this is much easier and cheaper than paying for every individual ride. You can buy these at the ticket automats at the airport already.")
   (:p "Please note that there are " (:u "week") " and " (:u "7-day") " tickets -- the \"" (:i "week tickets") "\" always start on Monday!")
   (:p "There's even a 31-days ticket."))
  (:p (:b "Some events at around the time of the conference may be of interest.")
   (:p "May 1" (:sup "st") " is a public holiday in Austria, see eg. "
    (:a :href "https://www.stadt-wien.at/veranstaltungen/1-mai.html"
     "https://www.stadt-wien.at/veranstaltungen/1-mai.html") ".")
   (:p "Vienna has quite "
    (:a :href "https://www.khm.at/en/" "a") " "
    (:a :href "https://www.technischesmuseum.at/en" "few") " "
    (:a :href "https://www.nhm-wien.ac.at/en" "museums")
    " and other "
    (:a :href "https://www.drittemanntour.at/en/index.html" "underworldly")
    " "
    (:a :href "https://www.hausdermusik.com/en/" "(interesting!)")
    " attractions; here's an "
    (:a :href "https://events.wien.info/de/?df=2024-04-29&dt=2024-05-08&lt=-1"
     "event calender")
    " for the time range around ELS (and SBCL25).")
   (:p "The tourism portal is "
    (:a :href "https://www.wien.info/en" "https://www.wien.info/en")
    "."))
  (:p (:b "Weekend activity for May 5" (:sup "th"))
   (:ul
    (:li "Meeting in Vienna")
    (:li "Public transport to Hinterbrühl (fare outside Vienna is organized)")
    (:li "Visiting \"" (:i "Seegrotte") "\", "
     (:a :href "http://seegrotte.at/en/mystische-erlebnisse-english/"
      "Europe's largest underground lake"))
    (:li "Lunch (a few menues organized, including vegetarian)")
    (:li "Public transport back to Vienna")
    (:li "Guided tour through the "
     (:a :href "https://en.wikipedia.org/wiki/Vienna_Observatory"
      "Vienna Observatory")))))


(define-registration (:active)

  (:kind "ELS+SBCL Early Regular" :price 150 :status :active
   :description "Full conference package (talks, coffee breaks, banquet, T-Shirt).")
  (:kind "ELS+SBCL Early Student" :price 70 :status :active
   :description "Same as \"ELS+SBCL Early Regular\", student price (requires student ID copy via e-mail).")
  (:kind "ELS (no SBCL) Early Regular" :price 120 :status :active
   :description "ELS conference package (talks, coffee breaks, banquet, T-Shirt).")
  (:kind "ELS (no SBCL) Early Student" :price 60 :status :active
   :description "Same as \"ELS (no SBCL) Early Regular\", student price (requires student ID copy via e-mail).")
  (:kind "SBCL (no ELS) Early Regular" :price 40 :status :active
   :description "SBCL workshop package (talks, coffee breaks, T-Shirt).")
  (:kind "SBCL (no ELS) Early Student" :price 20 :status :active
   :description "Same as \"SBCL (no ELS) Early Regular\", student price (requires student ID copy via e-mail).")

  (:kind "ELS+SBCL Late Regular" :price 190 :status :inactive
   :description "Full conference package (talks, coffee breaks, banquet, T-Shirt).")
  (:kind "ELS+SBCL Late Student" :price 110 :status :inactive
   :description "Same as \"ELS+SBCL Late Regular\", student price (requires student ID copy via e-mail).")
  (:kind "ELS (no SBCL) Late Regular" :price 160 :status :inactive
   :description "ELS conference package (talks, coffee breaks, banquet, T-Shirt).")
  (:kind "ELS (no SBCL) Late Student" :price 90 :status :inactive
   :description "Same as \"ELS (no SBCL) Late Regular\", student price (requires student ID copy via e-mail).")
  (:kind "SBCL (no ELS) Late Regular" :price 50 :status :inactive
   :description "SBCL workshop package (talks, coffee breaks, T-Shirt).")
  (:kind "SBCL (no ELS) Late Student" :price 30 :status :inactive
   :description "Same as \"SBCL (no ELS) Late Regular\", student price (requires student ID copy via e-mail).")

  (:option "weekend" :status :active
   :price 50 :description "Weekend excursion (see the Tourism section below)")
  (:option "weekend-guest" :status :active
   :price 50 :description "Weekend excursion guest")
  (:option "banquet-guest" :status :active
   :price 30 :description "Banquet Guest"))


;;; Programme

(define-programme-day @2024-05-06T00:00:00+02:00
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
  @15:00:00 (:title "Research Paper: Lisp Query Notation—A DSL for Data Processing"
             :role (:talk)
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

(define-programme-day @2024-05-07T00:00:00+02:00
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

#+()(define-proceedings "../static/proceedings/2024.pdf")
