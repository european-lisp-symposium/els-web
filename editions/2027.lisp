(in-package #:els-web-editions)
(define-edition "2027")
(in-package "2027")

(define-date "Submission deadline" @2027-03-21)
(define-date "Author notification" @2027-04-18)
(define-date "Final papers" @2027-05-02)
#+()(define-date "Early registration deadline" @2026-05-03)

(define-date "Conference start" @2027-05-24)
(define-date "Conference end" @2027-05-25)

(define-text :announcement
  (:div :class "announcement" "ELS is 20 years old!"))

#+()(define-text :additional-info
  (:p "There are several ways for you to join ELS online:"
      (:ul (:li "<b>Via Twitch</b>: You join <a href=\"https://twitch.tv/elsconf\">https://twitch.tv/elsconf</a> and enjoy the show.  If you have a Twitch account, you can also use the text chat to communicate with other participants or the authors.  You can also follow the elsconf user on Twitch to receive a notification when each day's broadcast starts."))
      (:ul (:li "<b>Via IRC</b>: You join the #elsconf channel on <a href=\"https://web.libera.chat/#elsconf\">libera.chat</a>.  Messages from this channel are automatically forwarded to the Twitch chat, and vice versa."))
      (:ul (:li "<b>Via Jitsi</b>: The breaks take place on <a href=\"https://meet.common-lisp.net/els\">Jitsi</a> (a video chat application that runs in any browser).")))
  (:p "The timezone of our schedule is UTC+2. The videos of the streams will
  stay online for two weeks on Twitch, but will also be available on our <a href=\"https://www.youtube.com/@EuropeanLispSymposium\">YouTube channel</a>. See you online!"))

(define-text :submissions
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

(define-person (:family-name "Gac"
                :given-name "Wojciech")
  :role (:programme-chair)
  :organization "Keepit"
  :address (:country "Poland"))

(define-person (:family-name "Rohrer"
                :given-name "Marc")
  :role (:local-chair)
  :organization "Universitätsklinikum Ulm"
  :address (:country "Germany"))

#+()(define-person (:family-name "Hafner"
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


#+()(define-person (:family-name ""
                :given-name "")
  :organization ""
  :address (:country "")
  :role (:speaker :keynote)
  :description "")


#+()(define-person (:family-name ""
                :given-name "")
      :role (:committee)
      :address (:country ""))


(define-location "University of Ulm, Multimedia room (2059)"
  :role (:conference)
  :photo "https://upload.wikimedia.org/wikipedia/commons/c/c9/Uniulmnord.jpg?utm_source=en.wikipedia.org&utm_campaign=imageinfo&utm_content=original"
  :website "https://www.uni-ulm.de/einrichtungen/kiz/weiteres/campus-navigation/hoersaalfinder/multimediaraum-n27/n27-2059-multimediaraum/"
  :Address (:street "Gebäude N27 (Ebene EG / Erdgeschoss), Meyerhofstraße 1"
            :post-code "89081"
            :city "Ulm"
            :country "Germany")
  :map t)

#+()(define-text :reachability
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


(define-sponsor uulm
  :website "https://www.uni-ulm.de/"
  :logo "../static/logos/uulm.png")

#+()(define-sponsor siscog
  :website "https://www.siscog.pt/"
  :logo "../static/logos/siscog.png")


#+()(define-text :keynotes
  (:ul
   (:li
    (:b "")
    (:i  " -- ")
    (:p ""))
   (:li
    (:b "")
    (:i  " -- ")
    (:p ""))))


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

#+()(define-text :tourism
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

#+()(define-programme-day @2027-05-11T00:00:00+02:00
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

#+()(define-programme-day @2027-05-12T00:00:00+02:00
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
;;  @16:30:00 (:title "New Deep Learning Receiver Operating Characteristic Formulation Made with Lisp"
;;             :role (:talk)
;;             :speakers ("Jacob 'Screwlisp' Pouw-Waas"))
  @16:30:00 (:title "Short Break"
             :role (:break))
  @16:45:00 (:title "Lightning Talks"
             :role (:talk)))

#+()(define-proceedings "../static/proceedings/2027.pdf")
