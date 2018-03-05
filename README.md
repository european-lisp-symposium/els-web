## About ELS-Web
This is a system that contains all data related to the [European Lisp Symposium](http://european-lisp-symposium.org/), and is able to compile it into a static website for publishing.

## How to Define an Edition
An edition is created by defining a new package of the editions' name --usually its year-- and following it up with various data definitions. The basic outline is as follows:

```common-lisp
(in-package #:els-web-editions)
(define-edition "2025")
(in-package "2025")

(define-text :announcement
  (:div :class "announcement" "A new edition is coming along!"))

(define-date "Conference start" @2025-05-23)
(define-date "Conference end" @2025-05-24)

;; etc.
```

When a definition is recompiled, its data is updated if possible. Each data entry is identified by one or more key fields. If those are changed, the data will instead be added again. To avoid this, you can recompile the entire file, which will first clear out all the data through the `define-edition` macro, and then add it all anew.

If you add a new edition, you should place it into the `editions` directory, and then add the file to the ASDF system definition, such that the edition is automatically recognised once the system is loaded.

### Data Definition Constructs

* `define-person` Define a new person that is relevant to this edition. All programme members and speakers should be defined in this way. The name should either be a name string directly, or ideally a list of the relevant name parts. See the list of fields below.
* `define-location` Define a new location. This can be used to define the location of the conference itself, as well as nearby hotels and such. See the list of fields below.
* `define-text` Define a new text to be displayed on the page. The body of the definition should be a set of [cl-who](http://weitz.de/cl-who/) template structures.
* `define-programme-entry` Define an entry in the programme. You will probably want to use `define-programme-day` directly, however, as it makes the date definition much more simple.
* `define-programme-day` Define a fully day of the programme. The body should be pairs of time dates and the entry that is started at that time. See the list of fields below.
* `define-date` Define a deadline or date that people should know about.
* `define-sponsor` Define a sponsor for the conference. The body should include website and logo fields.
* `define-proceedings` Publish a link to the public proceedings document.
* `define-registration` Define the registration prices and other metadata.

Many of these definitions accept arbitrary data fields in the form of a plist. The following fields are specially treated and respected by the templates.

### Fields for People and Locations

* `:full-name` The full name string. Usually calculated automatically from the name.
* `:name` Should be a plist where the following keys are recognised:
  * `:honorific-prefix` The honorific prefix, if any.
  * `:given-name` The person's first, or given name.
  * `:additional-name` The person's middle, or additional name.
  * `:family-name` The person's last, or family name.
  * `:honorific-suffix` The honorific suffix, if any.
* `:photo` A link to a photo of the person or location.
* `:nickname` An online nickname.
* `:email` The e-mail address of the person or location.
* `:website` A link to the website.
* `:telephone` The telephone number to contact the person or location.
* `:organization` The organisation the person is a part of.
* `:category` Which category the location belongs to.
* `:role` Which roles the location or person fulfils. The following roles are recognised:
  * `:conference` This is the conference's primary location.
  * `:hotel` This is a suitable hotel near the conference.
  * `:programme-chair` This person is the programme chair.
  * `:local-chair` This person is the local conference chair.
  * `:committee` This person is on the committee.
  * `:local-organizer` This person is the local organiser.
  * `:speaker` This person is a speaker and has an official talk.
* `:address` Should be a plist where the following keys are recognised:
  * `:po-box` The post office box number.
  * `:street` The basic street name and number.
  * `:extended` The extended street address.
  * `:city` The locality or city.
  * `:region` The region the city is in.
  * `:post-code` The local post-code.
  * `:country` The country name.

### Fields for Programme Entries

* `:title` The primary title of the talk or event.
* `:speakers` The list of speakers that hold the talk. Each speaker should be referenced by their full name string, which is usually the given name and family name together, separated by a string.
* `:role` The roles of the programme entry. The following roles are recognised:
  * `:talk` This entry is a talk.
  * `:keynote` This talk is also a keynote.
  * `:break` This represents a coffee break or some other kind of downtime.
  * `:organization` This event is about information of the conference.
  * `:lightning` This is a lightning talk session.
  * `:dinner` This is for the conference dinner time.
* `:description` The long description used for keynote talks. This is displayed in the highlights section of the page.
* `:note` An additional note to display in the programme about this event. Can be used in cases where an event is cancelled or something to that effect.
* `:website` If present turns the title into a link. Intended to be used to link to a video or slides of the entry.

### Fields for Sponsors

* `:website` A link to the sponsor's website.
* `:logo` A link to the logo image of the sponsor. The logo should be no bigger than 256px², should be hosted locally, and ideally should be a vector graphics image.

### Fields for Registration
The registration definition is a bit more complicated. Each registration has options of its own, and then a set of "SKUs", which are the available variants of the registration. See the section below for fields available to each SKU.

* `kind` A string allowing you to define different sets of registrations. Typically this is for distinguishing early birds and late joiners.
* `status` Either `:active` or `:inactive`, denoting whether this registration is still open.
* `:id` The id of the product used in Stripe. This is automatically generated.
* `:name` The publicly visible name of the product in Stripe. This is automatically generated.
* `:caption` An short description of the product in Stripe.
* `:deactivate-on` An optional date on which the product is automatically deactivated by Stripe.
* `:description` An optional description of the product in Stripe.
* `:images` An optional list of URLs to images for the product used in Stripe.
* `:metadata` An optional alist of metadata for use in Stripe.
* `:url` An optional string of an URL for use in Stripe.

Note that defining the registration will only update the internal database used by ELS-web. The remote Stripe servers are not automatically updated, as that would incur contacting the API every time you load the system. Instead, you need to manually notify the Stripe API of changes to the registration definition by using `update-edition-registration`.

#### Fields for Registration SKUs
Each SKU in a registration requires a name, followed by a set of options. The name should describe the type of registration possible as a string.

* `:price` The price of the product in €. If you need cents, use a float or ratio.
* `:id` The id of the SKU used in Stripe. This is automatically generated.
* `:status` Either `:active` or `:inactive`, denoting whether this SKU is still available. Defaults to the same as the product.
* `:image` An optional URL to an image for use in Stripe.
* `:metadata` An optional alist of metadata for use in Stripe.

## Extracting the Data
The data can be easily retrieved through the `query` function that does some light matching. The filter argument can be of the following structure:

```
FILTER ::= everything | CLAUSE
CLAUSE ::= (= DATA DATA)
         | (in DATA DATA)
         | (and CLAUSE*)
         | (or CLAUSE*)
         | (not CLAUSE)
DATA   ::= keyword | data-field | data-value
everything --- The symbol T to represent all data
keyword    --- A keyword symbol that is directly used as a value
data-field --- A symbol representing the value of a field in a data entry
data-value --- Any kind of object that is directly used as a value
```

Comparison between values is done through `g=`, which is a form of "generalised equality." Specifically, the following holds:

* Two `timestamp`s are `g=` if they are `timestamp=`.
* Two `symbol`s are `g=` if they are `string-equal`.
* Two `string`s are `g=` if they are `string-equal`.
* Any other kind of object is compared by `equalp`.

These weakened comparisons are done to make it more convenient to extract the data within templates.

## Secrets File
Some parts of the website require keys and tokens that should not be made public in a repository like this. Thus, this includes a simple "secrets" mechanism. The system expects a file called `secrets.lisp` within its root directory. This file should contain a single plist of keywords to strings. The following keys are required:

* `:google-api-key` The public key provided to you by [Google](https://console.developers.google.com/flows/enableapi?apiid=maps_backend,geocoding_backend,directions_backend,distance_matrix_backend,elevation_backend,places_backend&reusekey=true).
* `:stripe` A path to the [Stripe PHP library](https://github.com/stripe/stripe-php) root folder.
* `:stripe-public-key` The public key provided by [Stripe](https://dashboard.stripe.com/account/apikeys).
* `:stripe-private-key` The private key provided by Stripe.
* `:mailer` A path to the [PHPMailer](https://github.com/PHPMailer/PHPMailer) root folder.
* `:mailer-host` The hostname of the SMTP server.
* `:mailer-port` The port to connect through (usually 587 for SSL).
* `:mailer-ssl` One of `"false"`, `"true"`, `"self-signed"`. Note that the self-signed option disables certificate checking.
* `:mailer-user` The username to connect to the SMTP server with.
* `:mailer-pass` The password for the user account.
* `:mailer-receipt-recipient` The recipient of email receipts.

Note that for Stripe you should use the provided testing keys during development, and use the production keys for the deployed website. Using either key set on the other environment is a very bad idea.

## Writing the Templates
The templates are written using the [Clip](https://shinmera.github.io/clip/) system. For the most part the data is introduced using the aforementioned `query` function, and its abbreviations `query1` and `queryf`. Common structures like locations, people, and programme entries are separated out of the primary `index.ctml` template and spliced back in using the `<c:splice>` tag.

What's going on in the templates should not be too difficult to figure out. Otherwise, have a look at Clip's and perhaps also [lQuery](https://shinmera.github.io/lquery/)'s documentation.

## Actually Compiling the Editions
You can compile the edition data using `compile-edition`. When you add or remove an edition, you should also compile all the other ones as well, in order to ensure the cross-links are still valid. You can do so with `compile-all-editions`.

The resulting static files will be placed in the `output` directory, automatically overwriting previous files. In order to publish the site, you simply need to copy the entire `output` directory, or make it visible through a webserver somehow.

## Deploying on a Server
In order to deploy ELS-web on a server, you will need a PHP5 capable server. I'm well aware that using PHP sounds like heresy for a Lisp project, but many servers don't offer direct root access to run a Lisp instance.

Either way, in order to deploy it, you will need the full ELS-web repository, including a filled out `secrets.lisp` file. The server-side registration script will access this file to retrieve some options. While the root of the project does need to be accessible to PHP, it should naturally not be accessible to the web. The document root that your web server should serve is the `output` directory.
