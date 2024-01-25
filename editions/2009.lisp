(in-package #:els-web-editions)
(define-edition "2009")
(in-package "2009")

;;; Texts
(define-text :announcement
  (:div :class "announcement" "The conference is over!"))

(define-date "Conference start" @2009-05-27)

(define-date "Conference end" @2009-05-29)

;;; People
(define-person (:family-name "Verna" :given-name "Didier")
  :role (:administrative-chair :committee))

(define-person (:family-name "Leitão"
                :given-name "António")
  :role (:programme-chair)
  :organization "Technical University of Lisbon"
  :address (:country "Portugal"))

(define-person (:family-name "Antoniotti"
                :given-name "Marco")
  :role (:local-chair)
  :organization "DISCo Università Milano Bicocca"
  :address (:country "Italy"))

(define-person (:family-name "Attardi"
                :given-name "Giuseppe")
  :role (:committee)
  :organization "Università di Pisa"
  :address (:country "Italy"))

(define-person (:family-name "Costanza"
                :given-name "Pascal")
  :role (:committee)
  :organization "Vrije Universiteit Brussel"
  :address (:country "Belgium"))

(define-person (:family-name "Durand"
                :given-name "Irène"
                :additional-name "Anne")
  :role (:committee)
  :organization "Université Bordeaux"
  :address (:country "France"))

(define-person (:family-name "Feeley"
                :given-name "Marc")
  :role (:committee)
  :organization "Université de Montréal"
  :address (:country "Canada"))

(define-person (:family-name "Garret"
                :given-name "Ron")
  :role (:committee)
  :organization "Amalgamated Widgets Unlimited"
  :address (:country "USA"))

(define-person (:family-name "Kiczales"
                :given-name "Gregor")
  :role (:committee)
  :organization "University of British Columbia"
  :address (:country "Canada"))

(define-person (:family-name "McKay"
                :given-name "Scott")
  :role (:committee :speaker)
  :organization "ITA Software"
  :address (:country "USA"))

(define-person (:family-name "Norvig"
                :given-name "Peter")
  :role (:committee)
  :organization "Google"
  :address (:country "USA"))

(define-person (:family-name "Padget"
                :given-name "Julian")
  :role (:committee)
  :organization "University of Bath"
  :address (:country "United Kingdom"))

(define-person (:family-name "Pitman"
                :given-name "Kent")
  :role (:committee)
  :organization "HyperMeta"
  :address (:country "USA"))

(define-person (:family-name "Queinnec"
                :given-name "Christian")
  :role (:committee)
  :organization "Université Pierre et Marie Curie"
  :address (:country "France"))

(define-person (:family-name "Rhodes"
                :given-name "Christophe")
  :role (:committee :speaker)
  :organization "Goldsmiths University of London"
  :address (:country "United Kingdom"))

(define-person (:family-name "Strandh"
                :given-name "Robert")
  :role (:committee)
  :organization "Université Bordeaux"
  :address (:country "France"))

(define-person (:family-name "Tarver"
                :given-name "Mark")
  :role (:committee :speaker)
  :organization "Lambda Associates"
  :address (:country "United Kingdom"))

(define-person (:family-name "White"
                :given-name "Jon"
                :additional-name "L.")
  :role (:committee)
  :organization "TheGingerIceCreamFactory of Palo Alto"
  :address (:country "USA"))

(define-person (:family-name "Yuasa"
                :given-name "Taiichi")
  :role (:committee)
  :organization "Kyoto University"
  :address (:country "Japan"))

(define-person (:family-name "Pezzè"
                :given-name "Mauro")
  :role (:speaker)
  :organization "University of Milan-Bicocca")

(define-person (:family-name "Martins"
                :given-name "Joao"
                :additional-name "Pavao")
  :role (:speaker)
  :organization "SISCOG")

(define-person (:family-name "Morgado"
                :given-name "Ernesto")
  :role (:speaker)
  :organization "SISCOG")

(define-person (:family-name "Simionato"
                :given-name "Michele")
  :role (:speaker))

;;; Locations
(define-location "Università degli Studi di Milano Bicocca"
  :role (:conference)
  :photo "https://www.unimib.it/upload/pag/46116/0/bi/bicocca.jpg"
  :website "http://www.unimib.it/go/102/Home/English"
  :address (:street "Piazza dell'Ateneo Nuovo 1"
            :post-code "20126"
            :city "Milano"
            :country "Italy")
  :map T)

;; (define-proceedings "")
