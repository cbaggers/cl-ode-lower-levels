(in-package :cl-ode-lower-levels)

(cffi:defcallback near-callback :void ((data :pointer)
                                       (o1 :pointer)
                                       (o2 :pointer))
  )

(cffi:defcallback near-callback :void
    ((data :pointer) (o1 dgeomid) (o2 dgeomid))
  )



(cffi:defcallback moved-callback :void ((body :pointer))
  )


(cffi:defcallback geom-dtor-fn :void
    ((o dgeomid))
  )


(cffi:defcallback collider-fn :int
    ((o1 dgeomid) (o2 dgeomid) (flags :int) (contact (:pointer dcontactgeom)) (skip :int))
  )

(cffi:defcallback near-callback :void
    ((data :pointer) (o1 dgeomid) (o2 dgeomid))
  )

(cffi:defcallback tri-callback :int
    ((trimesh dgeomid) (refobject dgeomid) (triangleindex :int))
  )

(cffi:defcallback tri-array-callback :void
    ((trimesh dgeomid) (refobject dgeomid) (triindices (:pointer :int)) (tricount :int))
  )

(cffi:defcallback tri-ray-callback :int
    ((trimesh dgeomid) (ray dgeomid) (triangleindex :int) (u dreal) (v dreal))
  )

(cffi:defcallback tri-tri-merge-callback :int
    ((trimesh dgeomid) (firsttriangleindex :int) (secondtriangleindex :int))
  )

(cffi:defcallback heightfield-get-height (:pointer dreal)
    ((userdata :pointer) (x :int) (z :int))
  )

(cffi:defcallback collider-fn :int
    ((o1 dgeomid) (o2 dgeomid) (flags :int) (contact (:pointer dcontactgeom)) (skip :int))
  )

(cffi:defcallback aabb-test-fn :int
    ((o1 dgeomid) (o2 dgeomid) (aabb2 (:pointer dreal)))
  )

(cffi:defcallback get-aabb-fn :void
    ((g dgeomid) (aabb (:pointer dreal)))
  )


;;----------------------------------------------------------------------
;; TODO
;;
;;
;; Dont know how to support va_lists yet
;; read here when you are bothered:
;; https://common-lisp.net/project/cffi/manual/cffi-manual.html#defcenum
;;
;; (cffi:defcallback message-function :void
;;     ((errnum :int) (msg :string) (ap va_list)))
;;
;;
;; wat
;; (cffi:defcallback get-collider-fn-fn dcolliderfn
;;     ((num :int))
;;   )
