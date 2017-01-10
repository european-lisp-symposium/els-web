(in-package #:els-web-editions)
(define-edition "2012")
(in-package "2012")

;;; Texts
(define-text :announcement
  (:div :class "announcement" "The conference is over!"))

(define-date "Conference start" @2012-04-30)

(define-date "Conference end" @2012-05-01)

;;; Sponsors
(define-sponsor clozure
  :website "http://www.clozure.com/"
  :logo "../static/logos/clozure.png")

(define-sponsor alu
  :website "http://www.alu.org"
  :logo "../static/logos/alu.jpg")

(define-sponsor lispworks
  :website "http://www.lispworks.com/"
  :logo "../static/logos/lispworks.png")

(define-sponsor franz
  :website "http://www.franz.com/"
  :logo "../static/logos/franz.png")

(define-sponsor genworks
  :website "http://genworks.com/"
  :logo "../static/logos/genworks.png")

(define-sponsor nttdata
  :website "http://msi.co.jp/english/overview.html"
  :logo "../static/logos/nttdata.png")

;;; People
(define-person (:family-name "Verna"
                :given-name "Didier")
  :role (:administrator :committee :speaker)
  :email "didier@elsaa.org"
  :website "http://www.didierverna.net"
  :organization "EPITA/LRDE"
  :address (:country "France"))

(define-person (:family-name "Antoniotti"
                :given-name "Marco")
  :role (:programme-chair)
  :organization "Università degli Studi di Milano Bicocca"
  :address (:city "Milan" :country "Italy"))

(define-person (:family-name "Ćavar"
                :given-name "Damir")
  :role (:local-organizer)
  :organization "Eastern Michigan University"
  :address (:country "USA"))

(define-person (:family-name "Pehar"
                :given-name "Franjo")
  :role (:local-organizer)
  :organization "University of Zadar"
  :address (:country "Croatia"))

(define-person (:family-name "Kero"
                :given-name "Damir")
  :role (:local-organizer)
  :organization "University of Zadar"
  :address (:country "Croatia"))

(define-person (:family-name "Attardi"
                :given-name "Giuseppe")
  :role (:committee)
  :organization "Università degli Studi di Pisa"
  :address (:city "Pisa" :country "Italy"))

(define-person (:family-name "Costanza"
                :given-name "Pascal")
  :role (:committee :speaker)
  :organization "Intel"
  :address (:city "Bruxelles" :country "Belgium"))

(define-person (:family-name "Feeley"
                :given-name "Marc")
  :role (:committee)
  :organization "Université de Montreal"
  :address (:city "Montreal" :country "Canada"))

(define-person (:family-name "McKay"
                :given-name "Scott")
  :role (:committee)
  :organization "Google"
  :address (:country "USA"))

(define-person (:family-name "Pitman"
                :given-name "Kent")
  :role (:committee)
  :address (:country "USA"))

(define-person (:family-name "Rhodes"
                :given-name "Christophe")
  :role (:committee)
  :organization "Goldsmiths University of London"
  :address (:city "London" :country "United Kingdom"))

(define-person (:family-name "Strandh"
                :given-name "Robert")
  :role (:committee)
  :organization "Université de Bordeaux"
  :address (:city "Bordeaux" :country "France"))

(define-person (:family-name "Yuasa"
                :given-name "Taiichi")
  :role (:committee)
  :organization "Kyoto University"
  :address (:country "Japan"))

(define-person (:family-name "Garcia-Ripoll"
                :given-name "Juan"
                :additional-name "Jose")
  :role (:speaker)
  :organization "Instituto de Fisica Fundemantal CSIC"
  :address (:country "Spain"))

(define-person (:family-name "Senta"
                :given-name "Laurent")
  :role (:speaker))

(define-person (:family-name "Chedeau"
                :given-name "Christopher")
  :role (:speaker))

(define-person (:family-name "Anzani"
                :given-name "Giovanni")
  :role (:speaker))

(define-person (:family-name "Stalla"
                :given-name "Alessio")
  :role (:speaker))

(define-person (:family-name "Bertschinger"
                :given-name "Nils")
  :role (:speaker))

(define-person (:family-name "Varju"
                :given-name "Zoltan")
  :role (:speaker))

(define-person (:family-name "Littauer"
                :given-name "Richard")
  :role (:speaker))

(define-person (:family-name "Ernis"
                :given-name "Peteris")
  :role (:speaker))

(define-person (:family-name "van Waning"
                :given-name "Ernst")
  :role (:speaker)
  :organization "Infometrics"
  :address (:country "Netherlands"))

(define-person (:family-name "Benelli"
                :given-name "Marco")
  :role (:speaker))

(define-person (:family-name "Völkel"
                :given-name "Gunnar")
  :role (:speaker))

(define-person (:family-name "Kraus"
                :given-name "Johann"
                :additional-name "M.")
  :role (:speaker))

(define-person (:family-name "Kestler"
                :given-name "Hans"
                :additional-name "A.")
  :role (:speaker))

(define-person (:family-name "Durand"
                :given-name "Irène"
                :additional-name "Anne")
  :role (:speaker))

(define-person (:family-name "Raskin"
                :given-name "Mikhail")
  :role (:speaker))

;;; Locations
(define-location "University of Zadar"
  :role (:conference)
  :photo "http://www.unizd.hr/portals/0/Images/slideshow/slide-img-03.jpg"
  :website "http://www.unizd.hr/"
  :address (:street "Ul. Mihovila Pavlinovića"
            :post-code "23000"
            :city "Zadar"
            :country "Croatia")
  :map T)

(define-location "Hotel Kolovare"
  :role (:hotel)
  :website "http://www.hotel-kolovare.com"
  :telephone "+385 23 211 017")

(define-location "Hotel Bastion"
  :role (:hotel)
  :website "http://www.hotel-bastion.hr"
  :email "info@hotel-bastion.hr"
  :telephone "+385 23 494 950")

(define-location "Falkenstiner Hotels & resorts"
  :role (:hotel)
  :website "http://www.falkensteiner.com"
  :email "sales.borik@falkensteiner.com"
  :telephone "+385 23 206 400")

(define-location "Hotel Mediteran"
  :role (:hotel)
  :website "http://www.hotelmediteran-zd.hr"
  :email "info@hotelmediteran-zd.hr")

(define-location "Hotel Porto"
  :role (:hotel)
  :website "http://www.hotel-porto.hr"
  :email "hotel.porto@zd.t-com.hr"
  :telephone "+385 23 292 300")

(define-location "Hotel Villa Nico"
  :role (:hotel)
  :website "http://www.hotel-villanico.com"
  :email "nico.moric@villanico.t-com.hr"
  :telephone "+385 23 331 198")

(define-location "Hotel President"
  :role (:hotel)
  :website "http://www.hotel-president.hr"
  :email "info@hotel-president.hr"
  :telephone "+385 23 337 500")

(define-location "Hostel Zadar"
  :role (:hotel)
  :telephone "+385 331 145")

;;; Programme
(define-programme-day @2012-04-29T00:00:00+02:00
  @19:30:00 (:title "Welcome Drink")
  @21:30:00 (:title ""
             :role (:break)))

(define-programme-day @2012-04-30T00:00:00+02:00
  @08:30:00 (:title "Registration"
             :role (:organization))
  @09:30:00 (:title "Welcome Message"
             :role (:organization))
  @10:00:00 (:title "Embeddable Common Lisp"
             :role (:talk :keynote)
             :speakers ("Juan Garcia-Ripoll"))
  @11:00:00 (:title "Coffee"
             :role (:break))
  @11:30:00 (:title "Generic Image Processing with Climb"
             :role (:talk)
             :speakers ("Laurent Senta" "Christopher Chedeau" "Didier Verna"))
  @12:15:00 (:title "An iterative method to solve overdetermined systems of nonlinear equations applied to the restitution of planimetric measurements"
             :role (:talk)
             :speakers ("Giovanni Anzani"))
  @13:00:00 (:title "Lunch"
             :role (:break))
  @15:00:00 (:title "Java interop with ABCL, a practical example"
             :role (:talk)
             :speakers ("Alessio Stalla"))
  @15:45:00 (:title "Embedded probabilistic programming in Clojure"
             :role (:talk)
             :speakers ("Nils Bertschinger"))
  @16:30:00 (:title "A little history of metaprogramming and reflection"
             :role (:talk)
             :speakers ("Pascal Costanza"))
  @17:30:00 (:title "Using Clojure in Linguistic Computing"
             :role (:talk :lightning)
             :speakers ("Zoltan Varju" "Richard Littauer" "Peteris Ernis"))
  @18:00:00 (:title "Conference Dinner"
             :role (:dinner))
  @20:00:00 (:title ""
             :role (:break)))

(define-programme-day @2012-04-31T00:00:00+02:00
  @10:00:00 (:title "Automated User-Centered Reasoning and Acquisition System"
             :role (:talk :keynote)
             :speakers ("Ernst van Waning"))
  @11:00:00 (:title "Coffee"
             :role (:break))
  @11:30:00 (:title "Scheme in Industrial Automation"
             :role (:talk)
             :speakers ("Marco Benelli"))
  @12:15:00 (:title "Algorithm Engineering with Clojure"
             :role (:talk)
             :speakers ("Gunnar Völkel" "Johann Kraus" "Hans Kestler"))
  @13:00:00 (:title "Lunch"
             :role (:break))
  @15:00:00 (:title "Object enumeration"
             :role (:talk)
             :speakers ("Irène Durand"))
  @15:45:00 (:title "Doplus, the high-level, lispy extensible iteration construct"
             :role (:talk)
             :speakers ("Alessio Stalla"))
  @16:30:00 (:title "QueryFS, a virtual filesystem based on queries and relaxed tools"
             :role (:talk :lightning)
             :speakers ("Mikhail Raskin"))
  @17:00:00 (:title "Conference End"
             :role (:organization))
  @18:00:00 (:title ""
             :role (:break))
  @20:00:00 (:title "Conference Dinner"
             :role (:dinner))
  @22:00:00 (:title ""
             :role (:break)))

(define-proceedings "../static/proceedings/2012.pdf")
