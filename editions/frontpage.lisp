(in-package #:els-web-editions)
(define-edition "toplevel")
(in-package "toplevel")

(define-text :about
  (:p "The purpose of the European Lisp Symposium is to provide a forum for the discussion and dissemination of all aspects of design, implementation and application of any of the Lisp and Lisp-inspired dialects, including Common Lisp, Scheme, Emacs Lisp, AutoLisp, ISLISP, Dylan, Clojure, ACL2, ECMAScript, Racket, SKILL, Hop and so on. We encourage everyone interested in Lisp to participate.")
  (:p "The European Lisp Symposium invites high quality papers about novel research results, insights and lessons learned from practical applications and educational perspectives. We also encourage submissions about known ideas as long as they are presented in a new setting and/or in a highly elegant way."))

(define-text :scope
  (:p "Topics include but are not limited to:")
  (:ul (:li "Context-, aspect-, domain-oriented and generative programming")
       (:li "Macro-, reflective-, meta- and/or rule-based development approaches")
       (:li "Language design and implementation")
       (:li "Language integration, inter-operation and deployment")
       (:li "Development methodologies, support and environments")
       (:li "Educational approaches and perspectives")
       (:li "Experience reports and case studies"))
  (:p "We invite submissions in the following forms:")
  (:ul (:li "<b>Papers</b>: Technical papers of up to 8 pages that describe original results or explain known ideas in new and elegant ways.")
       (:li "<b>Demonstrations</b>: Abstracts of up to 2 pages for demonstrations of tools, libraries, and applications.")
       (:li "<b>Tutorials</b>: Abstracts of up to 4 pages for in-depth presentations about topics of special interest for at least 90 minutes and up to 180 minutes.")))

(define-person (:family-name "Verna"
                :given-name "Didier")
  :role (:administrator)
  :email "didier@elsaa.org"
  :website "http://www.didierverna.net"
  :organization "ELS")
