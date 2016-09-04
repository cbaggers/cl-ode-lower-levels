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

;;----------------------------------------------------------------------
;; CTypes

(defctype dvector3 (:array dreal 4))
(defctype dvector4 (:array dreal 4))
(defctype dmatrix3 (:array dreal 12))
(defctype dmatrix4 (:array dreal 16))
(defctype dmatrix6 (:array dreal 48))
(defctype dquaternion (:array dreal 4))

;;----------------------------------------------------------------------

(define-foreign-type world-type nil nil (:actual-type :pointer)
                     (:simple-parser dworldid))

(define-foreign-type geometry-type nil nil (:actual-type :pointer)
                     (:simple-parser dgeomid))

(define-foreign-type pspace-type nil nil (:actual-type :pointer)
                     (:simple-parser dspaceid))

(define-foreign-type body-type nil nil (:actual-type :pointer)
                     (:simple-parser dbodyid))

(define-foreign-type geometry-type nil nil (:actual-type :pointer)
                     (:simple-parser dgeomid))

(define-foreign-type joint-type nil nil (:actual-type :pointer)
                     (:simple-parser djointid))

(define-foreign-type joint-group-type nil nil (:actual-type :pointer)
                     (:simple-parser djointgroupid))

(define-foreign-type pspace-type nil nil (:actual-type :pointer)
                     (:simple-parser dspaceid))

(define-foreign-type sphere-type nil nil (:actual-type dgeomid)
                     (:simple-parser dsphereid))

(define-foreign-type box-type nil nil (:actual-type dgeomid)
                     (:simple-parser dboxid))

(define-foreign-type plane-type nil nil (:actual-type dgeomid)
                     (:simple-parser dplaneid))

(define-foreign-type cylinder-type nil nil (:actual-type dgeomid)
                     (:simple-parser dcylinderid))

(define-foreign-type capsule-type nil nil (:actual-type dgeomid)
                     (:simple-parser dcapsuleid))

(define-foreign-type ray-type nil nil (:actual-type dgeomid)
                     (:simple-parser drayid))

(define-foreign-type hash-space-type nil nil (:actual-type dspaceid)
                     (:simple-parser dhashspaceid))

(define-foreign-type quad-space-type nil nil (:actual-type dspaceid)
                     (:simple-parser dquadspaceid))

(define-foreign-type sphere-type nil nil (:actual-type dgeomid)
                     (:simple-parser dsphereid))

(define-foreign-type box-type nil nil (:actual-type dgeomid)
                     (:simple-parser dboxid))

(define-foreign-type plane-type nil nil (:actual-type dgeomid)
                     (:simple-parser dplaneid))

(define-foreign-type cylinder-type nil nil (:actual-type dgeomid)
                     (:simple-parser dcylinderid))

(define-foreign-type capsule-type nil nil (:actual-type dgeomid)
                     (:simple-parser dcapsuleid))

(define-foreign-type convex-type nil nil (:actual-type dgeomid)
                     (:simple-parser dconvexid))

(define-foreign-type contact-joint-type nil nil (:actual-type djointid)
                     (:simple-parser dcontactjointid))

(define-foreign-type ray-type nil nil (:actual-type dgeomid)
                     (:simple-parser drayid))

(define-foreign-type hash-space-type nil nil (:actual-type dspaceid)
                     (:simple-parser dhashspaceid))

(define-foreign-type quad-space-type nil nil (:actual-type dspaceid)
                     (:simple-parser dquadspaceid))

(defcstruct mass-struct
  (mass dreal)
  (center dvector3)
  (inertia dmatrix3))

(define-foreign-type mass-type nil nil (:actual-type :pointer)
                     (:simple-parser dmass))

;;----------------------------------------------------------------------
;; Struct types

(defcstruct surface-parameters-struct
  (mode contact-enum)
  (mu dreal)
  (mu2 dreal)
  (rho dreal)
  (rho2 dreal)
  (rhon dreal)
  (bounce dreal)
  (bounce-vel dreal)
  (soft-erp dreal)
  (soft-cfm dreal)
  (motion1 dreal)
  (motion2 dreal)
  (motionn dreal)
  (slip1 dreal)
  (slip2 dreal))

(define-foreign-type surface-parameters-type nil nil (:actual-type :pointer)
                     (:simple-parser dsurfaceparameters))

(defcstruct contact-geometry-struct
  (pos dvector3)
  (normal dvector3)
  (depth dreal)
  (g1 dgeomid)
  (g2 dgeomid)
  (side1 :int)
  (side2 :int))

(define-foreign-type contact-geometry-type nil nil (:actual-type :pointer)
                     (:simple-parser dcontactgeom))

(defcstruct contact-struct
  (surface (:struct surface-parameters-struct))
  (geom (:struct contact-geometry-struct))
  (fdir1 dvector3))

(define-foreign-type contact-type nil nil (:actual-type :pointer)
                     (:simple-parser dcontact))
