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
       (:li "<b>Tutorials</b>: abstracts of up to 4 pages for in-depth
  presentations about topics of special interest.")
       (:li "<b>Demonstrations</b>: abstracts of up to 4 pages for demonstrations of tools, libraries, and applications.")
       (:li "<b>Experience reports</b>: papers of up to 6 pages describing a Lisp success story and/or analyzing obstacles that have kept it from working in practice."))

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
