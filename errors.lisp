(in-package #:cl-ode-lower-levels)

(define-condition ode-error (error)
  ((error-string :initarg :error-string :reader error-string))
  (:report (lambda (c stream)
	     (format stream "ode function returned error ~A"
		     (error-string c)))))
