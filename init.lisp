(in-package #:cl-ode-lower-levels)

(defvar *initialized* nil)

(defun init ()
  (if (is-initialized?)
      (warn "Will not attempt to initalize cl-ode as it seems to already be initialized")
      (progn
        (init-ode)
        (setf *initialized* t)
        (setf *object-hash* (make-hash-table :test 'equal))
        t)))

(defun uninit ()
  (when (is-initialized?)
    (close-ode)
    (setf *initialized* nil))
  (setf *object-hash* nil))

(defun is-initialized? ()
  *initialized*)
