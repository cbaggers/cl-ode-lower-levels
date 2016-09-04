(cffi:defcstruct joint-feedback-struct
  (f-1 :pointer)
  (t-1 :pointer)
  (f-2 :pointer)
  (t-2 :pointer))



(cffi:defcstruct contact-geom-struct
  (pos :pointer)
  (normal :pointer)
  (epth :float)
  (g-1 :pointer)
  (g-2 :pointer)
  (side-1 :int)
  (side-2 :int))

(cffi:defcstruct contact-struct
  (surface surface-parameters)
  (geom contact-geom)
  (fdir-1 :pointer))

(cffi:defcstruct mass-struct
  (mass :float)
  (c :pointer)
  (i :pointer))

(cffi:defcstruct world-step-reserve-info-struct
  (struct-size :unsigned-int)
  (reserve-factor :float)
  (reserve-minimum :unsigned-int))

(cffi:defcstruct world-step-memory-functions-info-struct
  (struct-size :unsigned-int)
  (alloc-block :pointer)
  (shrink-block :pointer)
  (free-block :pointer))

(cffi:defcstruct geom-class-struct
  (bytes :int)
  (collider :pointer)
  (aabb :pointer)
  (aabb-test :pointer)
  (tor :pointer))
