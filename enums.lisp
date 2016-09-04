(in-package #:cl-ode-lower-levels)

;;----------------------------------------------------------------------
;; Enums

(defbitfield contact-enum
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

(defcenum error-enum
  (:err-unknown 0)
  :err-iassert
  :err-uassert
  :err-lcp)

(defcenum joint-type-enum
  (:joint-type-none 0)
  :joint-type-ball
  :joint-type-hinge
  :joint-type-slider
  :joint-type-contact
  :joint-type-universal
  :joint-type-hinge-2
  :joint-type-fixed
  :joint-type-null
  :joint-type-amotor
  :joint-type-lmotor
  :joint-type-plane-2d
  :joint-type-pr
  :joint-type-pu
  :joint-type-piston
  :joint-type-dball
  :joint-type-dhinge
  :joint-type-transmission)

(defcenum class-numbers-enum
  (:sphere-class 0)
  (:box-class 1)
  (:capsule-class 2)
  (:cylinder-class 3)
  (:plane-class 4)
  (:ray-class 5)
  (:convex-class 6)
  (:geom-transform-class 7)
  (:tri-mesh-class 8)
  (:heightfield-class 9)
  (:first-space-class 10)
  (:simple-space-class 10)
  (:hash-space-class 11)
  (:sweep-and-prune-space-class 12)
  (:quad-tree-space-class 13)
  (:last-space-class 13)
  (:first-user-class 14)
  (:last-user-class 17)
  (:geom-num-classes 18))

(defcenum init-odeflags-enum
  (:init-flag-manual-thread-cleanup 1))

(defcenum allocate-odedata-flags-enum
  (:allocate-flag-basic-data 0)
  (:allocate-flag-collision-data 1)
  (:allocate-mask-all -1))

(defcenum contact-enum
  (:contact-mu-2 1) ;; Use axis dependent friction */
  (:contact-axis-dep 1) ;; Same as above */
  (:contact-fdir-1 2) ;; Use FDir for the first friction value */
  (:contact-bounce 4) ;; Restore collision energy anti-parallel to the normal */
  (:contact-soft-erp 8) ;; Don't use global erp for penetration reduction */
  (:contact-soft-cfm 16) ;; Don't use global cfm for penetration constraint */
  (:contact-motion-1 32) ;; Use a non-zero target velocity for the constraint */
  (:contact-motion-2 64)
  (:contact-motion-n 128)
  (:contact-slip-1 256) ;; Force-dependent slip
  (:contact-slip-2 512)
  (:contact-rolling 1024) ;; Rolling/Angular friction
  (:contact-approx-0 0)
  (:contact-approx-1-1 4096)
  (:contact-approx-1-2 8192)
  (:contact-approx-1-n 16384) ;; For rolling friction
  (:contact-approx-1 28672))

(defcenum transmission-enum
  (:transmission-parallel-axes 0)
  (:transmission-intersecting-axes 1)
  (:transmission-chain-drive 2))

(defcenum amotor-enum
  (:amotor-user 0)
  (:amotor-euler 1))

(defcenum param-enum
  (:param-lo-stop 0)
  :param-hi-stop
  :param-vel
  :param-lo-vel
  :param-hi-vel
  :param-fmax
  :param-fudge-factor
  :param-bounce
  :param-cfm
  :param-stop-erp
  :param-stop-cfm
  :param-suspension-erp
  :param-suspension-cfm
  :param-erp
  :params-in-group
  (:param-group-1 0)
  (:param-lo-stop-1 0)
  :param-hi-stop-1
  :param-vel-1
  :param-lo-vel-1
  :param-hi-vel-1
  :param-fmax-1
  :param-fudge-factor-1
  :param-bounce-1
  :param-cfm-1
  :param-stop-erp-1
  :param-stop-cfm-1
  :param-suspension-erp-1
  :param-suspension-cfm-1
  :param-erp-1
  (:param-group-2 256)
  (:param-lo-stop-2 256)
  :param-hi-stop-2
  :param-vel-2
  :param-lo-vel-2
  :param-hi-vel-2
  :param-fmax-2
  :param-fudge-factor-2
  :param-bounce-2
  :param-cfm-2
  :param-stop-erp-2
  :param-stop-cfm-2
  :param-suspension-erp-2
  :param-suspension-cfm-2
  :param-erp-2
  (:param-group-3 512)
  (:param-lo-stop-3 512)
  :param-hi-stop-3
  :param-vel-3
  :param-lo-vel-3
  :param-hi-vel-3
  :param-fmax-3
  :param-fudge-factor-3
  :param-bounce-3
  :param-cfm-3
  :param-stop-erp-3
  :param-stop-cfm-3
  :param-suspension-erp-3
  :param-suspension-cfm-3
  :param-erp-3
  (:param-group 256))

(defcenum trimesh-enum
  :trimesh-face-normals)

(defcenum maximums-enum
  (:max-user-classes 4))

(defcenum geom-collider-merge-contacts-enum
  (:geom-collider-merge-contacts-value--default 0)
  (:geom-collider-merge-contacts-value-none 1)
  (:geom-collider-merge-contacts-value-normals 2)
  (:geom-collider-merge-contacts-value-full 3))

(defcenum geom-control-code-enum
  (:geom-common-any-control-code 0)
  (:geom-collider-set-merge-sphere-contacts-control-code 1)
  (:geom-collider-get-merge-sphere-contacts-control-code 2))

(defcenum geom-control-class-enum
  (:geom-common-control-class 0)
  (:geom-collider-control-class 1))

;; NOTE
;;
;; There are 2 places we can get a clash when we remove prefixes
;; - control-class  (and +geom-common-control-class+ +geom-collider-control-class+)
;; - bounce         (and +param-bounce+ +contact-bounce+)
;;
;; Another note..
;;
;; This shouldnt matter, they have their own type names, it's all :ints at the
;; end of the day
