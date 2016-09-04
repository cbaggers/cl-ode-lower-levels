(in-package #:cl-ode-lower-levels)

(defvar *initialized* nil)

(defun init ()
  "Initializes ODE and returns T. If already initialized it returns NIL"
  (if (is-initialized?)
      (progn
        (warn "Will not attempt to initalize cl-ode as it seems to already be initialized")
        nil)
      (progn
        (init-ode)
        (setf *initialized* t)
        t)))

(defun uninit ()
  "Uninitializes ODE and returns T. If not initialized it returns NIL"
  (when (is-initialized?)
    (close-ode)
    (setf *initialized* nil)
    t))

(defun is-initialized? ()
  *initialized*)
