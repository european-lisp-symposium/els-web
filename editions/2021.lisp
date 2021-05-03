(in-package #:els-web-editions)
(define-edition "2021")
(in-package "2021")

;;(define-date "Submission deadline" @2021-03-07)
;;(define-date "Extended deadline" @2021-03-14)
;;(define-date "Author notification" @2021-04-11)
;;(define-date "Early registration deadline" @2020-04-01)
;;(define-date "Final papers" @2021-04-23)

(define-date "Conference start" @2021-05-03)
(define-date "Conference end" @2021-05-04)

(define-text :announcement
  (:div :class "announcement"
        "The " (:a :href "../static/proceedings/2021.pdf" "proceedings") " are now online!")
  (:div :class "announcement"
        "The conference is being streamed on "
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
  #+()(:div :class "announcement" "The conference is being organized. Stay tuned for updates!"))

(define-text :additional-info
  (:p "There are several ways for you to join ELS:"
      (:ul (:li "<b>Via Twitch</b>: You join <a href=\"https://twitch.tv/elsconf\">https://twitch.tv/elsconf</a> and enjoy the show.  If you have a Twitch account, you can also use the text chat to communicate with other participants or the authors.  You can also follow the elsconf user on Twitch to receive a notification when each day's broadcast starts."))
      (:ul (:li "<b>Via IRC</b>: You join the #elsconf channel on <a href=\"https://freenode.net\">Freenode</a>.  Messages from this channel are automatically forwarded to the Twitch chat, and vice versa.  Note that /me messages don't work."))
      (:ul (:li "<b>Via VLC</b>: If you want to avoid Twitch, you can also receive the live stream via <a href=\"https://www.videolan.org/vlc/\">VLC</a>.  Using VLC and IRC, you can join ELS using only free software!"))
      (:ul (:li "<b>Via Jitsi</b>: The coffee breaks, lunch breaks, and social gatherings in the evenings take place on Jitsi (a video chat application that runs in any browser).  You can see a list of available Jitsi rooms <a href=\"https://els2021.common-lisp.net/everywhere/\">here</a>.")))
  (:p "The timezone of our schedule is CEST, but the video of the streams will stay online for you to watch later, too. See you online!"))

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
                :given-name "Didier")
  :role (:speaker))

(define-person (:family-name "Heisig"
                :given-name "Marco")
  :role (:programme-chair)
  :organization "FAU Erlangen-Nürnberg"
  :address (:country "Germany"))

(define-person (:family-name "Herda"
                :given-name "Michał")
  :role (:local-chair)
  :address (:country "Poland"))

(define-person (:family-name "Evenson"
                :given-name "Mark")
  :role (:local-chair :speaker)
  :address (:country "Austria")
  :organization "RavenPack")

(define-person (:family-name "Tugai"
                :given-name "Georgiy")
  :role (:local-chair)
  :organization "Configura"
  :address (:country "Sweden"))

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
  :role (:committee :speaker)
  :organization "EPITA Research Lab"
  :address (:country "France"))

(define-person (:family-name "Pitman"
                :given-name "Kent")
  :role (:committee)
  :organization "Harvard Medical School"
  :address (:country "USA"))

(define-person (:family-name "Rhodes"
                :given-name "Christophe")
  :role (:committee :speaker)
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

(define-person (:family-name "Amin"
                :given-name "Nada")
  :role (:speaker)
  :organization "Harvard SEAS"
  :photo "../static/2021/nada-amin.jpg"
  :address (:country "USA"))

(define-person (:family-name "Sorensen"
                :given-name "Andrew")
  :role (:speaker)
  :organization "Australian National University"
  :photo "../static/2021/andrew-sorensen.jpg"
  :address (:country "Australia"))

(define-person (:family-name "Lawson"
                :given-name "Andrew")
  :role (:speaker)
  :organization "RavenPack"
  :photo "../static/2021/andrew-lawson.jpg"
  :address (:country "Spain"))

(define-person (:family-name "Grinis"
                :given-name "Inna")
  :role (:speaker)
  :organization "RavenPack"
  :photo "../static/2021/inna-grinis.jpg"
  :address (:country "Spain"))

;; pre-programme keynotes list.

(define-text :keynotes
    (:ul
     (:li (:b "Nada Amin") " (Harvard SEAS), Staged Relational Interpreters: Running Backwards, Faster")
     (:li (:b "Andrew Sorensen") " (Australian National University), Symbolic Expressions for Cyber-Physical Programming")
     (:li (:b "Inna Grinis and Andrew Lawson") "(RavenPack), Producing News Analytics and Turning them into Actionable Insights")))

(define-location "Online"
  :role (:conference)
  :address (:city "Everywhere (CEST)")
  :photo "../static/2021/venue.jpg"
  :website "https://els2021.common-lisp.net/everywhere/"
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

(define-sponsor acm
  :website "http://www.sigplan.org/"
  :logo "../static/logos/acm.svg")

(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

(define-sponsor ravenpack
  :website "https://www.ravenpack.com/"
  :logo "../static/logos/ravenpack.jpg")

(define-sponsor epita
  :website "http://www.epita.fr/"
  :logo "../static/logos/epita.png")


;;; Programme

(define-programme-day @2021-05-03T00:00:00+02:00
  @08:00:00 (:title "Broadcast start" :role (:organization))

  @09:00:00 (:title "Welcome Message" :role (:organization))

  @09:15:00 (:title "Auction Start" :role (:organization))

  @09:30:00 (:title "Keynote: Symbolic expressions for cyber-physical programming"
             :role (:talk :keynote)
             :speakers ("Andrew Sorensen")
             :description "Cyber-physical programming gives programmers the ability to engage actively and proactively in an experimental and experiential relationship with complex virtual, physical and cultural systems. Cyber-physical programming offers programmers the opportunity to actively shape and control these complex systems of events - to be engaged with them. Studying these natural events is often only possible in situ, in-the-world, within their own temporal and spatial frames of reference.

Cyber-physical programming posits that a causal connection to the world is valuable and that it can be useful to privilege the present. To quote Rodney Brooks “It turns out to be better to use the world as its own model”. One of cyber-physical programming's tenets is that a program's state is not only an internal property of the machine, but is also an external property-of-the-world. This external, physical state, can be sensed and acted upon by both the machine and the programmer. The programmer is actively engaged in both perceiving and acting upon the world, directly, but also mediated through the machine. For the cyber-physical programmer, the physical environment constitutes a meaningful component of a program's state.")

  @10:30:00 (:title "Coffee Break" :role (:break))

  @11:00:00 (:title "A Tangram Puzzle Solver in Common Lisp"
             :role (:talk)
             :speakers ("Michael Wessel"))

  @11:30:00 (:title "A Portable, Simple, Embeddable Type System"
             :role (:talk)
             :speakers ("Jim Newton" "Adrien Pommellet"))

  @12:00:00 (:title "Lunch" :role (:break))

  @14:00:00 (:title "Common Lisp Project Manager"
             :role (:talk)
             :speakers ("Eric Timmons"))

  @14:30:00 (:title "A Corpus Processing and Analysis Pipeline for Quickref"
             :role (:talk)
             :speakers ("Antoine Hacquard" "Didier Verna"))

  @15:00:00  (:title "Coffee Break" :role (:break))

  @15:30:00 (:title "Lisp in the middle: using Lisp to manage a Linux system"
             :role (:talk)
             :speakers ("Mikhail Raskin"))

  @16:00:00 (:title "Panel Discussion: Implementations of ANSI Common Lisp"
             :role (:talk)
             :speakers ("Mark Evenson" "Daniel Kochmański" "Christophe Rhodes" "Kevin Layer" "Christian Schafmeister"))

  @17:00:00  (:title "Lightning Talks" :role (:talk))

  @17:30:00  (:title "Get-together" :role (:break)))

(define-programme-day @2021-05-04T00:00:00+02:00
  @08:00:00 (:title "Broadcast start" :role (:organization))

  @09:30:00 (:title "Keynote: Producing News Analytics and Turning them into Actionable Insights"
             :role (:talk :keynote)
             :speakers ("Andrew Lawson" "Inna Grinis")
             :description "We will first look at the basics of RavenPack’s news analytics system, from incoming stories to outgoing analytics and the technology involved. We will then look at several examples of how RavenPack’s news volume, sentiment scores, events taxonomy, and connections functionality can be leveraged to create data insights that can be used to make more informed decisions in the finance industry and the corporate world."
             :website "../static/2021/ravenpack-slides-keynote.pdf")

  @10:30:00 (:title "Coffee Break" :role (:break))

  @11:00:00 (:title "A replicated object system"
             :role (:talk)
             :speakers ("Hayley Patton"))

  @11:30:00 (:title "aether: Distributed system emulation in Common Lisp"
             :role (:talk)
             :speakers ("Eric Peterson" "Peter Karalekas"))

  @12:00:00 (:title "Lunch" :role (:break))

  @14:00:00 (:title "A Scheme Foreign Function Interface to JavaScript Based on an Infix Extension"
             :role (:talk)
             :speakers ("Marc-André Bélanger" "Marc Feeley"))

  @14:30:00 (:title "Call-site optimization for Common Lisp"
             :role (:talk)
             :speakers ("Robert Strandh"))

  @15:00:00  (:title "Coffee Break" :role (:break))

  @15:30:00 (:title "Keynote: Staged Relational Interpreters: Running Backwards, Faster"
             :role (:talk :keynote)
             :speakers ("Nada Amin")
             :description "Relational programming, as exemplified in miniKanren, strives to be a pure form of logic programming. Relational interpreters enable turning functions into relations, as well as synthesizing functions from partial specifications. However, however successful, the approach incurs an interpretation overhead. We turn functions into relations, while removing all interpretation overhead thanks to a novel multi-stage programming mechanism. While partial evaluation has a rich history in both functional and logic programming, multi-stage programming has so far only been explored in a functional/imperative setting, with many success stories in high-performance computing. Bringing multi-stage programming to relational programming, we derive a relational compiler from the relational interpreter. Via this compiler, we generate relations from functions with no interpretation overhead. In addition to useful first-order applications, we explore running staged relational programs backwards.

In this talk, I will introduce multi-stage programming in its traditional functional setting and in the new relational setting. I will explain how to derive a compiler from an interpreter using generative programming. I will showcase the resulting staged-miniKanren system with a theorem checker turned prover and various towers of interpreters for generating quines.")

  @16:30:00  (:title "Lightning Talks" :role (:talk))

  @17:00:00  (:title "Auction Stop" :role (:organization))

  @17:15:00  (:title "Closing Ceremony" :role (:organization)))

(define-proceedings "../static/proceedings/2021.pdf")
