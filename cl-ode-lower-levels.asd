;;;; cl-ode-lower-levels.asd

(asdf:defsystem #:cl-ode-lower-levels
  :description "The low level abstraction over ODE that cl-ode uses"
  :author "Chris Bagley (Baggers)"
  :license "MIT"
  :depends-on (#:cffi)
  :serial t
  :components ((:file "package")
               (:file "errors")
	       (:file "library")
               (:file "type-helper-macros")
               (:file "types")
               (:file "data")
               (:file "bindings")
               (:file "callbacks")
               (:file "init")))
