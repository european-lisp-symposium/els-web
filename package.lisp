#|
 This file is a part of els-web
 Author: Nicolas Hafner <shinmera@tymoon.eu>
|#

(in-package #:cl-user)
(defpackage #:els-web
  (:use #:cl)
  ;; compiler.lisp
  (:export
   #:compile-edition-template
   #:compile-edition
   #:compile-all-editions)
  ;; edition.lisp
  (:export
   #:*edition*
   #:edition
   #:remove-edition
   #:editions
   #:in-edition
   #:set-type
   #:load-commons
   #:define-person
   #:define-location
   #:define-text
   #:define-programme-entry
   #:define-programme-day
   #:define-deadline)
  ;; toolkit.lisp
  (:export
   ))

(defpackage #:els-web-editions
  (:use #:cl #:els-web))
