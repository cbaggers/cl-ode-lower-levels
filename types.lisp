(in-package #:cl-ode-lower-levels)

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

(define-foreign-type trimesh-data-type nil nil (:actual-type dgeomid)
                     (:simple-parser dtrimeshdataid))

(define-foreign-type height-field-data-type nil nil (:actual-type dgeomid)
                     (:simple-parser dheightfielddataid))


;;----------------------------------------------------------------------
;; Struct types

(defcstruct surface-parameters-struct
  (mode contact-enum)
  (mu dreal)
  (mu-2 dreal)
  (rho dreal)
  (rho-2 dreal)
  (rho-n dreal)
  (bounce dreal)
  (bounce-vel dreal)
  (soft-erp dreal)
  (soft-cfm dreal)
  (motion-1 dreal)
  (motion-2 dreal)
  (motion-n dreal)
  (slip-1 dreal)
  (slip-2 dreal))

(define-foreign-type surface-parameters-type nil nil (:actual-type :pointer)
                     (:simple-parser dsurfaceparameters))

;;----

(defcstruct contact-geometry-struct
  (pos dvector3)
  (normal dvector3)
  (depth dreal)
  (g-1 dgeomid)
  (g-2 dgeomid)
  (side-1 :int)
  (side-2 :int))

(define-foreign-type contact-geometry-type nil nil (:actual-type :pointer)
                     (:simple-parser dcontactgeom))


;;----

(defcstruct contact-struct
  (surface (:struct surface-parameters-struct))
  (geom (:struct contact-geometry-struct))
  (fdir-1 dvector3))

(define-foreign-type contact-type nil nil (:actual-type :pointer)
                     (:simple-parser dcontact))

;;----

(defcstruct mass-struct
  (mass dreal)
  (center dvector3)
  (inertia dmatrix3))

(define-foreign-type mass-type nil nil (:actual-type :pointer)
                     (:simple-parser dmass))

;;----

(cffi:defcstruct joint-feedback-struct
  (f-1 dvector3)
  (t-1 dvector3)
  (f-2 dvector3)
  (t-2 dvector3))

(define-foreign-type joint-feedback-type nil nil (:actual-type :pointer)
                     (:simple-parser djointfeedback))

;;----

(cffi:defcstruct geom-class-struct
  (bytes :int) ;; bytes of custom data needed
  (collider :pointer) ;; dGetColliderFnFn* - collider function
  (aabb :pointer) ;; dGetAABBFn* - bounding box function
  (aabb-test :pointer) ;; dAABBTestFn* - aabb tester, can be 0 for none
  (tor :pointer))

(define-foreign-type geom-class-type nil nil (:actual-type :pointer)
                     (:simple-parser dgeomclass))
