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
       (:li "<b>Demonstrations</b>: abstracts of up to 4 pages for demonstrations of tools, libraries, and applications.")
       (:li "<b>Tutorials</b>: abstracts of up to 4 pages for in-depth presentations about topics of special interest for at least 90 minutes and up to 180 minutes.")))

(define-person (:family-name "Verna"
                :given-name "Didier")
  :role (:administrator)
  :email "www@european-lisp-symposium.org"
  :website "http://www.european-lisp-symposium.org"
  :organization "ELS")
