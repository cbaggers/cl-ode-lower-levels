(in-package :cl-ode-lower-levels)

(cffi:defcallback near-callback :void ((data :pointer)
                                       (o1 :pointer)
                                       (o2 :pointer))
  )


(cffi:defcallback moved-callback :void ((body :pointer))
  )
