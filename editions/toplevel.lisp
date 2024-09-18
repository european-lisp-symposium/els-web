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

  (:p "We invite submissions in the following forms. Proposals must not overlap significantly with the authors’ previously published work in a peer reviewed publication, and must not be under review on another journal or conference.")
  (:ul (:li "<b>Papers</b>: technical papers of up to 8 pages that describe original results or explain known ideas in new and elegant ways.")
       (:li "<b>Experience reports</b>: papers of up to 6 pages describing a Lisp success story and/or analyzing obstacles that have kept it from working in practice.")
       (:li "<b>Tutorials</b>: abstracts of up to 4 pages for in-depth
  presentations about topics of special interest.")
       (:li "<b>Demonstrations</b>: abstracts of up to 4 pages for demonstrations of tools, libraries, and applications."))

  (:p "For more information on how to submit a paper, please see the full call for papers specific to the current year."))

(define-text :operation
  (:p "The European Lisp Symposium is an open access, hybrid, yearly academic conference. Submissions are peer-reviewed in the traditional way. Every year, a Programme Chair is elected by the steering committee, who in turn constitutes a Programme Committee of at least 10 members. Reviews are done in single-blind mode. Each submission is guaranteed to have at least 3 reviews.")

  (:p "Upon initial reviewing, submissions may be accepted as-is, deemed potentially acceptable, or rejected. Authors of potentially acceptable papers are requested to improve specific aspects of their submission. Authors are given a specific period of time to perform the revisions and re-submit the paper. At that point, the same reviewers assess how well the revision requests have been addressed by the authors, and whether the final paper maintains or improves the level of contribution of the original submission. Revisions that significantly lessen the contribution of the work or that fail to adequately address the reviewers’ original concerns will result in the paper’s rejection.")

    (:p "Copyright is retained by the authors. There are no Open Access fees
    for publication. The symposium's proceedings are freely available <a href=\"static/proceedings/\">here</a> and are self-published electronically under ISSN 2677-3465. Individual papers are also freely available on <a href=\"https://zenodo.org/communities/els/\">Zenodo</a>. The symposium's proceedings are currently indexed in <a href=\"https://dblp.org/db/conf/els/index.html\">DBLP</a>."))
