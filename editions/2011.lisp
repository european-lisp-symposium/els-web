(in-package #:els-web-editions)
(define-edition "2011")
(in-package "2011")

;;; Texts
(define-text :announcement
  (:div :class "announcement" "The conference is over!"))

(define-date "Conference start" @2011-03-31)

(define-date "Conference end" @2011-04-01)

;;; Sponsors
(define-sponsor epita
  :website "http://www.epita.fr/"
  :logo "../static/logos/epita.png")

(define-sponsor lispworks
  :website "http://www.lispworks.com/"
  :logo "../static/logos/lispworks.png")

(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

(define-sponsor novasparks
  :website "http://www.novasparks.com/"
  :logo "../static/logos/novasparks.jpg")

(define-sponsor freiheit
  :website "http://www.freiheit.com/en/"
  :logo "../static/logos/freiheit.svg")

(define-sponsor tuhh
  :website "https://www.tuhh.de"
  :logo "../static/logos/tuhh.svg")

;;; People
(define-person (:family-name "Verna"
                :given-name "Didier")
  :role (:administrator :programme-chair :committee)
  :email "didier@elsaa.org"
  :website "http://www.didierverna.net"
  :organization "EPITA"
  :address (:country "France"))

(define-person (:family-name "Moeller"
                :given-name "Ralf")
  :role (:local-chair)
  :organization "Hamburg University of Technology"
  :address (:country "Germany"))

(define-person (:family-name "Leitão"
                :given-name "António")
  :role (:committee)
  :organization "Instituto Superior Técnico/INESC-ID"
  :address (:country "Portugal"))

(define-person (:family-name "Rhodes"
                :given-name "Christophe")
  :role (:committee)
  :organization "Goldsmiths University of London"
  :address (:country "United Kingdom"))

(define-person (:family-name "Liebke"
                :given-name "David"
                :additional-name "Edgar")
  :role (:committee)
  :organization "Relevance Inc."
  :address (:country "USA"))

(define-person (:family-name "Lieberman"
                :given-name "Henry")
  :role (:committee)
  :organization "MIT Media Laboratory"
  :address (:country "USA"))

(define-person (:family-name "McCarthy"
                :given-name "Jay")
  :role (:committee)
  :organization "Brigham Young University"
  :address (:country "USA"))

(define-person (:family-name "Reina"
                :given-name "José"
                :additional-name "Luis Ruit")
  :role (:committee)
  :organization "Universidad de Sevilla"
  :address (:country "Spain"))

(define-person (:family-name "Serrano"
                :given-name "Manuel")
  :role (:committee)
  :organization "INRIA"
  :address (:country "France"))

(define-person (:family-name "Antoniotti"
                :given-name "Marco")
  :role (:committee)
  :organization "Universita Milano Bicocca"
  :address (:country "Italy"))

(define-person (:family-name "Sperber"
                :given-name "Michael")
  :role (:committee)
  :organization "DeinProgramm"
  :address (:country "Germany"))

(define-person (:family-name "Costanza"
                :given-name "Pascal")
  :role (:committee)
  :organization "Vrije Universiteit of Brussel"
  :address (:country "Belgium"))

(define-person (:family-name "McKay"
                :given-name "Scott")
  :role (:committee)
  :organization "ITA Software"
  :address (:country "USA"))

(define-person (:family-name ""
                :given-name "")
  :role (:speaker))

;;; Locations
(define-location "TUHH"
  :role (:conference)
  :photo "http://www.hamburg-news.hamburg/site_media/uploads/20140530_tuhh_hauptgebaeude_3_b_copyright_lina_p_a_nguyen_web_2_1.jpg"
  :website "https://www.tuhh.de/"
  :address (:street "Schwarzenbergstraße 1"
            :extended "Building i"
            :post-code "21073"
            :city "Hamburg"
            :country "Germany")
  :map T)

;;; Programme
;; (define-programme-day @2011-03-31T00:00:00+ZZ:ZZ
;;   @08:30:00 (:title "Registration"
;;              :role (:organization))
;;   @09:00:00 (:title "Welcome Message"
;;              :role (:organization))
;;   ...
;;   @19:30:00 (:title "Conference Dinner"
;;              :role (:dinner)))
