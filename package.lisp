;;;; package.lisp
(declaim (optimize (speed 3)))

(uiop:define-package #:cl-ode-lower-levels
    (:use #:cl #:cffi)
    (:nicknames #:%ode)
    (:export
     ;;
     #:dreal #:dmass #:dvector3 #:dvector4 #:dmatrix3 #:dmatrix4 #:dmatrix6
     #:dworldid #:dspaceid #:dbodyid #:dgeomid #:djointid #:djointgroupid
     #:dsurfaceparameters #:dcontactgeom #:dcontact
     #:set-transform
     #:*physics-world*
     #:*physics-space*
     #:*physics-contact-group
     #:*physics-max-contacts*
     #:*physics-geometry-hash*

     #:get-transform
     #:mode-options
     #:physics-mass
     #:unload
     #:physics-body
     #:physics-object
     #:physics-sphere
     #:physics-box
     #:physics-cylinder
     #:physics-capsule
     #:physics-plane
     #:init
     #:physics-step
     #:uninit
     #:is-initialized?
     #:body #:pointer
     #:enabled

     #:box-indexes #:box-vertexes #:box-normals #:box-texcoords #:sphere-indexes
     #:sphere-vertexes #:sphere-normals
     #:cylinder-indexes #:cylinder-vertexes #:cylinder-normals
     #:ref #:unref
     #:set-position
     #:close-callback
     #:update
     #:ray-length #:physics-spring #:springiness #:damping
     #:horizontal #:vertical #:load-player-camera))
