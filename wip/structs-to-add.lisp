

(cffi:defcstruct world-step-reserve-info-struct
  (struct-size :unsigned-int)
  (reserve-factor :float)
  (reserve-minimum :unsigned-int))

(cffi:defcstruct world-step-memory-functions-info-struct
  (struct-size :unsigned-int)
  (alloc-block :pointer)
  (shrink-block :pointer)
  (free-block :pointer))
