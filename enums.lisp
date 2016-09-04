(in-package #:cl-ode-lower-levels)

;;----------------------------------------------------------------------
;; Enums

(defbitfield Contact-Enum
  (:mu2		   #x001)
  (:contactaxisdep #x001)
  (:fdir1	   #x002)
  (:bounce	   #x004)
  (:soft-erp	   #x008)
  (:soft-cfm	   #x010)
  (:motion1	   #x020)
  (:motion2	   #x040)
  (:motionn	   #x080)
  (:slip1	   #x100)
  (:slip2	   #x200)
  (:rolling        #x400)
  ;;(:approx0	   #x0000)
  (:approx1-1	   #x1000)
  (:approx1-2	   #x2000)
  (:approx1-n      #x4000)
  (:approx1        #x7000))
