(in-package #:els-web-editions)
(define-edition "2021")
(in-package "2021")

;;(define-date "Submission deadline" @2021-03-07)
(define-date "Extended deadline" @2021-03-14)
(define-date "Author notification" @2021-04-11)
;;(define-date "Early registration deadline" @2020-04-01)
(define-date "Final papers" @2021-04-23)

(define-date "Conference start" @2021-05-03)
(define-date "Conference end" @2021-05-04)

(define-text :announcement
  #+()(:div :class "announcement"
        "The " (:a :href "../static/proceedings/2021.pdf" "proceedings") " are now online!")
  (:div :class "announcement"
        "The conference will be streamed on "
        (:a :href "https://twitch.tv/elsconf" "Twitch")
        ". More info below.")
  #+()(:div :class "announcement" "Preliminary programme and keynote abstracts now online.")
  #+()(:div :class "announcement"
        "Registration is now open! Early bird deadline: XXX.")
  #+()(:div :class "announcement" "Paper sumbission deadline extended")
  #+()(:div :class "announcement" "ACM In-Cooperation-With status renewed!")
  #+()(:div :class "announcement" "Submissions being accepted now.")
  #+()(:div :class "announcement" "Second invited speaker confirmed! XXX.")
  #+()(:div :class "announcement" "First invited speaker confirmed! XXX.")
  (:div :class "announcement" "The conference is being organized. Stay tuned for updates!"))

(define-text :additional-info
  (:p "This year again, ELS will happen online and will be streamed on Twitch:"
     (:a :href "https://twitch.tv/elsconf" "https://twitch.tv/elsconf"))
  (:p "You will need a twitch account to participate in the accompanying live chat, where the Q&A will take place in the end of each talk. The chat will be always on, so you could chat during the breaks as well. There will be no video or audio for the participants. For the online event there is no other registration, and the event is free. If you follow the user elsconf on twitch you should get an email when each day's broadcast is online, 15 minutes before we actually start. During these 15 minutes just a standby image will be shown. All times in the schedule are CEST, but the video of the streams will stay online with the chat attached so you can follow the Q&As. See you soon online!"))

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

  (:p "We invite submissions in the following forms:")

  (:ul (:li "<b>Papers</b>: Technical papers of up to 8 pages that describe original results or explain known ideas in new and elegant ways.")
       (:li "<b>Demonstrations</b>: Abstracts of up to 4 pages for demonstrations of tools, libraries, and applications.")
       (:li "<b>Tutorials</b>: Abstracts of up to 4 pages for in-depth presentations about topics of special interest for at least 90 minutes and up to 180 minutes."))

  (:p "You can upload submissions on <a href=\"https://www.easychair.org/conferences/?conf=els2021\">EasyChair</a>.")

  (:p "All submissions should be formatted following the ACM SIGS guidelines and include <a href=\"http://www.acm.org/about/class/2012\">ACM Computing Classification System 2012</a> concepts and terms. Appropriate TeX and Word templates can be found on the <a href=\"https://www.acm.org/publications/proceedings-template\">ACM publications page</a>.")

  (:p "LaTeX submissions are encouraged. For LaTeX submissions, please use the SIGCONF style (two columns, reasonably compact). This is done like this: <code>\\usepackage[format=sigconf]{acmart}</code>." )

  (:p "Please use the <a href=\"http://dl.acm.org/ccs/ccs.cfm\">ACM Computing Classification System site</a> to generate the CCS codes. In order to add a concept, navigate to it using the boxes, and select \"Assign This CCS Concept\" on the left side. You should select one high relevance concept, and up to four medium or low relevance concepts. Once you are done, simply copy the CCS display into the Word document. If you are using TeX, select \"View CCS TeX Code\" and copy the displayed code into your TeX file. The templates should already include sections with bogus CCS codes, which you can simply replace with your own.")

  (:p "If you are using the correct style and classification system, your document will contain a section called <code>CCS Concepts</code> and include terms formatted like <code>•Information systems → Web applications</code>. If your document includes a section titled <code>Categories and Subject Descriptors</code> with things in a style like <code>D.2.3 [Software Engineering]: Coding Tools and Techniques</code>, then you have to update to the new 2012 system and templates as linked above. If the CCS section does not show up in the TeX generated PDF at all, make sure that your TeX file includes the <code>\\printccsdesc</code> command below the abstract."))


;; persons

(define-person (:family-name "Verna"
                :given-name "Didier"))

(define-person (:family-name "Heisig"
                :given-name "Marco")
  :role (:programme-chair)
  :organization "FAU Erlangen-Nürnberg"
  :address (:country "Germany"))

(define-person (:family-name "Herda"
                :given-name "Michał")
  :role (:local-chair))

(define-person (:family-name "Evenson"
                :given-name "Mark")
  :role (:local-chair)
  :organization "RavenPack")

(define-person (:family-name "Dimitriou"
                :given-name "Ioanna")
  :role (:committee)
  :organization "Igalia"
  :address (:country "Germany"))

(define-person (:family-name "Durand"
                :given-name "Irène")
  :role (:committee)
  :organization "LaBRI University of Bordeaux"
  :address (:country "France"))

(define-person (:family-name "Emerson"
        :given-name "R. Matthew")
  :role (:committee)
  :organization "toughtstuff LLC"
  :address (:country "USA"))

(define-person (:family-name "Flatt"
                :given-name "Matthew")
  :role (:committee)
  :organization "University of Utah"
  :address (:country "USA"))

(define-person (:family-name "Godbout"
                :given-name "Jonathan")
  :role (:committee)
  :organization "Google"
  :address (:country "USA"))

(define-person (:family-name "Matos"
                :given-name "Paulo")
  :role (:committee)
  :organization "Igalia"
  :address (:country "Germany"))

(define-person (:family-name "McClain"
                :given-name "David")
  :role (:committee)
  :organization "SpectroDynamics LLC"
  :address (:country "USA"))

(define-person (:family-name "Monnier"
                :given-name "Stefan")
  :role (:committee)
  :organization "University of Montreal"
  :address (:country "Canada"))

(define-person (:family-name "Newton"
                :given-name "Jim")
  :role (:committee)
  :organization "EPITA Research Lab"
  :address (:country "France"))

(define-person (:family-name "Pitman"
                :given-name "Kent")
  :role (:committee)
  :organization "Harvard Medical School"
  :address (:country "USA"))

(define-person (:family-name "Rhodes"
                :given-name "Christophe")
  :role (:committee)
  :organization "Google"
  :address (:country "UK"))

(define-person (:family-name "Selgrad"
                :given-name "Kai")
  :role (:committee)
  :organization "OTH Regensburg"
  :address (:country "Germany"))

(define-person (:family-name "Shivers"
                :given-name "Olin")
  :role (:committee)
  :organization "Northeastern University"
  :address (:country "USA"))

(define-person (:family-name "Smith"
                :given-name "Robert")
  :role (:committee)
  :organization "HRL Laboratories"
  :address (:country "USA"))

(define-person (:family-name "Sperber"
                :given-name "Michael")
  :role (:committee)
  :organization "DeinProgramm"
  :address (:country "Germany"))

(define-person (:family-name "Ulu"
                :given-name "Evrim")
  :role (:committee)
  :organization "Istinye University"
  :address (:country "Turkey"))

(define-person (:family-name "Ó Nualláin"
                :given-name "Breanndán")
  :role (:committee)
  :organization "Machine Learning Programs"
  :address (:country "Netherlands"))


(define-person (:family-name "Lawson"
                :given-name "Andrew")
  :role (:speaker)
  :organization "RavenPack"
  :address (:country "Spain"))

(define-person (:family-name "Grinis"
                :given-name "Inna")
  :role (:speaker)
  :organization "RavenPack"
  :address (:country "Spain"))

;; pre-programme keynotes list.

(define-text :keynotes
    (:ul
     (:li (:b "Nada Amin") " (Harvard SEAS), Staged Relational Interpreters: Running Backwards, Faster")
     (:li (:b "Andrew Sorensen") " (Australian National University), Symbolic Expressions for Cyper-Physical Programming")
     (:li (:b "Inna Grinis and Andrew Lawson") "(RavenPack), Producing News Analytics and Turning them into Actionable Insights")))

(define-location "Online"
  :role (:conference)
  :address (:city "Everywhere")
  :map nil)

(define-registration (:inactive)
  (:kind "Early regular" :price 120 :status :active
   :description "Full conference package (talks, coffee breaks, banquet).")
  (:kind "Early student" :price 60 :status :active
   :description "Same as \"Early regular\", student price (requires student ID copy via e-mail).")
  (:kind "Regular" :price 160 :status :inactive
   :description "Full conference package (talks, coffee breaks, note: banquet out).")
  (:kind "Student" :price 90 :status :inactive
   :description "Same as \"Regular\", student price (requires student ID copy via e-mail).")
  (:option "banquet" :status :active
   :checked t :price 0 :description "Banquet")
  (:option "banquet-guest" :status :active
   :price 35 :description "Banquet guest")
  (:option "certificate" :price 0 :description "Certificate of attendance")
  (:option "proceedings" :price 0 :description "Printed proceedings")
  #+()(:option "excursion" :status :inactive
   :price 20 :description "Sunday excursion (details below)")
  #+()(:option "excursion-guest" :status :inactive
   :price 20 :description "Sunday excursion guest"))

#+()(define-sponsor acm
  :website "http://www.sigplan.org/"
  :logo "../static/logos/acm.svg")

(define-sponsor ravenpack
  :website "https://www.ravenpack.com/"
  :logo "../static/logos/ravenpack.jpg")

(define-sponsor epita
  :website "http://www.epita.fr/"
  :logo "../static/logos/epita.png")


;;; Programme
#+()(define-programme-day @2021-XX-XXT00:00:00+02:00
  @09:00:00 (:title "Broadcast start" :role (:organization))
  @09:15:00 (:title "Welcome message" :role (:organization))

  @09:30:00 (:title "Keynote: Producing News Analytics and Turning them into Actionable Insights"
             :role (:talk :keynote)
             :speakers ("Andrew Lawson" "Inna Grinis")
             :description "We will first look at the basics of RavenPack’s news analytics system, from incoming stories to outgoing analytics and the technology involved. We will then look at several examples of how RavenPack’s news volume, sentiment scores, events taxonomy, and connections functionality can be leveraged to create data insights that can be used to make more informed decisions in the finance industry and the corporate world."
             :website "../static/2021/ravenpack-slides-keynote.pdf")

  @10:30:00 (:title "Coffee Break" :role (:break))

  @11:00:00 (:title "XXX"
             :role (:talk)
             :speakers ("XXX")
             :website "../static/2021/XXX.pdf")

  @12:30:00 (:title "Lunch" :role (:break))

  @15:30:00  (:title "Coffee Break" :role (:break))

  @17:00:00  (:title "Lightning Talks" :role (:talk)))

#+()(define-proceedings "../static/proceedings/2021.pdf")
