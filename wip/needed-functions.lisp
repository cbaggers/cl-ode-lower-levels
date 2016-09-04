(in-package #:cl-ode-lower-levels)

(cffi:defcfun ("dOdeError" ode-error)
    :void
  (arg0 :int)
  (arg1 :string))

(cffi:defcfun ("dOdeDebug" ode-debug)
    :void
  (arg0 :int)
  (arg1 :string))

(cffi:defcfun ("dOdeMessage" ode-message)
    :void
  (arg0 :int)
  (arg1 :string))

(cffi:defcfun ("dGeomMoved" geom-moved)
    :void
  (arg0 :pointer))

(cffi:defcfun ("dGeomGetBodyNext" geom-get-body-next)
    :pointer
  (arg0 :pointer))

(cffi:defcfun ("dCheckConfiguration" check-configuration)
    :int
  (token :string))

(cffi:defcfun ("dAllocateODEDataForThread" allocate-odedata-for-thread)
    :int
  (uiallocateflags :unsigned-int))

(cffi:defcfun ("dCleanupODEAllDataForThread" cleanup-odeall-data-for-thread)
    :void)

(cffi:defcfun ("dSetErrorHandler" set-error-handler)
    :void
  (fn :pointer))

(cffi:defcfun ("dSetDebugHandler" set-debug-handler)
    :void
  (fn :pointer))

(cffi:defcfun ("dSetMessageHandler" set-message-handler)
    :void
  (fn :pointer))

(cffi:defcfun ("dGetErrorHandler" get-error-handler)
    :pointer)

(cffi:defcfun ("dGetDebugHandler" get-debug-handler)
    :pointer)

(cffi:defcfun ("dGetMessageHandler" get-message-handler)
    :pointer)

(cffi:defcfun ("dOdeError" ode-error)
    :void
  (num :int)
  (msg :string)
  &rest)

(cffi:defcfun ("dOdeDebug" ode-debug)
    :void
  (num :int)
  (msg :string)
  &rest)

(cffi:defcfun ("dOdeMessage" ode-message)
    :void
  (num :int)
  (msg :string)
  &rest)

(cffi:defcfun ("dSetAllocHandler" set-alloc-handler)
    :void
  (fn :pointer))

(cffi:defcfun ("dSetReallocHandler" set-realloc-handler)
    :void
  (fn :pointer))

(cffi:defcfun ("dSetFreeHandler" set-free-handler)
    :void
  (fn :pointer))

(cffi:defcfun ("dGetAllocHandler" get-alloc-handler)
    :pointer)

(cffi:defcfun ("dGetReallocHandler" get-realloc-handler)
    :pointer)

(cffi:defcfun ("dGetFreeHandler" get-free-handler)
    :pointer)

(cffi:defcfun ("dAlloc" alloc)
    :pointer
  (size :pointer))

(cffi:defcfun ("dRealloc" realloc)
    :pointer
  (ptr :pointer)
  (oldsize :pointer)
  (newsize :pointer))

(cffi:defcfun ("dFree" free)
    :void
  (ptr :pointer)
  (size :pointer))

(cffi:defcfun ("dMassCheck" mass-check)
    :int
  (m :pointer))

(cffi:defcfun ("dMassSetParameters" mass-set-parameters)
    :void
  (arg0 :pointer)
  (themass :float)
  (cgx :float)
  (cgy :float)
  (cgz :float)
  (i11 :float)
  (i22 :float)
  (i33 :float)
  (i12 :float)
  (i13 :float)
  (i23 :float))

(cffi:defcfun ("dMassSetTrimesh" mass-set-trimesh)
    :void
  (arg0 :pointer)
  (density :float)
  (g :pointer))

(cffi:defcfun ("dMassSetTrimeshTotal" mass-set-trimesh-total)
    :void
  (m :pointer)
  (total_mass :float)
  (g :pointer))

(cffi:defcfun ("dMassAdjust" mass-adjust)
    :void
  (arg0 :pointer)
  (newmass :float))

(cffi:defcfun ("dMassTranslate" mass-translate)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dMassRotate" mass-rotate)
    :void
  (arg0 :pointer)
  (r :pointer))

(cffi:defcfun ("dMassAdd" mass-add)
    :void
  (a :pointer)
  (b :pointer))

(cffi:defcfun ("dMassSetCappedCylinder" mass-set-capped-cylinder)
    :void
  (a :pointer)
  (b :float)
  (c :int)
  (d :float)
  (e :float))

(cffi:defcfun ("dMassSetCappedCylinderTotal" mass-set-capped-cylinder-total)
    :void
  (a :pointer)
  (b :float)
  (c :int)
  (d :float)
  (e :float))

(cffi:defcfun ("dWorldGetERP" world-get-erp)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldGetCFM" world-get-cfm)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetStepIslandsProcessingMaxThreadCount"
               world-set-step-islands-processing-max-thread-count)
    :void
  (w :pointer)
  (count :unsigned-int))

(cffi:defcfun ("dWorldGetStepIslandsProcessingMaxThreadCount"
               world-get-step-islands-processing-max-thread-count)
    :unsigned-int
  (w :pointer))

(cffi:defcfun ("dWorldUseSharedWorkingMemory" world-use-shared-working-memory)
    :int
  (w :pointer)
  (from_world :pointer))

(cffi:defcfun ("dWorldCleanupWorkingMemory" world-cleanup-working-memory)
    :void
  (w :pointer))

(cffi:defcfun ("dWorldSetStepMemoryReservationPolicy"
               world-set-step-memory-reservation-policy)
    :int
  (w :pointer)
  (policyinfo :pointer))

(cffi:defcfun ("dWorldSetStepMemoryManager" world-set-step-memory-manager)
    :int
  (w :pointer)
  (memfuncs :pointer))

(cffi:defcfun ("dWorldSetStepThreadingImplementation"
               world-set-step-threading-implementation)
    :void
  (w :pointer)
  (functions_info :pointer)
  (threading_impl :pointer))

(cffi:defcfun ("dWorldImpulseToForce" world-impulse-to-force)
    :void
  (arg0 :pointer)
  (stepsize :float)
  (ix :float)
  (iy :float)
  (iz :float)
  (force :pointer))

(cffi:defcfun ("dWorldSetQuickStepNumIterations"
               world-set-quick-step-num-iterations)
    :void
  (arg0 :pointer)
  (num :int))

(cffi:defcfun ("dWorldGetQuickStepNumIterations"
               world-get-quick-step-num-iterations)
    :int
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetQuickStepW" world-set-quick-step-w)
    :void
  (arg0 :pointer)
  (over_relaxation :float))

(cffi:defcfun ("dWorldGetQuickStepW" world-get-quick-step-w)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetContactMaxCorrectingVel"
               world-set-contact-max-correcting-vel)
    :void
  (arg0 :pointer)
  (vel :float))

(cffi:defcfun ("dWorldGetContactMaxCorrectingVel"
               world-get-contact-max-correcting-vel)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetContactSurfaceLayer" world-set-contact-surface-layer)
    :void
  (arg0 :pointer)
  (depth :float))

(cffi:defcfun ("dWorldGetContactSurfaceLayer" world-get-contact-surface-layer)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldGetAutoDisableLinearThreshold"
               world-get-auto-disable-linear-threshold)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetAutoDisableLinearThreshold"
               world-set-auto-disable-linear-threshold)
    :void
  (arg0 :pointer)
  (linear_threshold :float))

(cffi:defcfun ("dWorldGetAutoDisableAngularThreshold"
               world-get-auto-disable-angular-threshold)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetAutoDisableAngularThreshold"
               world-set-auto-disable-angular-threshold)
    :void
  (arg0 :pointer)
  (angular_threshold :float))

(cffi:defcfun ("dWorldGetAutoDisableLinearAverageThreshold"
               world-get-auto-disable-linear-average-threshold)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetAutoDisableLinearAverageThreshold"
               world-set-auto-disable-linear-average-threshold)
    :void
  (arg0 :pointer)
  (linear_average_threshold :float))

(cffi:defcfun ("dWorldGetAutoDisableAngularAverageThreshold"
               world-get-auto-disable-angular-average-threshold)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetAutoDisableAngularAverageThreshold"
               world-set-auto-disable-angular-average-threshold)
    :void
  (arg0 :pointer)
  (angular_average_threshold :float))

(cffi:defcfun ("dWorldGetAutoDisableAverageSamplesCount"
               world-get-auto-disable-average-samples-count)
    :int
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetAutoDisableAverageSamplesCount"
               world-set-auto-disable-average-samples-count)
    :void
  (arg0 :pointer)
  (average_samples_count :unsigned-int))

(cffi:defcfun ("dWorldGetAutoDisableSteps" world-get-auto-disable-steps)
    :int
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetAutoDisableSteps" world-set-auto-disable-steps)
    :void
  (arg0 :pointer)
  (steps :int))

(cffi:defcfun ("dWorldGetAutoDisableTime" world-get-auto-disable-time)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetAutoDisableTime" world-set-auto-disable-time)
    :void
  (arg0 :pointer)
  (time :float))

(cffi:defcfun ("dWorldGetLinearDamping" world-get-linear-damping)
    :float
  (w :pointer))

(cffi:defcfun ("dWorldGetAngularDamping" world-get-angular-damping)
    :float
  (w :pointer))

(cffi:defcfun ("dWorldGetMaxAngularSpeed" world-get-max-angular-speed)
    :float
  (w :pointer))

(cffi:defcfun ("dWorldSetMaxAngularSpeed" world-set-max-angular-speed)
    :void
  (w :pointer)
  (max_speed :float))

(cffi:defcfun ("dBodySetData" body-set-data)
    :void
  (arg0 :pointer)
  (data :pointer))

(cffi:defcfun ("dBodyGetData" body-get-data)
    :pointer
  (arg0 :pointer))

(cffi:defcfun ("dBodyCopyPosition" body-copy-position)
    :void
  (body :pointer)
  (pos :pointer))

(cffi:defcfun ("dBodyCopyRotation" body-copy-rotation)
    :void
  (arg0 :pointer)
  (r :pointer))

(cffi:defcfun ("dBodyCopyQuaternion" body-copy-quaternion)
    :void
  (body :pointer)
  (quat :pointer))

(cffi:defcfun ("dBodyGetRelPointPos" body-get-rel-point-pos)
    :void
  (arg0 :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dBodyGetRelPointVel" body-get-rel-point-vel)
    :void
  (arg0 :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dBodyGetPointVel" body-get-point-vel)
    :void
  (arg0 :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dBodyGetPosRelPoint" body-get-pos-rel-point)
    :void
  (arg0 :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dBodySetFiniteRotationMode" body-set-finite-rotation-mode)
    :void
  (arg0 :pointer)
  (mode :int))

(cffi:defcfun ("dBodySetFiniteRotationAxis" body-set-finite-rotation-axis)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dBodyGetFiniteRotationMode" body-get-finite-rotation-mode)
    :int
  (arg0 :pointer))

(cffi:defcfun ("dBodyGetFiniteRotationAxis" body-get-finite-rotation-axis)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dBodyGetNumJoints" body-get-num-joints)
    :int
  (b :pointer))

(cffi:defcfun ("dBodyGetJoint" body-get-joint)
    :pointer
  (arg0 :pointer)
  (index :int))

(cffi:defcfun ("dBodySetGravityMode" body-set-gravity-mode)
    :void
  (b :pointer)
  (mode :int))

(cffi:defcfun ("dBodyGetGravityMode" body-get-gravity-mode)
    :int
  (b :pointer))

(cffi:defcfun ("dBodySetDampingDefaults" body-set-damping-defaults)
    :void
  (b :pointer))

(cffi:defcfun ("dBodyGetLinearDampingThreshold"
               body-get-linear-damping-threshold)
    :float
  (b :pointer))

(cffi:defcfun ("dBodySetLinearDampingThreshold"
               body-set-linear-damping-threshold)
    :void
  (b :pointer)
  (threshold :float))

(cffi:defcfun ("dBodyGetAngularDampingThreshold"
               body-get-angular-damping-threshold)
    :float
  (b :pointer))

(cffi:defcfun ("dBodySetAngularDampingThreshold"
               body-set-angular-damping-threshold)
    :void
  (b :pointer)
  (threshold :float))

(cffi:defcfun ("dBodyGetMaxAngularSpeed" body-get-max-angular-speed)
    :float
  (b :pointer))

(cffi:defcfun ("dBodyGetGyroscopicMode" body-get-gyroscopic-mode)
    :int
  (b :pointer))

(cffi:defcfun ("dBodySetGyroscopicMode" body-set-gyroscopic-mode)
    :void
  (b :pointer)
  (enabled :int))

(cffi:defcfun ("dJointCreateBall" joint-create-ball)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateHinge" joint-create-hinge)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateSlider" joint-create-slider)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateHinge2" joint-create-hinge-2)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateUniversal" joint-create-universal)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreatePR" joint-create-pr)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreatePU" joint-create-pu)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreatePiston" joint-create-piston)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateFixed" joint-create-fixed)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateNull" joint-create-null)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateAMotor" joint-create-amotor)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateLMotor" joint-create-lmotor)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreatePlane2D" joint-create-plane-2d)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateDBall" joint-create-dball)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateDHinge" joint-create-dhinge)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateTransmission" joint-create-transmission)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointDestroy" joint-destroy)
    :void
  (arg0 :pointer))

(cffi:defcfun ("dJointGetNumBodies" joint-get-num-bodies)
    :int
  (arg0 :pointer))

(cffi:defcfun ("dJointEnable" joint-enable)
    :void
  (arg0 :pointer))

(cffi:defcfun ("dJointDisable" joint-disable)
    :void
  (arg0 :pointer))

(cffi:defcfun ("dJointIsEnabled" joint-is-enabled)
    :int
  (arg0 :pointer))

(cffi:defcfun ("dJointSetData" joint-set-data)
    :void
  (arg0 :pointer)
  (data :pointer))

(cffi:defcfun ("dJointGetData" joint-get-data)
    :pointer
  (arg0 :pointer))

(cffi:defcfun ("dJointGetBody" joint-get-body)
    :pointer
  (arg0 :pointer)
  (index :int))

(cffi:defcfun ("dJointSetFeedback" joint-set-feedback)
    :void
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointGetFeedback" joint-get-feedback)
    :pointer
  (arg0 :pointer))

(cffi:defcfun ("dJointSetBallAnchor" joint-set-ball-anchor)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetBallAnchor2" joint-set-ball-anchor-2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetBallParam" joint-set-ball-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointSetHingeAnchor" joint-set-hinge-anchor)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetHingeAnchorDelta" joint-set-hinge-anchor-delta)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (ax :float)
  (ay :float)
  (az :float))

(cffi:defcfun ("dJointSetHingeAxis" joint-set-hinge-axis)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetHingeAxisOffset" joint-set-hinge-axis-offset)
    :void
  (j :pointer)
  (x :float)
  (y :float)
  (z :float)
  (angle :float))

(cffi:defcfun ("dJointSetHingeParam" joint-set-hinge-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointAddHingeTorque" joint-add-hinge-torque)
    :void
  (joint :pointer)
  (torque :float))

(cffi:defcfun ("dJointSetSliderAxis" joint-set-slider-axis)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetSliderAxisDelta" joint-set-slider-axis-delta)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (ax :float)
  (ay :float)
  (az :float))

(cffi:defcfun ("dJointSetSliderParam" joint-set-slider-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointAddSliderForce" joint-add-slider-force)
    :void
  (joint :pointer)
  (force :float))

(cffi:defcfun ("dJointSetHinge2Anchor" joint-set-hinge-2anchor)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetHinge2Axis1" joint-set-hinge-2axis-1)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetHinge2Axis2" joint-set-hinge-2axis-2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetHinge2Param" joint-set-hinge-2param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointAddHinge2Torques" joint-add-hinge-2torques)
    :void
  (joint :pointer)
  (torque1 :float)
  (torque2 :float))

(cffi:defcfun ("dJointSetUniversalAnchor" joint-set-universal-anchor)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetUniversalAxis1" joint-set-universal-axis-1)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetUniversalAxis1Offset"
               joint-set-universal-axis-1offset)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (offset1 :float)
  (offset2 :float))

(cffi:defcfun ("dJointSetUniversalAxis2" joint-set-universal-axis-2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetUniversalAxis2Offset"
               joint-set-universal-axis-2offset)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (offset1 :float)
  (offset2 :float))

(cffi:defcfun ("dJointSetUniversalParam" joint-set-universal-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointAddUniversalTorques" joint-add-universal-torques)
    :void
  (joint :pointer)
  (torque1 :float)
  (torque2 :float))

(cffi:defcfun ("dJointSetPRAnchor" joint-set-pranchor)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPRAxis1" joint-set-praxis-1)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPRAxis2" joint-set-praxis-2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPRParam" joint-set-prparam)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointAddPRTorque" joint-add-prtorque)
    :void
  (j :pointer)
  (torque :float))

(cffi:defcfun ("dJointSetPUAnchor" joint-set-puanchor)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPUAnchorDelta" joint-set-puanchor-delta)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (dx :float)
  (dy :float)
  (dz :float))

(cffi:defcfun ("dJointSetPUAnchorOffset" joint-set-puanchor-offset)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (dx :float)
  (dy :float)
  (dz :float))

(cffi:defcfun ("dJointSetPUAxis1" joint-set-puaxis-1)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPUAxis2" joint-set-puaxis-2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPUAxis3" joint-set-puaxis-3)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPUAxisP" joint-set-puaxis-p)
    :void
  (id :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPUParam" joint-set-puparam)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointAddPUTorque" joint-add-putorque)
    :void
  (j :pointer)
  (torque :float))

(cffi:defcfun ("dJointSetPistonAnchor" joint-set-piston-anchor)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPistonAnchorOffset" joint-set-piston-anchor-offset)
    :void
  (j :pointer)
  (x :float)
  (y :float)
  (z :float)
  (dx :float)
  (dy :float)
  (dz :float))

(cffi:defcfun ("dJointSetPistonAxis" joint-set-piston-axis)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPistonAxisDelta" joint-set-piston-axis-delta)
    :void
  (j :pointer)
  (x :float)
  (y :float)
  (z :float)
  (ax :float)
  (ay :float)
  (az :float))

(cffi:defcfun ("dJointSetPistonParam" joint-set-piston-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointAddPistonForce" joint-add-piston-force)
    :void
  (joint :pointer)
  (force :float))

(cffi:defcfun ("dJointSetFixed" joint-set-fixed)
    :void
  (arg0 :pointer))

(cffi:defcfun ("dJointSetFixedParam" joint-set-fixed-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointSetAMotorNumAxes" joint-set-amotor-num-axes)
    :void
  (arg0 :pointer)
  (num :int))

(cffi:defcfun ("dJointSetAMotorAxis" joint-set-amotor-axis)
    :void
  (arg0 :pointer)
  (anum :int)
  (rel :int)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetAMotorAngle" joint-set-amotor-angle)
    :void
  (arg0 :pointer)
  (anum :int)
  (angle :float))

(cffi:defcfun ("dJointSetAMotorParam" joint-set-amotor-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointSetAMotorMode" joint-set-amotor-mode)
    :void
  (arg0 :pointer)
  (mode :int))

(cffi:defcfun ("dJointAddAMotorTorques" joint-add-amotor-torques)
    :void
  (arg0 :pointer)
  (torque1 :float)
  (torque2 :float)
  (torque3 :float))

(cffi:defcfun ("dJointSetLMotorNumAxes" joint-set-lmotor-num-axes)
    :void
  (arg0 :pointer)
  (num :int))

(cffi:defcfun ("dJointSetLMotorAxis" joint-set-lmotor-axis)
    :void
  (arg0 :pointer)
  (anum :int)
  (rel :int)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetLMotorParam" joint-set-lmotor-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointSetPlane2DXParam" joint-set-plane-2dxparam)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointSetPlane2DYParam" joint-set-plane-2dyparam)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointSetPlane2DAngleParam" joint-set-plane-2dangle-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointGetBallAnchor" joint-get-ball-anchor)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetBallAnchor2" joint-get-ball-anchor-2)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetBallParam" joint-get-ball-param)
    :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetHingeAnchor" joint-get-hinge-anchor)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetHingeAnchor2" joint-get-hinge-anchor-2)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetHingeAxis" joint-get-hinge-axis)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetHingeParam" joint-get-hinge-param)
    :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetHingeAngle" joint-get-hinge-angle)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetHingeAngleRate" joint-get-hinge-angle-rate)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetSliderPosition" joint-get-slider-position)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetSliderPositionRate" joint-get-slider-position-rate)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetSliderAxis" joint-get-slider-axis)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetSliderParam" joint-get-slider-param)
    :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetHinge2Anchor" joint-get-hinge-2anchor)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetHinge2Anchor2" joint-get-hinge-2anchor-2)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetHinge2Axis1" joint-get-hinge-2axis-1)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetHinge2Axis2" joint-get-hinge-2axis-2)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetHinge2Param" joint-get-hinge-2param)
    :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetHinge2Angle1" joint-get-hinge-2angle-1)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetHinge2Angle1Rate" joint-get-hinge-2angle-1rate)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetHinge2Angle2Rate" joint-get-hinge-2angle-2rate)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetUniversalAnchor" joint-get-universal-anchor)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetUniversalAnchor2" joint-get-universal-anchor-2)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetUniversalAxis1" joint-get-universal-axis-1)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetUniversalAxis2" joint-get-universal-axis-2)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetUniversalParam" joint-get-universal-param)
    :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetUniversalAngles" joint-get-universal-angles)
    :void
  (arg0 :pointer)
  (angle1 :pointer)
  (angle2 :pointer))

(cffi:defcfun ("dJointGetUniversalAngle1" joint-get-universal-angle-1)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetUniversalAngle2" joint-get-universal-angle-2)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetUniversalAngle1Rate" joint-get-universal-angle-1rate)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetUniversalAngle2Rate" joint-get-universal-angle-2rate)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPRAnchor" joint-get-pranchor)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPRPosition" joint-get-prposition)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPRPositionRate" joint-get-prposition-rate)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPRAngle" joint-get-prangle)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPRAngleRate" joint-get-prangle-rate)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPRAxis1" joint-get-praxis-1)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPRAxis2" joint-get-praxis-2)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPRParam" joint-get-prparam)
    :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetPUAnchor" joint-get-puanchor)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPUPosition" joint-get-puposition)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPUPositionRate" joint-get-puposition-rate)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPUAxis1" joint-get-puaxis-1)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPUAxis2" joint-get-puaxis-2)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPUAxis3" joint-get-puaxis-3)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPUAxisP" joint-get-puaxis-p)
    :void
  (id :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPUAngles" joint-get-puangles)
    :void
  (arg0 :pointer)
  (angle1 :pointer)
  (angle2 :pointer))

(cffi:defcfun ("dJointGetPUAngle1" joint-get-puangle-1)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPUAngle1Rate" joint-get-puangle-1rate)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPUAngle2" joint-get-puangle-2)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPUAngle2Rate" joint-get-puangle-2rate)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPUParam" joint-get-puparam)
    :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetPistonPosition" joint-get-piston-position)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPistonPositionRate" joint-get-piston-position-rate)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPistonAngle" joint-get-piston-angle)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPistonAngleRate" joint-get-piston-angle-rate)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPistonAnchor" joint-get-piston-anchor)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPistonAnchor2" joint-get-piston-anchor-2)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPistonAxis" joint-get-piston-axis)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPistonParam" joint-get-piston-param)
    :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetAMotorNumAxes" joint-get-amotor-num-axes)
    :int
  (arg0 :pointer))

(cffi:defcfun ("dJointGetAMotorAxis" joint-get-amotor-axis)
    :void
  (arg0 :pointer)
  (anum :int)
  (result :pointer))

(cffi:defcfun ("dJointGetAMotorAxisRel" joint-get-amotor-axis-rel)
    :int
  (arg0 :pointer)
  (anum :int))

(cffi:defcfun ("dJointGetAMotorAngle" joint-get-amotor-angle)
    :float
  (arg0 :pointer)
  (anum :int))

(cffi:defcfun ("dJointGetAMotorAngleRate" joint-get-amotor-angle-rate)
    :float
  (arg0 :pointer)
  (anum :int))

(cffi:defcfun ("dJointGetAMotorParam" joint-get-amotor-param)
    :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetAMotorMode" joint-get-amotor-mode)
    :int
  (arg0 :pointer))

(cffi:defcfun ("dJointGetLMotorNumAxes" joint-get-lmotor-num-axes)
    :int
  (arg0 :pointer))

(cffi:defcfun ("dJointGetLMotorAxis" joint-get-lmotor-axis)
    :void
  (arg0 :pointer)
  (anum :int)
  (result :pointer))

(cffi:defcfun ("dJointGetLMotorParam" joint-get-lmotor-param)
    :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetFixedParam" joint-get-fixed-param)
    :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetTransmissionContactPoint1"
               joint-get-transmission-contact-point-1)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetTransmissionContactPoint2"
               joint-get-transmission-contact-point-2)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointSetTransmissionAxis1" joint-set-transmission-axis-1)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointGetTransmissionAxis1" joint-get-transmission-axis-1)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointSetTransmissionAxis2" joint-set-transmission-axis-2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointGetTransmissionAxis2" joint-get-transmission-axis-2)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointSetTransmissionAnchor1" joint-set-transmission-anchor-1)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointGetTransmissionAnchor1" joint-get-transmission-anchor-1)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointSetTransmissionAnchor2" joint-set-transmission-anchor-2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointGetTransmissionAnchor2" joint-get-transmission-anchor-2)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointSetTransmissionParam" joint-set-transmission-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointGetTransmissionParam" joint-get-transmission-param)
    :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointSetTransmissionMode" joint-set-transmission-mode)
    :void
  (j :pointer)
  (mode :int))

(cffi:defcfun ("dJointGetTransmissionMode" joint-get-transmission-mode)
    :int
  (j :pointer))

(cffi:defcfun ("dJointSetTransmissionRatio" joint-set-transmission-ratio)
    :void
  (j :pointer)
  (ratio :float))

(cffi:defcfun ("dJointGetTransmissionRatio" joint-get-transmission-ratio)
    :float
  (j :pointer))

(cffi:defcfun ("dJointSetTransmissionAxis" joint-set-transmission-axis)
    :void
  (j :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointGetTransmissionAxis" joint-get-transmission-axis)
    :void
  (j :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetTransmissionAngle1" joint-get-transmission-angle-1)
    :float
  (j :pointer))

(cffi:defcfun ("dJointGetTransmissionAngle2" joint-get-transmission-angle-2)
    :float
  (j :pointer))

(cffi:defcfun ("dJointGetTransmissionRadius1" joint-get-transmission-radius-1)
    :float
  (j :pointer))

(cffi:defcfun ("dJointGetTransmissionRadius2" joint-get-transmission-radius-2)
    :float
  (j :pointer))

(cffi:defcfun ("dJointSetTransmissionRadius1" joint-set-transmission-radius-1)
    :void
  (j :pointer)
  (radius :float))

(cffi:defcfun ("dJointSetTransmissionRadius2" joint-set-transmission-radius-2)
    :void
  (j :pointer)
  (radius :float))

(cffi:defcfun ("dJointGetTransmissionBacklash" joint-get-transmission-backlash)
    :float
  (j :pointer))

(cffi:defcfun ("dJointSetTransmissionBacklash" joint-set-transmission-backlash)
    :void
  (j :pointer)
  (backlash :float))

(cffi:defcfun ("dJointSetDBallAnchor1" joint-set-dball-anchor-1)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetDBallAnchor2" joint-set-dball-anchor-2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointGetDBallAnchor1" joint-get-dball-anchor-1)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetDBallAnchor2" joint-get-dball-anchor-2)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetDBallDistance" joint-get-dball-distance)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointSetDBallParam" joint-set-dball-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointGetDBallParam" joint-get-dball-param)
    :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointSetDHingeAxis" joint-set-dhinge-axis)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointGetDHingeAxis" joint-get-dhinge-axis)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointSetDHingeAnchor1" joint-set-dhinge-anchor-1)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetDHingeAnchor2" joint-set-dhinge-anchor-2)
    :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointGetDHingeAnchor1" joint-get-dhinge-anchor-1)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetDHingeAnchor2" joint-get-dhinge-anchor-2)
    :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetDHingeDistance" joint-get-dhinge-distance)
    :float
  (arg0 :pointer))

(cffi:defcfun ("dJointSetDHingeParam" joint-set-dhinge-param)
    :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointGetDHingeParam" joint-get-dhinge-param)
    :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dConnectingJoint" connecting-joint)
    :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dConnectingJointList" connecting-joint-list)
    :int
  (arg0 :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(cffi:defcfun ("dAreConnected" are-connected)
    :int
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dAreConnectedExcluding" are-connected-excluding)
    :int
  (body1 :pointer)
  (body2 :pointer)
  (joint_type :int))

(cffi:defcfun ("dSimpleSpaceCreate" simple-space-create)
    :pointer
  (space :pointer))

(cffi:defcfun ("dSweepAndPruneSpaceCreate" sweep-and-prune-space-create)
    :pointer
  (space :pointer)
  (axisorder :int))

(cffi:defcfun ("dHashSpaceSetLevels" hash-space-set-levels)
    :void
  (space :pointer)
  (minlevel :int)
  (maxlevel :int))

(cffi:defcfun ("dHashSpaceGetLevels" hash-space-get-levels)
    :void
  (space :pointer)
  (minlevel :pointer)
  (maxlevel :pointer))

(cffi:defcfun ("dSpaceSetCleanup" space-set-cleanup)
    :void
  (space :pointer)
  (mode :int))

(cffi:defcfun ("dSpaceGetCleanup" space-get-cleanup)
    :int
  (space :pointer))

(cffi:defcfun ("dSpaceSetSublevel" space-set-sublevel)
    :void
  (space :pointer)
  (sublevel :int))

(cffi:defcfun ("dSpaceGetSublevel" space-get-sublevel)
    :int
  (space :pointer))

(cffi:defcfun ("dSpaceSetManualCleanup" space-set-manual-cleanup)
    :void
  (space :pointer)
  (mode :int))

(cffi:defcfun ("dSpaceGetManualCleanup" space-get-manual-cleanup)
    :int
  (space :pointer))

(cffi:defcfun ("dSpaceAdd" space-add)
    :void
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dSpaceRemove" space-remove)
    :void
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dSpaceQuery" space-query)
    :int
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dSpaceClean" space-clean)
    :void
  (arg0 :pointer))

(cffi:defcfun ("dSpaceGetNumGeoms" space-get-num-geoms)
    :int
  (arg0 :pointer))

(cffi:defcfun ("dSpaceGetGeom" space-get-geom)
    :pointer
  (arg0 :pointer)
  (i :int))

(cffi:defcfun ("dSpaceGetClass" space-get-class)
    :int
  (space :pointer))

(cffi:defcfun ("dGeomTriMeshDataCreate" geom-tri-mesh-data-create)
    :pointer)

(cffi:defcfun ("dGeomTriMeshDataDestroy" geom-tri-mesh-data-destroy)
    :void
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshDataSet" geom-tri-mesh-data-set)
    :void
  (g :pointer)
  (data_id :int)
  (in_data :pointer))

(cffi:defcfun ("dGeomTriMeshDataGet" geom-tri-mesh-data-get)
    :pointer
  (g :pointer)
  (data_id :int))

(cffi:defcfun ("dGeomTriMeshSetLastTransform" geom-tri-mesh-set-last-transform)
    :void
  (g :pointer)
  (last_trans :pointer))

(cffi:defcfun ("dGeomTriMeshGetLastTransform" geom-tri-mesh-get-last-transform)
    :pointer
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshDataBuildSingle" geom-tri-mesh-data-build-single)
    :void
  (g :pointer)
  (vertices :pointer)
  (vertexstride :int)
  (vertexcount :int)
  (indices :pointer)
  (indexcount :int)
  (tristride :int))

(cffi:defcfun ("dGeomTriMeshDataBuildSingle1"
               geom-tri-mesh-data-build-single-1)
    :void
  (g :pointer)
  (vertices :pointer)
  (vertexstride :int)
  (vertexcount :int)
  (indices :pointer)
  (indexcount :int)
  (tristride :int)
  (normals :pointer))

(cffi:defcfun ("dGeomTriMeshDataBuildDouble" geom-tri-mesh-data-build-double)
    :void
  (g :pointer)
  (vertices :pointer)
  (vertexstride :int)
  (vertexcount :int)
  (indices :pointer)
  (indexcount :int)
  (tristride :int))

(cffi:defcfun ("dGeomTriMeshDataBuildDouble1"
               geom-tri-mesh-data-build-double-1)
    :void
  (g :pointer)
  (vertices :pointer)
  (vertexstride :int)
  (vertexcount :int)
  (indices :pointer)
  (indexcount :int)
  (tristride :int)
  (normals :pointer))

(cffi:defcfun ("dGeomTriMeshDataBuildSimple" geom-tri-mesh-data-build-simple)
    :void
  (g :pointer)
  (vertices :pointer)
  (vertexcount :int)
  (indices :pointer)
  (indexcount :int))

(cffi:defcfun ("dGeomTriMeshDataBuildSimple1"
               geom-tri-mesh-data-build-simple-1)
    :void
  (g :pointer)
  (vertices :pointer)
  (vertexcount :int)
  (indices :pointer)
  (indexcount :int)
  (normals :pointer))

(cffi:defcfun ("dGeomTriMeshDataPreprocess" geom-tri-mesh-data-preprocess)
    :void
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshDataGetBuffer" geom-tri-mesh-data-get-buffer)
    :void
  (g :pointer)
  (buf :pointer)
  (buflen :pointer))

(cffi:defcfun ("dGeomTriMeshDataSetBuffer" geom-tri-mesh-data-set-buffer)
    :void
  (g :pointer)
  (buf :pointer))

(cffi:defcfun ("dGeomTriMeshSetCallback" geom-tri-mesh-set-callback)
    :void
  (g :pointer)
  (callback :pointer))

(cffi:defcfun ("dGeomTriMeshGetCallback" geom-tri-mesh-get-callback)
    :pointer
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshSetArrayCallback" geom-tri-mesh-set-array-callback)
    :void
  (g :pointer)
  (arraycallback :pointer))

(cffi:defcfun ("dGeomTriMeshGetArrayCallback" geom-tri-mesh-get-array-callback)
    :pointer
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshSetRayCallback" geom-tri-mesh-set-ray-callback)
    :void
  (g :pointer)
  (callback :pointer))

(cffi:defcfun ("dGeomTriMeshGetRayCallback" geom-tri-mesh-get-ray-callback)
    :pointer
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshSetTriMergeCallback"
               geom-tri-mesh-set-tri-merge-callback)
    :void
  (g :pointer)
  (callback :pointer))

(cffi:defcfun ("dGeomTriMeshGetTriMergeCallback"
               geom-tri-mesh-get-tri-merge-callback)
    :pointer
  (g :pointer))

(cffi:defcfun ("dCreateTriMesh" create-tri-mesh)
    :pointer
  (space :pointer)
  (data :pointer)
  (callback :pointer)
  (arraycallback :pointer)
  (raycallback :pointer))

(cffi:defcfun ("dGeomTriMeshSetData" geom-tri-mesh-set-data)
    :void
  (g :pointer)
  (data :pointer))

(cffi:defcfun ("dGeomTriMeshGetData" geom-tri-mesh-get-data)
    :pointer
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshEnableTC" geom-tri-mesh-enable-tc)
    :void
  (g :pointer)
  (geomclass :int)
  (enable :int))

(cffi:defcfun ("dGeomTriMeshIsTCEnabled" geom-tri-mesh-is-tcenabled)
    :int
  (g :pointer)
  (geomclass :int))

(cffi:defcfun ("dGeomTriMeshClearTCCache" geom-tri-mesh-clear-tccache)
    :void
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshGetTriMeshDataID"
               geom-tri-mesh-get-tri-mesh-data-id)
    :pointer
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshGetTriangle" geom-tri-mesh-get-triangle)
    :void
  (g :pointer)
  (index :int)
  (v0 :pointer)
  (v1 :pointer)
  (v2 :pointer))

(cffi:defcfun ("dGeomTriMeshGetPoint" geom-tri-mesh-get-point)
    :void
  (g :pointer)
  (index :int)
  (u :float)
  (v :float)
  (out :pointer))

(cffi:defcfun ("dGeomTriMeshGetTriangleCount" geom-tri-mesh-get-triangle-count)
    :int
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshDataUpdate" geom-tri-mesh-data-update)
    :void
  (g :pointer))

(cffi:defcfun ("dGeomSetData" geom-set-data)
    :void
  (geom :pointer)
  (data :pointer))

(cffi:defcfun ("dGeomGetData" geom-get-data)
    :pointer
  (geom :pointer))

(cffi:defcfun ("dGeomCopyPosition" geom-copy-position)
    :void
  (geom :pointer)
  (pos :pointer))

(cffi:defcfun ("dGeomCopyRotation" geom-copy-rotation)
    :void
  (geom :pointer)
  (r :pointer))

(cffi:defcfun ("dGeomGetAABB" geom-get-aabb)
    :void
  (geom :pointer)
  (aabb :pointer))

(cffi:defcfun ("dGeomIsSpace" geom-is-space)
    :int
  (geom :pointer))

(cffi:defcfun ("dGeomGetSpace" geom-get-space)
    :pointer
  (arg0 :pointer))

(cffi:defcfun ("dGeomGetClass" geom-get-class)
    :int
  (geom :pointer))

(cffi:defcfun ("dGeomEnable" geom-enable)
    :void
  (geom :pointer))

(cffi:defcfun ("dGeomDisable" geom-disable)
    :void
  (geom :pointer))

(cffi:defcfun ("dGeomIsEnabled" geom-is-enabled)
    :int
  (geom :pointer))

(cffi:defcfun ("dGeomLowLevelControl" geom-low-level-control)
    :int
  (geom :pointer)
  (controlclass :int)
  (controlcode :int)
  (datavalue :pointer)
  (datasize :pointer))

(cffi:defcfun ("dGeomGetRelPointPos" geom-get-rel-point-pos)
    :void
  (geom :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dGeomGetPosRelPoint" geom-get-pos-rel-point)
    :void
  (geom :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dGeomVectorToWorld" geom-vector-to-world)
    :void
  (geom :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dGeomVectorFromWorld" geom-vector-from-world)
    :void
  (geom :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dGeomSetOffsetWorldPosition" geom-set-offset-world-position)
    :void
  (geom :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dGeomSetOffsetWorldRotation" geom-set-offset-world-rotation)
    :void
  (geom :pointer)
  (r :pointer))

(cffi:defcfun ("dGeomSetOffsetWorldQuaternion"
               geom-set-offset-world-quaternion)
    :void
  (geom :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dGeomIsOffset" geom-is-offset)
    :int
  (geom :pointer))

(cffi:defcfun ("dGeomGetOffsetPosition" geom-get-offset-position)
    :pointer
  (geom :pointer))

(cffi:defcfun ("dGeomCopyOffsetPosition" geom-copy-offset-position)
    :void
  (geom :pointer)
  (pos :pointer))

(cffi:defcfun ("dGeomGetOffsetRotation" geom-get-offset-rotation)
    :pointer
  (geom :pointer))

(cffi:defcfun ("dGeomCopyOffsetRotation" geom-copy-offset-rotation)
    :void
  (geom :pointer)
  (r :pointer))

(cffi:defcfun ("dGeomGetOffsetQuaternion" geom-get-offset-quaternion)
    :void
  (geom :pointer)
  (result :pointer))

(cffi:defcfun ("dSpaceCollide2" space-collide-2)
    :void
  (space1 :pointer)
  (space2 :pointer)
  (data :pointer)
  (callback :pointer))

(cffi:defcfun ("dGeomBoxSetLengths" geom-box-set-lengths)
    :void
  (box :pointer)
  (lx :float)
  (ly :float)
  (lz :float))

(cffi:defcfun ("dGeomBoxGetLengths" geom-box-get-lengths)
    :void
  (box :pointer)
  (result :pointer))

(cffi:defcfun ("dGeomBoxPointDepth" geom-box-point-depth)
    :float
  (box :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dGeomPlaneSetParams" geom-plane-set-params)
    :void
  (plane :pointer)
  (a :float)
  (b :float)
  (c :float)
  (d :float))

(cffi:defcfun ("dGeomPlaneGetParams" geom-plane-get-params)
    :void
  (plane :pointer)
  (result :pointer))

(cffi:defcfun ("dGeomPlanePointDepth" geom-plane-point-depth)
    :float
  (plane :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dGeomCapsuleSetParams" geom-capsule-set-params)
    :void
  (ccylinder :pointer)
  (radius :float)
  (length :float))

(cffi:defcfun ("dGeomCapsuleGetParams" geom-capsule-get-params)
    :void
  (ccylinder :pointer)
  (radius :pointer)
  (length :pointer))

(cffi:defcfun ("dGeomCapsulePointDepth" geom-capsule-point-depth)
    :float
  (ccylinder :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dGeomCylinderSetParams" geom-cylinder-set-params)
    :void
  (cylinder :pointer)
  (radius :float)
  (length :float))

(cffi:defcfun ("dGeomCylinderGetParams" geom-cylinder-get-params)
    :void
  (cylinder :pointer)
  (radius :pointer)
  (length :pointer))

(cffi:defcfun ("dCreateGeomTransform" create-geom-transform)
    :pointer
  (space :pointer))

(cffi:defcfun ("dGeomTransformSetGeom" geom-transform-set-geom)
    :void
  (g :pointer)
  (obj :pointer))

(cffi:defcfun ("dGeomTransformGetGeom" geom-transform-get-geom)
    :pointer
  (g :pointer))

(cffi:defcfun ("dGeomTransformSetCleanup" geom-transform-set-cleanup)
    :void
  (g :pointer)
  (mode :int))

(cffi:defcfun ("dGeomTransformGetCleanup" geom-transform-get-cleanup)
    :int
  (g :pointer))

(cffi:defcfun ("dGeomTransformSetInfo" geom-transform-set-info)
    :void
  (g :pointer)
  (mode :int))

(cffi:defcfun ("dGeomTransformGetInfo" geom-transform-get-info)
    :int
  (g :pointer))

(cffi:defcfun ("dCreateHeightfield" create-heightfield)
    :pointer
  (space :pointer)
  (data :pointer)
  (bplaceable :int))

(cffi:defcfun ("dGeomHeightfieldDataCreate" geom-heightfield-data-create)
    :pointer)

(cffi:defcfun ("dGeomHeightfieldDataDestroy" geom-heightfield-data-destroy)
    :void
  (d :pointer))

(cffi:defcfun ("dGeomHeightfieldDataBuildCallback"
               geom-heightfield-data-build-callback)
    :void
  (d :pointer)
  (puserdata :pointer)
  (pcallback :pointer)
  (width :float)
  (depth :float)
  (widthsamples :int)
  (depthsamples :int)
  (scale :float)
  (offset :float)
  (thickness :float)
  (bwrap :int))

(cffi:defcfun ("dGeomHeightfieldDataBuildByte"
               geom-heightfield-data-build-byte)
    :void
  (d :pointer)
  (pheightdata :pointer)
  (bcopyheightdata :int)
  (width :float)
  (depth :float)
  (widthsamples :int)
  (depthsamples :int)
  (scale :float)
  (offset :float)
  (thickness :float)
  (bwrap :int))

(cffi:defcfun ("dGeomHeightfieldDataBuildShort"
               geom-heightfield-data-build-short)
    :void
  (d :pointer)
  (pheightdata :pointer)
  (bcopyheightdata :int)
  (width :float)
  (depth :float)
  (widthsamples :int)
  (depthsamples :int)
  (scale :float)
  (offset :float)
  (thickness :float)
  (bwrap :int))

(cffi:defcfun ("dGeomHeightfieldDataBuildSingle"
               geom-heightfield-data-build-single)
    :void
  (d :pointer)
  (pheightdata :pointer)
  (bcopyheightdata :int)
  (width :float)
  (depth :float)
  (widthsamples :int)
  (depthsamples :int)
  (scale :float)
  (offset :float)
  (thickness :float)
  (bwrap :int))

(cffi:defcfun ("dGeomHeightfieldDataBuildDouble"
               geom-heightfield-data-build-double)
    :void
  (d :pointer)
  (pheightdata :pointer)
  (bcopyheightdata :int)
  (width :float)
  (depth :float)
  (widthsamples :int)
  (depthsamples :int)
  (scale :float)
  (offset :float)
  (thickness :float)
  (bwrap :int))

(cffi:defcfun ("dGeomHeightfieldDataSetBounds"
               geom-heightfield-data-set-bounds)
    :void
  (d :pointer)
  (minheight :float)
  (maxheight :float))

(cffi:defcfun ("dGeomHeightfieldSetHeightfieldData"
               geom-heightfield-set-heightfield-data)
    :void
  (g :pointer)
  (d :pointer))

(cffi:defcfun ("dGeomHeightfieldGetHeightfieldData"
               geom-heightfield-get-heightfield-data)
    :pointer
  (g :pointer))

(cffi:defcfun ("dClosestLineSegmentPoints" closest-line-segment-points)
    :void
  (a1 :pointer)
  (a2 :pointer)
  (b1 :pointer)
  (b2 :pointer)
  (cp1 :pointer)
  (cp2 :pointer))

(cffi:defcfun ("dBoxTouchesBox" box-touches-box)
    :int
  (_p1 :pointer)
  (r1 :pointer)
  (side1 :pointer)
  (_p2 :pointer)
  (r2 :pointer)
  (side2 :pointer))

(cffi:defcfun ("dBoxBox" box-box)
    :int
  (p1 :pointer)
  (r1 :pointer)
  (side1 :pointer)
  (p2 :pointer)
  (r2 :pointer)
  (side2 :pointer)
  (normal :pointer)
  (depth :pointer)
  (return_code :pointer)
  (flags :int)
  (contact :pointer)
  (skip :int))

(cffi:defcfun ("dInfiniteAABB" infinite-aabb)
    :void
  (geom :pointer)
  (aabb :pointer))

(cffi:defcfun ("dCreateGeomClass" create-geom-class)
    :int
  (classptr :pointer))

(cffi:defcfun ("dGeomGetClassData" geom-get-class-data)
    :pointer
  (arg0 :pointer))

(cffi:defcfun ("dCreateGeom" create-geom)
    :pointer
  (classnum :int))

(cffi:defcfun ("dSetColliderOverride" set-collider-override)
    :void
  (i :int)
  (j :int)
  (fn :pointer))

(cffi:defcfun ("dWorldExportDIF" world-export-dif)
    :void
  (w :pointer)
  (file :pointer)
  (world_name :string))
