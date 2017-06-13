#|
This file is a part of els-web
Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

(in-package #:cl-user)
(asdf:defsystem els-web
  :version "3.0.0"
  :license "Artistic"
  :author "Nicolas Hafner <shinmera@tymoon.eu>"
  :maintainer "Nicolas Hafner <shinmera@tymoon.eu>"
  :description "Tools to generate the European Lisp Symposium's website."
  :homepage "https://github.com/european-lisp-symposium/els-web"
  :serial T
  :components ((:file "package")
	       (:file "toolkit")
	       (:file "secret")
	       (:file "timestamp")
	       (:file "edition")
	       (:file "query")
	       (:file "calendar")
	       (:file "webpage")
	       (:file "shorthand")
	       (:module "editions"
		:components ((:file "frontpage")
			     (:file "2008")
			     (:file "2009")
			     (:file "2010")
			     (:file "2011")
			     (:file "2012")
			     (:file "2013")
			     (:file "2014")
			     (:file "2015")
			     (:file "2016")
			     (:file "2017")
			     (:file "2018"))))
  :depends-on (:clip
	       :local-time
	       :pathname-utils
	       :alexandria
	       :cl-who
	       :cl-ppcre
	       :named-readtables))
