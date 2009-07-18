;;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; indent-tabs-mode: nil -*-

(asdf:defsystem :iolib.base
  :description "Base IOlib package, used instead of CL."
  :author "Stelian Ionescu <sionescu@common-lisp.net>"
  :maintainer "Stelian Ionescu <sionescu@common-lisp.net>"
  :licence "MIT"
  :depends-on (:alexandria)
  :pathname (merge-pathnames #p"base/" *load-truename*)
  :components
  ((:file "pkgdcl")
   (:file "return-star" :depends-on ("pkgdcl"))
   (:file "types" :depends-on ("pkgdcl" "return-star"))
   (:file "definitions" :depends-on ("pkgdcl" "return-star"))
   (:file "debug" :depends-on ("pkgdcl" "return-star"))
   (:file "conditions" :depends-on ("pkgdcl" "return-star"))
   (:file "defobsolete" :depends-on ("pkgdcl" "return-star"))
   (:file "reader" :depends-on ("pkgdcl" "return-star" "conditions"))
   (:file "sequence" :depends-on ("pkgdcl" "return-star"))
   (:file "matching" :depends-on ("pkgdcl" "return-star"))
   (:file "time" :depends-on ("pkgdcl" "return-star"))
   (:file "split-sequence" :depends-on ("pkgdcl" "return-star" "sequence"))
   (:file "uchars" :depends-on ("pkgdcl" "definitions" "sequence" "split-sequence"))
   (:file "ustrings" :depends-on ("pkgdcl" "sequence" "split-sequence" "uchars"))
   #+scl (:file "scl-gray-streams")
   (:file "gray-stream-mixin"
          :depends-on ("pkgdcl" "return-star" #+scl "scl-gray-streams"))))
