;;; GNU Guix web site
;;; Initially written by sirgazil who waives all
;;; copyright interest on this file.

(define-module (apps base templates donate)
  #:use-module (apps base templates components)
  #:use-module (apps base templates theme)
  #:use-module (apps base types)
  #:use-module (apps base utils)
  #:export (donate-t))


(define (donate-t)
  "Return the Donate page in SHTML."
  (theme
   #:title '("Donate")
   #:description
   "We are looking for donations of hardware and optionally hosting
   for machines (they should be usable with exclusively free
   software)."
   #:keywords
   '("GNU" "Linux" "Unix" "Free software" "Libre software"
     "Operating system" "GNU Hurd" "GNU Guix package manager"
     "Donations")
   #:active-menu-item "Donate"
   #:css (list
	  (guix-url "static/base/css/page.css"))
   #:crumbs (list (crumb "Donate" "./"))
   #:content
   `(main
     (section
      (@ (class "page centered-block limit-width"))
      (h2 "Donate")

      (p
       "The "
       (a (@ (href "https://ci.guix.gnu.org"))
	  "build farm")
       " of Guix runs on donated hardware and"
       " hosting. As the distribution grows (see the "
       (a (@ (href ,(guix-url "packages/"))) "package list")
       "), so do the computing and storage needs.")

      (p
       "Back in 2015 we "
       (a (@ (href ,(guix-url "blog/2015/guix-starts-fundraising-campaign-with-support-from-the-fsf/")))
	  "ran a fundraising campaign")
       " to strengthen our build farm, with "
       (a (@ (href "https://www.fsf.org/blogs/community/fsf-announces-support-for-gnu-guix"))
	  "support from the Free Software Foundation (FSF)")
       ".  The Guix project can always use financial support to further its "
       "mission.  Please consider helping out by making a donation on this
       FSF-hosted page:")

      (p
       (@ (class "centered-text"))
       ,(button-big
	 #:label "♥ DONATE!"
	 #:url "https://my.fsf.org/civicrm/contribute/transact?reset=1&id=50"))

      (h3
       (@ (id "hardware-and-hosting"))
       "Hardware and Hosting")

      (p
       "We are also looking for donations of hardware and optionally
        hosting for the following kinds of machines (they should be
        usable with exclusively free software): ")

      (ul
       (li "x86_64 machines, with on the order of 1\xa0TiB of storage
            and 4\xa0GiB of RAM;")
       (li "armv7 machines (such as the Novena) to more quickly test
            and provide binaries for the armhf-linux port;")
       (li "mips64el machines to strengthen this port."))

      (p
       "Please get in touch with us through the "
       (a (@ (href ,(guix-url "contact/"))) "usual channels")
       " or using the " (b "guix-hardware@gnu.org") " private alias to
        discuss any opportunities. ")


      (h3
       (@ (id "hardware-donors"))
       "Thanks to the donors!")

      (p
       "The table below summarizes hardware and hosting donations that
        make the " (a (@ (href "https://ci.guix.gnu.org")) "build farm")
	" for the Guix System Distribution a reality.")

      (div
       (@ (class "table-box"))
       (table
	(thead
	 (tr (th "machine")
	     (th "system")
	     (th "donors")))
	(tbody

     (tr
      (td "berlin.guixsd.org")
      (td "build farm with 25 build nodes for x86_64-linux and
i686-linux, and dedicated storage")
      (td
       (ul
        (li
         (a (@ (href "https://www.mdc-berlin.de/"))
            "Max Delbrück Center for Molecular Medicine")
         " (hardware and hosting)"))))
	 (tr
	  (td "overdrive1.guixsd.org")
	  (td "aarch64-linux")
	  (td
	   (ul
	    (li (a (@ (href ,(guix-url "blog/2018/aarch64-build-machines-donated/")))
		   "ARM Holdings") " (hardware)"))))
	 (tr
	  (td "bayfront.guixsd.org")
	  (td "new build farm front-end (WIP)")
	  (td
	   (ul
	    (li
	     (a (@ (href ,(guix-url "blog/2016/growing-our-build-farm/")))
		"Igalia")))))
	 (tr
	  (td "guix-x15.sjd.se, guix-x15b.sjd.se")
	  (td "armhf-linux")
	  (td
	   (ul
	    (li (a (@ (href "https://blog.josefsson.org/"))
		   "Simon Josefsson")))))
	 (tr
	  (td "hydra-slave1")
	  (td "armhf-linux")
	  (td
	   (ul
	    (li "Steve Sprang (hardware)")
	    ;; XXX: Eventually move to the FSF?
	    (li "Mark H Weaver (hosting)"))))
	 (tr
	  (td "hydra-slave2")
	  (td "armhf-linux")
	  (td
	   (ul
	    (li (a (@ (href "http://harmoninstruments.com/"))
		   "Harmon Instruments")
		" (hardware)")
	    ;; XXX: Eventually move to the FSF?
	    (li "Mark H Weaver (hosting)"))))
	 (tr
	  (td "hydra-slave3")
	  (td "armhf-linux")
	  (td
	   (ul
	    (li (a (@ (href "http://www.kosagi.com/w/index.php?title=Novena_Main_Page"))
		   "Kosagi (Sutajio Ko-Usagi Pte Ltd)")
		" (hardware)")
	    (li "Mark H Weaver (hosting)"))))
	 (tr
	  (td "redhill")
	  (td "armhf-linux")
	  (td
	   (ul
	    (li (a (@ (href "http://www.kosagi.com/w/index.php?title=Novena_Main_Page"))
		   "Kosagi (Sutajio Ko-Usagi Pte Ltd)")
		" (hardware)")
	    (li "Andreas Enge (hosting)")))))))

      (p "Other organizations and individuals helped Guix with hardware and
hosting in the past and we thank them: "
         (a (@ (href "https://www.fsf.org")) "Free Software Foundation") ", "
         (a (@ (href "https://es.gnu.org")) "GNU España") ", "
         (a (@ (href "https://fsffrance.org/index.en.html")) "FSF France") ", "
         (a (@ (href "https://gnunet.org/fsnsg")) "Free Secure Network Systems Group")
         " at the "
         (a (@ (href "https://www.tum.de/")) "Technische Universität München")
         ".")))))
