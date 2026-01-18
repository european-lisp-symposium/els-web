(in-package #:els-web-editions)
(define-edition "2026")
(in-package "2026")

(define-date "Submission deadline" @2026-03-15)
(define-date "Author notification" @2026-04-12)
(define-date "Final papers" @2026-04-26)
(define-date "Early registration deadline" @2026-05-03)

(define-date "Conference start" @2026-05-11)
(define-date "Conference end" @2026-05-12)

(define-text :announcement
  (:div :class "announcement" "The conference is announced!"))

#+()(define-text :additional-info
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
  :organization "Genworks"
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
  :Address (:street "4th floor, Długa 72"
            :post-code "31-146"
            :city "Kraków"
            :country "Poland")
  :map t)

#+()(define-location ""
  :role (:hotel)
  :website ""
  :address (:street ""))


#+()(define-text :reachability)

(define-sponsor keepit
  :website "https://www.keepit.com/"
  :logo "../static/logos/keepit.jpg")


#+()(define-text :keynotes
  (:ul
   (:li
    (:b "Title")
    (:i  " -- Author")
    (:p "Abstract"))))


#+()(define-text :tourism )

(define-registration (:inactive)
  (:kind "ELS Early Regular" :price 120 :status :inactive
   :description "ELS conference package (talks, coffee breaks, banquet).")
  (:kind "ELS Early Student" :price 60 :status :inactive
   :description "Same as \"ELS Early Regular\", student price (requires student ID copy via e-mail).")

  (:kind "ELS Late Regular" :price 160 :status :active
   :description "ELS conference package (talks, coffee breaks).")
  (:kind "ELS Late Student" :price 90 :status :active
   :description "Same as \"ELS Late Regular\", student price (requires student ID copy via e-mail).")

  (:option "weekend" :status :inactive
   :price 50 :description "Weekend excursion (see the Tourism section below)")
  (:option "weekend-guest" :status :inactive
   :price 50 :description "Weekend excursion guest")
  (:option "banquet-guest" :status :inactive
   :price 30 :description "Banquet Guest"))


;;; Programme

#+()(define-programme-day @2026-05-11T00:00:00+01:00
  @08:30:00 (:title "Registration, badges, meet and greet"
             :role (:organization))
  @09:45:00 (:title "Welcome messages and announcements"
             :role (:organization))
  @10:00:00 (:title "Keynote - Project Oberon: A Late Appraisal."
             :role (:talk)
             :speakers ("Jürg Gutknecht, prof. em. ETH Zürich"))
  @11:15:00 (:title "Coffee Break"
             :role (:break))
  @11:45:00 (:title "Experience Report - Growing Your Own Lispers"
             :role (:talk)
             :speakers ("Michał Herda" "Wojciech Gac"))
  @12:30:00 (:title "Lunch"
             :role (:break))
  @14:00:00 (:title "Keynote - Toward safe, flexible, and efficient software in Common Lisp"
             :role (:talk)
             :speakers ("Robert Smith"))
  @15:15:00 (:title "Coffee Break"
             :role (:break))
  @15:45:00 (:title "Research Paper - The Lisp in the Cellar (remote)"
             :role (:talk)
             :speakers ("Pierre-Evariste Dagand" "Frédéric Peschanski"))
  @16:30:00 (:title "Research Paper - Programming with Useful Quantifiers"
             :role (:talk)
             :speakers ("Jim Newton"))
  @17:15:00 (:title "Short Break"
             :role (:break))
  @17:30:00 (:title "Lightning Talks"
             :role (:talk))
  @19:00:00 (:title "Banquet (Group 1)"
             :role (:break))
  @20:00:00 (:title "Banquet (Group 2)"
             :role (:break)))

#+()(define-programme-day @2026-05-12T00:00:00+01:00
  @08:30:00 (:title "Registration, badges, meet and greet"
             :role (:organization))
  @09:30:00 (:title "Announcements"
             :role (:organization))
  @09:45:00 (:title "Keynote - Is Lisp Still Relevant in the New Age of AI?"
             :role (:talk)
             :speakers ("Anurag Mendhekar, Paper Culture LLC")
             :website "../static/2025/mendhekar.pdf")
  @10:45:00 (:title "Coffee Break"
             :role (:break))
  @11:15:00 (:title "Research Paper - A Brief Perspective on Deep Learning Using Common Lisp"
             :role (:talk)
             :speakers ("Martin Atzmueller"))
  @12:00:00 (:title "Lunch"
             :role (:break))
  @13:30:00 (:title "Experience Report - Porting the Steel Bank Common Lisp
  Compiler and Runtime to the Nintendo Switch"
             :role (:talk)
             :speakers ("Charles Zhang" "Yukari Hafner"))
  @14:15:00 (:title "Round Table - Lisp and AI"
             :role (:talk)
             :speakers ("Anurag Mendhekar"
                        "Martin Atzmueller"
                        "Vsevolod Domkin"
                        "Gábor Melis"
                        "Dave Cooper"))
  @15:15:00 (:title "Coffee Break"
             :role (:break))
  @15:45:00 (:title "Lightning Talks"
             :role (:talk))
  @16:45:00 (:title "Hackathon"
             :role (:talk)
             :speakers ("Everyone interested")))

#+()(define-proceedings "../static/proceedings/2026.pdf")
