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

(define-text :operation
  (:p "The European Lisp Symposium is an open access, hybrid, yearly academic conference. Submissions are reviewed in the traditional way. Every year, a Programme Chair is elected by the steering committee, who in turn constitutes a Programme Committee of at least 10 members. Reviews are done in single-blind mode. Each submission is guaranteed to have at least 3 reviews.")

  (:p "Copyright is retained by the authors. Full-text access to all papers is freely available. There are no Open Access fees for publication."))
