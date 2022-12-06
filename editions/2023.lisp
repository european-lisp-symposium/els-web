(in-package #:els-web-editions)
(define-edition "2023")
(in-package "2023")

(define-date "Submission deadline" @2023-02-26)
;;(define-date "*** Extended deadline ***" @2022-01-30)
(define-date "Author notification" @2023-03-26)
(define-date "Final papers" @2023-04-09)
;;(define-date "Early registration deadline" @2020-04-01)

(define-date "Conference start" @2023-04-24)
(define-date "Conference end" @2023-04-25)

(define-text :announcement
  (:div :class "announcement" "Conference dates announced!"))

#+()(define-text :additional-info
  (:p "There are several ways for you to join ELS online:"
      (:ul (:li "<b>Via Twitch</b>: You join <a href=\"https://twitch.tv/elsconf\">https://twitch.tv/elsconf</a> and enjoy the show.  If you have a Twitch account, you can also use the text chat to communicate with other participants or the authors.  You can also follow the elsconf user on Twitch to receive a notification when each day's broadcast starts."))
      (:ul (:li "<b>Via IRC</b>: You join the #els2023 channel on <a href=\"https://web.libera.chat/#els2023\">libera.chat</a>.  Messages from this channel are automatically forwarded to the Twitch chat, and vice versa."))
      (:ul (:li "<b>Via VLC</b>: If you want to avoid Twitch, you can also receive the live stream via <a href=\"https://www.videolan.org/vlc/\">VLC</a>.  Using VLC and IRC, you can join ELS using only free software!"))
      #+()(:ul (:li "<b>Via Jitsi</b>: The coffee breaks, lunch breaks, and social gatherings in the evenings take place on Jitsi (a video chat application that runs in any browser).  You can see a list of available Jitsi rooms <a href=\"https://els2023.common-lisp.net/everywhere/\">here</a>.")))
  (:p "The timezone of our schedule is UTC, but the video of the streams will stay online for you to watch later, too. See you online!"))

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
       (:li "<b>Tutorials</b>: Abstracts of up to 4 pages for in-depth presentations about topics of special interest."))

  (:p "You can upload submissions on <a href=\"https://www.easychair.org/conferences/?conf=els2023\">EasyChair</a>.")

  (:p "All submissions should be formatted following the ACM SIGS guidelines and include <a href=\"http://www.acm.org/about/class/2012\">ACM Computing Classification System 2012</a> concepts and terms. Appropriate TeX and Word templates can be found on the <a href=\"https://www.acm.org/publications/proceedings-template\">ACM publications page</a>.")

  (:p "LaTeX submissions are encouraged. For LaTeX submissions, please use the SIGCONF style (two columns, reasonably compact). This is done like this: <code>\\usepackage[format=sigconf]{acmart}</code>." )

  (:p "Please use the <a href=\"http://dl.acm.org/ccs/ccs.cfm\">ACM Computing Classification System site</a> to generate the CCS codes. In order to add a concept, navigate to it using the boxes, and select \"Assign This CCS Concept\" on the left side. You should select one high relevance concept, and up to four medium or low relevance concepts. Once you are done, simply copy the CCS display into the Word document. If you are using TeX, select \"View CCS TeX Code\" and copy the displayed code into your TeX file. The templates should already include sections with bogus CCS codes, which you can simply replace with your own.")

  (:p "If you are using the correct style and classification system, your document will contain a section called <code>CCS Concepts</code> and include terms formatted like <code>•Information systems → Web applications</code>. If your document includes a section titled <code>Categories and Subject Descriptors</code> with things in a style like <code>D.2.3 [Software Engineering]: Coding Tools and Techniques</code>, then you have to update to the new 2012 system and templates as linked above. If the CCS section does not show up in the TeX generated PDF at all, make sure that your TeX file includes the <code>\\printccsdesc</code> command below the abstract."))


(define-person (:family-name "Verna"
                :given-name "Didier")
  :role (:administrator)
  :email "www@european-lisp-symposium.org"
  :website "http://www.european-lisp-symposium.org"
  :organization "ELS")

(define-person (:family-name "Monnier"
                :given-name "Stefan")
  :role (:programme-chair)
  :organization "DIRO, Université de Montréal"
  :address (:country "Canada"))

(define-person (:family-name "Ó Nualláin"
                :given-name "Breanndán")
  :role (:local-chair)
  :organization "Machine Learning Programs"
  :address (:country "Nederlands"))


(define-location "Startup Village"
  :role (:conference)
  :photo "https://upload.wikimedia.org/wikipedia/commons/b/be/KeizersgrachtReguliersgrachtAmsterdam.jpg"
  :website "https://www.startupvillage.nl/"
  :address (:street "Science Park 608"
            :post-code "1098 XH"
            :city "Amsterdam"
            :country "Nederlands")
  :map T)

(define-text :tourism
  (:p "Please note! April 27th in the Nederlands is King's Day,
the national holiday, a renowned and very colorful event, especially in
Amsterdam. This is a great opportunity for those who'd wish to combine ELS
with some tourism...")
  (:p "More information on King's Day <a target=\"_blank\" href=\"https://www.iamsterdam.com/en/see-and-do/whats-on/major-events-and-celebrations/kings-day\">here</a>."))

(define-sponsor epita
  :website "http://www.epita.fr/"
  :logo "../static/logos/epita.png")

(define-sponsor diro
  :website "https://diro.umontreal.ca/"
  :logo "../static/2023/diro.png")

#+()(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

#+()(define-sponsor siscog
  :website "https://www.siscog.pt/"
  :logo "../static/logos/siscog.png")

#+()(define-sponsor ravenpack
  :website "https://www.ravenpack.com/"
  :logo "../static/logos/ravenpack.jpg")

#+()(define-sponsor acm
  :website "http://www.sigplan.org/"
  :logo "../static/logos/acm.svg")


#+()(define-text :keynotes
  (:ul
   (:li (:b "Sam Ritchie" " Lisp as Renaissance Workshop: A Lispy Tour through Mathematical Physics"))
   (:li (:b "Robert Strandh" " Creating a Common Lisp Implementation"))
   (:li (:b "Sam Ritchie" " Demo: Building SICMUtils, the Atelier of Abstractions"))))

;;; Programme




#+()(define-proceedings "../static/proceedings/2023.pdf")
