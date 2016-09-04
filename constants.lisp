(in-package #:cl-ode-lower-levels)

(defmacro infinity ()
  `(if (eql +ode-precision+ :single)
       (progn
         #+sbcl sb-ext:single-float-positive-infinity
         #+clozure 1S++0
         #+abcl ext:single-float-positive-infinity
         #+allegro excl::*infinity-single*
         #+cmu ext:single-float-positive-infinity
         #+(and ecl (not infinity-not-available)) si:single-float-positive-infinity
         #+lispworks (coerce infinity$$ 'single-float)
         #+scl ext:single-float-positive-infinity
         #+t most-positive-single-float)
       (progn
         #+sbcl sb-ext:double-float-positive-infinity
         #+clozure 1D++0
         #+abcl ext:double-float-positive-infinity
         #+allegro excl::*infinity-double*
         #+cmu ext:double-float-positive-infinity
         #+(and ecl (not infinity-not-available)) si:double-float-positive-infinity
         #+lispworks #.(read-from-string "10E999")
         #+scl ext:double-float-positive-infinity
         #+t most-positive-double-float)))

(defconstant +ode-infinity+ (infinity))

(defconstant +single+ 1)

(defconstant +worldstep-threadcount-unlimited+ 0)

(defconstant +worldstep-reservefactor-default+ 1.2d0)

(defconstant +worldstep-reservesize-default+ 65536)

(defconstant +sap-axes-xyz+ (logior 0 (ash 1 2) (ash 2 4)))

(defconstant +sap-axes-xzy+ (logior 0 (ash 2 2) (ash 1 4)))

(defconstant +sap-axes-yxz+ (logior 1 (ash 0 2) (ash 2 4)))

(defconstant +sap-axes-yzx+ (logior 1 (ash 2 2) (ash 0 4)))

(defconstant +sap-axes-zxy+ (logior 2 (ash 0 2) (ash 1 4)))

(defconstant +sap-axes-zyx+ (logior 2 (ash 1 2) (ash 0 4)))

(defconstant +contacts-unimportant+ 2147483648)
