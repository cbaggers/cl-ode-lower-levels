(in-package #:cl-ode-lower-levels)

;;----------------------------------------------------------------------
;; Helper macros

(defmacro create-pointer-type (name id)
  (let ((type-name (intern (string-upcase (concatenate 'string (princ-to-string name) "-TYPE")))))
    `(define-foreign-type ,type-name () ()
                          (:actual-type :pointer)
                          (:simple-parser ,id))))

(defmacro create-pointer-subclass (name id parent-id)
  (let ((type-name (intern (string-upcase (concatenate 'string (princ-to-string name) "-TYPE")))))
    `(define-foreign-type ,type-name () ()
                          (:actual-type ,parent-id)
                          (:simple-parser ,id))))


(defmacro struct-slot (name type slot)
  `(defmacro ,name (this)
     `(foreign-slot-value (slot-value ,this 'pointer)
                          ',,type ',,slot)))

(defmacro create-struct-class ((name id) &body members)
  (let ((type-name (intern (string-upcase (concatenate 'string (princ-to-string name) "-TYPE"))))
	(struct-name (intern (string-upcase (concatenate 'string (princ-to-string name) "-STRUCT")))))
    `(progn
       (defcstruct ,struct-name
         ,@members)
       (define-foreign-type ,type-name () ()
                            (:actual-type :pointer)
                            (:simple-parser ,id)))))
