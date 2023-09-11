(in-package #:els-web-editions)
(define-edition "global")
(in-package "global")

(define-person (:family-name "Verna"
                :given-name "Didier")
  :photo "https://en.gravatar.com/userimage/16766226/bec23e627756f4b902b87f93273aa052.jpeg"
  :website "https://www.didierverna.info"
  :organization "EPITA / LRE"
  :address (:country "France"))

(define-person (:family-name "Hafner"
                :given-name "Yukari")
  :photo "https://en.gravatar.com/userimage/12617850/a50422c48339a730dee468056eab402c.png"
  :email "shinmera@tymoon.eu"
  :website "https://shinmera.com"
  :nickname "Shinmera"
  :organization "Shirakumo.org"
  :address (:country "Switzerland"))


(define-sponsor acm
  :website "http://www.sigplan.org/"
  :logo "../static/logos/acm.svg")

(define-sponsor cl-foundation
 :website "http://cl-foundation.org/"
 :logo "../static/logos/cl-foundation.png")

(define-sponsor epita
  :website "http://www.epita.fr/"
  :logo "../static/logos/epita.png")

(define-sponsor lispworks
  :website "http://www.lispworks.com/"
  :logo "../static/logos/lispworks.png")

(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

(define-sponsor brunner
 :website "http://www.systemhaus-brunner.de/"
 :logo "../static/logos/brunner.png")
