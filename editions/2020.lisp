(in-package #:els-web-editions)
(define-edition "2020")
(in-package "2020")

(define-date "Conference start" @2020-04-27)
(define-date "Conference end" @2020-04-28)

(define-text :announcement
  (:div :class "announcement" "The conference is being organized. Stay tuned for updates!"))

(define-person (:family-name "Verna"
                :given-name "Didier"))

(define-person (:family-name "Hafner"
                :given-name "Nicolas")
  :role (:local-chair))

(define-location "GZ Riesbach"
  :role (:conference)
  :photo "../static/2020/venue.jpg"
  :website "https://gz-zh.ch/gz-riesbach/"
  :telephone "+41 44 387 74 50"
  :email "gz-riesbach@gz-zh.ch"
  :address (:street "Seefeldstrasse 93"
            :post-code "8008"
            :city "Zürich"
            :country "Switzerland")
  :map T)

(define-registration (:inactive)
  (:kind "Early regular" :price 120 :status :active
   :description "Full conference package (talks, coffee breaks, banquet).")
  (:kind "Early student" :price 60 :status :active
   :description "Same as \"Early regular\", student price (requires student ID copy via e-mail).")
  (:kind "Regular" :price 160 :status :inactive
   :description "Full conference package (talks, coffee breaks, note: banquet out).")
  (:kind "Student" :price 90 :status :inactive
   :description "Same as \"Regular\", student price (requires student ID copy via e-mail).")
  (:option "banquet" :status :active
   :checked t :price 0 :description "Banquet")
  (:option "banquet-guest" :status :active
   :price 35 :description "Banquet guest")
  (:option "certificate" :price 0 :description "Certificate of attendance")
  (:option "proceedings" :price 0 :description "Printed proceedings")
  (:option "excursion" :status :active
   :price 20 :description "Sunday excursion (details below)")
  (:option "excursion-guest" :status :active
   :price 20 :description "Sunday excursion guest"))
