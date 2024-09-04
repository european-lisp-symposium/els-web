(in-package #:els-web-editions)
(define-edition "toplevel")
(in-package "toplevel")

(define-text :about
  (:p "The European Lisp Symposium is a premier forum for the discussion and dissemination of all aspects of design, implementation and application of any of the Lisp dialects, including Common Lisp, Scheme, Emacs Lisp, Clojure, Racket, ACL2, AutoLisp, ISLISP, Dylan, SKILL, Hy, Shen, Carp, Janet, uLisp, Picolisp, Gamelisp, TXR, and so on. We encourage everyone interested in Lisp to participate.")
  (:p "The European Lisp Symposium invites high quality papers about novel research results, insights and lessons learned from practical applications and educational perspectives. We also encourage submissions about known ideas as long as they are presented in a new setting and/or in a highly elegant way."))

(define-text :scope
  (:p "Topics include but are not limited to:")
  (:ul (:li "context-, aspect-, domain-oriented and generative programming")
       (:li "macro-, reflective-, meta- and/or rule-based development approaches")
       (:li "language design and implementation")
       (:li "language integration, inter-operation and deployment")
       (:li "development methodologies, support and environments")
       (:li "educational approaches and perspectives")
       (:li "experience reports and case studies"))

  (:p "We invite submissions in the following forms.")
  (:ul (:li "<b>Papers</b>: technical papers of up to 8 pages that describe original results or explain known ideas in new and elegant ways.")
       (:li "<b>Experience reports</b>: papers of up to 6 pages describing a Lisp success story and/or analyzing obstacles that have kept it from working in practice.")
       (:li "<b>Tutorials</b>: abstracts of up to 4 pages for in-depth
  presentations about topics of special interest.")
       (:li "<b>Demonstrations</b>: abstracts of up to 4 pages for demonstrations of tools, libraries, and applications.")))

(define-text :submission
  (:p "All submissions should be formatted following the ACM SIGS guidelines and include <a href=\"http://www.acm.org/about/class/2012\">ACM Computing Classification System 2012</a> concepts and terms. Appropriate TeX and Word templates can be found on the <a href=\"https://www.acm.org/publications/proceedings-template\">ACM publications page</a>. LaTeX submissions are strongly encouraged. For LaTeX submissions, please use the article template available <a href=\"https://european-lisp-symposium.org/static/template.tex\">here</a>." )

  (:p "Please use the <a href=\"http://dl.acm.org/ccs/ccs.cfm\">ACM Computing Classification System site</a> to generate the CCS codes. In order to add a concept, navigate to it using the boxes, and select \"Assign This CCS Concept\" on the left side. You should select one high relevance concept, and up to four medium or low relevance concepts. Once you are done, simply copy the CCS display into the Word document. If you are using TeX, select \"View CCS TeX Code\" and copy the displayed code into your TeX file. The templates should already include sections with bogus CCS codes, which you can simply replace with your own."))
