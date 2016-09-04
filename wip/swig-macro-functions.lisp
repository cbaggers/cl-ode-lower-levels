
(cffi:defcfun ("dOdeError" #.(swig-lispify-noprefix "dOdeError" 'function)) :void
  (arg0 :int)
  (arg1 :string))

(cffi:defcfun ("dOdeDebug" #.(swig-lispify-noprefix "dOdeDebug" 'function)) :void
  (arg0 :int)
  (arg1 :string))

(cffi:defcfun ("dOdeMessage" #.(swig-lispify-noprefix "dOdeMessage" 'function)) :void
  (arg0 :int)
  (arg1 :string))

(cffi:defcfun ("dGeomMoved" #.(swig-lispify-noprefix "dGeomMoved" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("dGeomGetBodyNext" #.(swig-lispify-noprefix "dGeomGetBodyNext" 'function)) :pointer
  (arg0 :pointer))

(cffi:defcfun ("dGetConfiguration" #.(swig-lispify-noprefix "dGetConfiguration" 'function)) :string)

(cffi:defcfun ("dCheckConfiguration" #.(swig-lispify-noprefix "dCheckConfiguration" 'function)) :int
  (token :string))

(cffi:defcfun ("dInitODE" #.(swig-lispify-noprefix "dInitODE" 'function)) :void)

(cffi:defcfun ("dInitODE2" #.(swig-lispify-noprefix "dInitODE2" 'function)) :int
  (uiInitFlags :unsigned-int))

(cffi:defcfun ("dAllocateODEDataForThread" #.(swig-lispify-noprefix "dAllocateODEDataForThread" 'function)) :int
  (uiAllocateFlags :unsigned-int))

(cffi:defcfun ("dCleanupODEAllDataForThread" #.(swig-lispify-noprefix "dCleanupODEAllDataForThread" 'function)) :void)

(cffi:defcfun ("dCloseODE" #.(swig-lispify-noprefix "dCloseODE" 'function)) :void)

(cffi:defcfun ("dSetErrorHandler" #.(swig-lispify-noprefix "dSetErrorHandler" 'function)) :void
  (fn :pointer))

(cffi:defcfun ("dSetDebugHandler" #.(swig-lispify-noprefix "dSetDebugHandler" 'function)) :void
  (fn :pointer))

(cffi:defcfun ("dSetMessageHandler" #.(swig-lispify-noprefix "dSetMessageHandler" 'function)) :void
  (fn :pointer))

(cffi:defcfun ("dGetErrorHandler" #.(swig-lispify-noprefix "dGetErrorHandler" 'function)) :pointer)

(cffi:defcfun ("dGetDebugHandler" #.(swig-lispify-noprefix "dGetDebugHandler" 'function)) :pointer)

(cffi:defcfun ("dGetMessageHandler" #.(swig-lispify-noprefix "dGetMessageHandler" 'function)) :pointer)

(cffi:defcfun ("dOdeError" #.(swig-lispify-noprefix "dOdeError" 'function)) :void
  (num :int)
  (msg :string)
  &rest)

(cffi:defcfun ("dOdeDebug" #.(swig-lispify-noprefix "dOdeDebug" 'function)) :void
  (num :int)
  (msg :string)
  &rest)

(cffi:defcfun ("dOdeMessage" #.(swig-lispify-noprefix "dOdeMessage" 'function)) :void
  (num :int)
  (msg :string)
  &rest)

(cffi:defcfun ("dSetAllocHandler" #.(swig-lispify-noprefix "dSetAllocHandler" 'function)) :void
  (fn :pointer))

(cffi:defcfun ("dSetReallocHandler" #.(swig-lispify-noprefix "dSetReallocHandler" 'function)) :void
  (fn :pointer))

(cffi:defcfun ("dSetFreeHandler" #.(swig-lispify-noprefix "dSetFreeHandler" 'function)) :void
  (fn :pointer))

(cffi:defcfun ("dGetAllocHandler" #.(swig-lispify-noprefix "dGetAllocHandler" 'function)) :pointer)

(cffi:defcfun ("dGetReallocHandler" #.(swig-lispify-noprefix "dGetReallocHandler" 'function)) :pointer)

(cffi:defcfun ("dGetFreeHandler" #.(swig-lispify-noprefix "dGetFreeHandler" 'function)) :pointer)

(cffi:defcfun ("dAlloc" #.(swig-lispify-noprefix "dAlloc" 'function)) :pointer
  (size :pointer))

(cffi:defcfun ("dRealloc" #.(swig-lispify-noprefix "dRealloc" 'function)) :pointer
  (ptr :pointer)
  (oldsize :pointer)
  (newsize :pointer))

(cffi:defcfun ("dFree" #.(swig-lispify-noprefix "dFree" 'function)) :void
  (ptr :pointer)
  (size :pointer))

(cffi:defcfun ("dMassCheck" #.(swig-lispify-noprefix "dMassCheck" 'function)) :int
  (m :pointer))

(cffi:defcfun ("dMassSetZero" #.(swig-lispify-noprefix "dMassSetZero" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("dMassSetParameters" #.(swig-lispify-noprefix "dMassSetParameters" 'function)) :void
  (arg0 :pointer)
  (themass :float)
  (cgx :float)
  (cgy :float)
  (cgz :float)
  (I11 :float)
  (I22 :float)
  (I33 :float)
  (I12 :float)
  (I13 :float)
  (I23 :float))

(cffi:defcfun ("dMassSetSphere" #.(swig-lispify-noprefix "dMassSetSphere" 'function)) :void
  (arg0 :pointer)
  (density :float)
  (radius :float))

(cffi:defcfun ("dMassSetSphereTotal" #.(swig-lispify-noprefix "dMassSetSphereTotal" 'function)) :void
  (arg0 :pointer)
  (total_mass :float)
  (radius :float))

(cffi:defcfun ("dMassSetCapsule" #.(swig-lispify-noprefix "dMassSetCapsule" 'function)) :void
  (arg0 :pointer)
  (density :float)
  (direction :int)
  (radius :float)
  (length :float))

(cffi:defcfun ("dMassSetCapsuleTotal" #.(swig-lispify-noprefix "dMassSetCapsuleTotal" 'function)) :void
  (arg0 :pointer)
  (total_mass :float)
  (direction :int)
  (radius :float)
  (length :float))

(cffi:defcfun ("dMassSetCylinder" #.(swig-lispify-noprefix "dMassSetCylinder" 'function)) :void
  (arg0 :pointer)
  (density :float)
  (direction :int)
  (radius :float)
  (length :float))

(cffi:defcfun ("dMassSetCylinderTotal" #.(swig-lispify-noprefix "dMassSetCylinderTotal" 'function)) :void
  (arg0 :pointer)
  (total_mass :float)
  (direction :int)
  (radius :float)
  (length :float))

(cffi:defcfun ("dMassSetBox" #.(swig-lispify-noprefix "dMassSetBox" 'function)) :void
  (arg0 :pointer)
  (density :float)
  (lx :float)
  (ly :float)
  (lz :float))

(cffi:defcfun ("dMassSetBoxTotal" #.(swig-lispify-noprefix "dMassSetBoxTotal" 'function)) :void
  (arg0 :pointer)
  (total_mass :float)
  (lx :float)
  (ly :float)
  (lz :float))

(cffi:defcfun ("dMassSetTrimesh" #.(swig-lispify-noprefix "dMassSetTrimesh" 'function)) :void
  (arg0 :pointer)
  (density :float)
  (g :pointer))

(cffi:defcfun ("dMassSetTrimeshTotal" #.(swig-lispify-noprefix "dMassSetTrimeshTotal" 'function)) :void
  (m :pointer)
  (total_mass :float)
  (g :pointer))

(cffi:defcfun ("dMassAdjust" #.(swig-lispify-noprefix "dMassAdjust" 'function)) :void
  (arg0 :pointer)
  (newmass :float))

(cffi:defcfun ("dMassTranslate" #.(swig-lispify-noprefix "dMassTranslate" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dMassRotate" #.(swig-lispify-noprefix "dMassRotate" 'function)) :void
  (arg0 :pointer)
  (R :pointer))

(cffi:defcfun ("dMassAdd" #.(swig-lispify-noprefix "dMassAdd" 'function)) :void
  (a :pointer)
  (b :pointer))

(cffi:defcfun ("dMassSetCappedCylinder" #.(swig-lispify-noprefix "dMassSetCappedCylinder" 'function)) :void
  (a :pointer)
  (b :float)
  (c :int)
  (d :float)
  (e :float))

(cffi:defcfun ("dMassSetCappedCylinderTotal" #.(swig-lispify-noprefix "dMassSetCappedCylinderTotal" 'function)) :void
  (a :pointer)
  (b :float)
  (c :int)
  (d :float)
  (e :float))

(cffi:defcfun ("dWorldCreate" #.(swig-lispify-noprefix "dWorldCreate" 'function)) :pointer)

(cffi:defcfun ("dWorldDestroy" #.(swig-lispify-noprefix "dWorldDestroy" 'function)) :void
  (world :pointer))

(cffi:defcfun ("dWorldSetGravity" #.(swig-lispify-noprefix "dWorldSetGravity" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dWorldGetGravity" #.(swig-lispify-noprefix "dWorldGetGravity" 'function)) :void
  (arg0 :pointer)
  (gravity :pointer))

(cffi:defcfun ("dWorldSetERP" #.(swig-lispify-noprefix "dWorldSetERP" 'function)) :void
  (arg0 :pointer)
  (erp :float))

(cffi:defcfun ("dWorldGetERP" #.(swig-lispify-noprefix "dWorldGetERP" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetCFM" #.(swig-lispify-noprefix "dWorldSetCFM" 'function)) :void
  (arg0 :pointer)
  (cfm :float))

(cffi:defcfun ("dWorldGetCFM" #.(swig-lispify-noprefix "dWorldGetCFM" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetStepIslandsProcessingMaxThreadCount" #.(swig-lispify-noprefix "dWorldSetStepIslandsProcessingMaxThreadCount" 'function)) :void
  (w :pointer)
  (count :unsigned-int))

(cffi:defcfun ("dWorldGetStepIslandsProcessingMaxThreadCount" #.(swig-lispify-noprefix "dWorldGetStepIslandsProcessingMaxThreadCount" 'function)) :unsigned-int
  (w :pointer))

(cffi:defcfun ("dWorldUseSharedWorkingMemory" #.(swig-lispify-noprefix "dWorldUseSharedWorkingMemory" 'function)) :int
  (w :pointer)
  (from_world :pointer))

(cffi:defcfun ("dWorldCleanupWorkingMemory" #.(swig-lispify-noprefix "dWorldCleanupWorkingMemory" 'function)) :void
  (w :pointer))

(cffi:defcfun ("dWorldSetStepMemoryReservationPolicy" #.(swig-lispify-noprefix "dWorldSetStepMemoryReservationPolicy" 'function)) :int
  (w :pointer)
  (policyinfo :pointer))

(cffi:defcfun ("dWorldSetStepMemoryManager" #.(swig-lispify-noprefix "dWorldSetStepMemoryManager" 'function)) :int
  (w :pointer)
  (memfuncs :pointer))

(cffi:defcfun ("dWorldSetStepThreadingImplementation" #.(swig-lispify-noprefix "dWorldSetStepThreadingImplementation" 'function)) :void
  (w :pointer)
  (functions_info :pointer)
  (threading_impl :pointer))

(cffi:defcfun ("dWorldStep" #.(swig-lispify-noprefix "dWorldStep" 'function)) :int
  (w :pointer)
  (stepsize :float))

(cffi:defcfun ("dWorldQuickStep" #.(swig-lispify-noprefix "dWorldQuickStep" 'function)) :int
  (w :pointer)
  (stepsize :float))

(cffi:defcfun ("dWorldImpulseToForce" #.(swig-lispify-noprefix "dWorldImpulseToForce" 'function)) :void
  (arg0 :pointer)
  (stepsize :float)
  (ix :float)
  (iy :float)
  (iz :float)
  (force :pointer))

(cffi:defcfun ("dWorldSetQuickStepNumIterations" #.(swig-lispify-noprefix "dWorldSetQuickStepNumIterations" 'function)) :void
  (arg0 :pointer)
  (num :int))

(cffi:defcfun ("dWorldGetQuickStepNumIterations" #.(swig-lispify-noprefix "dWorldGetQuickStepNumIterations" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetQuickStepW" #.(swig-lispify-noprefix "dWorldSetQuickStepW" 'function)) :void
  (arg0 :pointer)
  (over_relaxation :float))

(cffi:defcfun ("dWorldGetQuickStepW" #.(swig-lispify-noprefix "dWorldGetQuickStepW" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetContactMaxCorrectingVel" #.(swig-lispify-noprefix "dWorldSetContactMaxCorrectingVel" 'function)) :void
  (arg0 :pointer)
  (vel :float))

(cffi:defcfun ("dWorldGetContactMaxCorrectingVel" #.(swig-lispify-noprefix "dWorldGetContactMaxCorrectingVel" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetContactSurfaceLayer" #.(swig-lispify-noprefix "dWorldSetContactSurfaceLayer" 'function)) :void
  (arg0 :pointer)
  (depth :float))

(cffi:defcfun ("dWorldGetContactSurfaceLayer" #.(swig-lispify-noprefix "dWorldGetContactSurfaceLayer" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldGetAutoDisableLinearThreshold" #.(swig-lispify-noprefix "dWorldGetAutoDisableLinearThreshold" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetAutoDisableLinearThreshold" #.(swig-lispify-noprefix "dWorldSetAutoDisableLinearThreshold" 'function)) :void
  (arg0 :pointer)
  (linear_threshold :float))

(cffi:defcfun ("dWorldGetAutoDisableAngularThreshold" #.(swig-lispify-noprefix "dWorldGetAutoDisableAngularThreshold" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetAutoDisableAngularThreshold" #.(swig-lispify-noprefix "dWorldSetAutoDisableAngularThreshold" 'function)) :void
  (arg0 :pointer)
  (angular_threshold :float))

(cffi:defcfun ("dWorldGetAutoDisableLinearAverageThreshold" #.(swig-lispify-noprefix "dWorldGetAutoDisableLinearAverageThreshold" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetAutoDisableLinearAverageThreshold" #.(swig-lispify-noprefix "dWorldSetAutoDisableLinearAverageThreshold" 'function)) :void
  (arg0 :pointer)
  (linear_average_threshold :float))

(cffi:defcfun ("dWorldGetAutoDisableAngularAverageThreshold" #.(swig-lispify-noprefix "dWorldGetAutoDisableAngularAverageThreshold" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetAutoDisableAngularAverageThreshold" #.(swig-lispify-noprefix "dWorldSetAutoDisableAngularAverageThreshold" 'function)) :void
  (arg0 :pointer)
  (angular_average_threshold :float))

(cffi:defcfun ("dWorldGetAutoDisableAverageSamplesCount" #.(swig-lispify-noprefix "dWorldGetAutoDisableAverageSamplesCount" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetAutoDisableAverageSamplesCount" #.(swig-lispify-noprefix "dWorldSetAutoDisableAverageSamplesCount" 'function)) :void
  (arg0 :pointer)
  (average_samples_count :unsigned-int))

(cffi:defcfun ("dWorldGetAutoDisableSteps" #.(swig-lispify-noprefix "dWorldGetAutoDisableSteps" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetAutoDisableSteps" #.(swig-lispify-noprefix "dWorldSetAutoDisableSteps" 'function)) :void
  (arg0 :pointer)
  (steps :int))

(cffi:defcfun ("dWorldGetAutoDisableTime" #.(swig-lispify-noprefix "dWorldGetAutoDisableTime" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetAutoDisableTime" #.(swig-lispify-noprefix "dWorldSetAutoDisableTime" 'function)) :void
  (arg0 :pointer)
  (time :float))

(cffi:defcfun ("dWorldGetAutoDisableFlag" #.(swig-lispify-noprefix "dWorldGetAutoDisableFlag" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("dWorldSetAutoDisableFlag" #.(swig-lispify-noprefix "dWorldSetAutoDisableFlag" 'function)) :void
  (arg0 :pointer)
  (do_auto_disable :int))

(cffi:defcfun ("dWorldGetLinearDampingThreshold" #.(swig-lispify-noprefix "dWorldGetLinearDampingThreshold" 'function)) :float
  (w :pointer))

(cffi:defcfun ("dWorldSetLinearDampingThreshold" #.(swig-lispify-noprefix "dWorldSetLinearDampingThreshold" 'function)) :void
  (w :pointer)
  (threshold :float))

(cffi:defcfun ("dWorldGetAngularDampingThreshold" #.(swig-lispify-noprefix "dWorldGetAngularDampingThreshold" 'function)) :float
  (w :pointer))

(cffi:defcfun ("dWorldSetAngularDampingThreshold" #.(swig-lispify-noprefix "dWorldSetAngularDampingThreshold" 'function)) :void
  (w :pointer)
  (threshold :float))

(cffi:defcfun ("dWorldGetLinearDamping" #.(swig-lispify-noprefix "dWorldGetLinearDamping" 'function)) :float
  (w :pointer))

(cffi:defcfun ("dWorldSetLinearDamping" #.(swig-lispify-noprefix "dWorldSetLinearDamping" 'function)) :void
  (w :pointer)
  (scale :float))

(cffi:defcfun ("dWorldGetAngularDamping" #.(swig-lispify-noprefix "dWorldGetAngularDamping" 'function)) :float
  (w :pointer))

(cffi:defcfun ("dWorldSetAngularDamping" #.(swig-lispify-noprefix "dWorldSetAngularDamping" 'function)) :void
  (w :pointer)
  (scale :float))

(cffi:defcfun ("dWorldSetDamping" #.(swig-lispify-noprefix "dWorldSetDamping" 'function)) :void
  (w :pointer)
  (linear_scale :float)
  (angular_scale :float))

(cffi:defcfun ("dWorldGetMaxAngularSpeed" #.(swig-lispify-noprefix "dWorldGetMaxAngularSpeed" 'function)) :float
  (w :pointer))

(cffi:defcfun ("dWorldSetMaxAngularSpeed" #.(swig-lispify-noprefix "dWorldSetMaxAngularSpeed" 'function)) :void
  (w :pointer)
  (max_speed :float))

(cffi:defcfun ("dBodyGetAutoDisableLinearThreshold" #.(swig-lispify-noprefix "dBodyGetAutoDisableLinearThreshold" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dBodySetAutoDisableLinearThreshold" #.(swig-lispify-noprefix "dBodySetAutoDisableLinearThreshold" 'function)) :void
  (arg0 :pointer)
  (linear_average_threshold :float))

(cffi:defcfun ("dBodyGetAutoDisableAngularThreshold" #.(swig-lispify-noprefix "dBodyGetAutoDisableAngularThreshold" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dBodySetAutoDisableAngularThreshold" #.(swig-lispify-noprefix "dBodySetAutoDisableAngularThreshold" 'function)) :void
  (arg0 :pointer)
  (angular_average_threshold :float))

(cffi:defcfun ("dBodyGetAutoDisableAverageSamplesCount" #.(swig-lispify-noprefix "dBodyGetAutoDisableAverageSamplesCount" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("dBodySetAutoDisableAverageSamplesCount" #.(swig-lispify-noprefix "dBodySetAutoDisableAverageSamplesCount" 'function)) :void
  (arg0 :pointer)
  (average_samples_count :unsigned-int))

(cffi:defcfun ("dBodyGetAutoDisableSteps" #.(swig-lispify-noprefix "dBodyGetAutoDisableSteps" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("dBodySetAutoDisableSteps" #.(swig-lispify-noprefix "dBodySetAutoDisableSteps" 'function)) :void
  (arg0 :pointer)
  (steps :int))

(cffi:defcfun ("dBodyGetAutoDisableTime" #.(swig-lispify-noprefix "dBodyGetAutoDisableTime" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dBodySetAutoDisableTime" #.(swig-lispify-noprefix "dBodySetAutoDisableTime" 'function)) :void
  (arg0 :pointer)
  (time :float))

(cffi:defcfun ("dBodyGetAutoDisableFlag" #.(swig-lispify-noprefix "dBodyGetAutoDisableFlag" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("dBodySetAutoDisableFlag" #.(swig-lispify-noprefix "dBodySetAutoDisableFlag" 'function)) :void
  (arg0 :pointer)
  (do_auto_disable :int))

(cffi:defcfun ("dBodySetAutoDisableDefaults" #.(swig-lispify-noprefix "dBodySetAutoDisableDefaults" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("dBodyGetWorld" #.(swig-lispify-noprefix "dBodyGetWorld" 'function)) :pointer
  (arg0 :pointer))

(cffi:defcfun ("dBodyCreate" #.(swig-lispify-noprefix "dBodyCreate" 'function)) :pointer
  (arg0 :pointer))

(cffi:defcfun ("dBodyDestroy" #.(swig-lispify-noprefix "dBodyDestroy" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("dBodySetData" #.(swig-lispify-noprefix "dBodySetData" 'function)) :void
  (arg0 :pointer)
  (data :pointer))

(cffi:defcfun ("dBodyGetData" #.(swig-lispify-noprefix "dBodyGetData" 'function)) :pointer
  (arg0 :pointer))

(cffi:defcfun ("dBodySetPosition" #.(swig-lispify-noprefix "dBodySetPosition" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dBodySetRotation" #.(swig-lispify-noprefix "dBodySetRotation" 'function)) :void
  (arg0 :pointer)
  (R :pointer))

(cffi:defcfun ("dBodySetQuaternion" #.(swig-lispify-noprefix "dBodySetQuaternion" 'function)) :void
  (arg0 :pointer)
  (q :pointer))

(cffi:defcfun ("dBodySetLinearVel" #.(swig-lispify-noprefix "dBodySetLinearVel" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dBodySetAngularVel" #.(swig-lispify-noprefix "dBodySetAngularVel" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dBodyGetPosition" #.(swig-lispify-noprefix "dBodyGetPosition" 'function)) :pointer
  (arg0 :pointer))

(cffi:defcfun ("dBodyCopyPosition" #.(swig-lispify-noprefix "dBodyCopyPosition" 'function)) :void
  (body :pointer)
  (pos :pointer))

(cffi:defcfun ("dBodyGetRotation" #.(swig-lispify-noprefix "dBodyGetRotation" 'function)) :pointer
  (arg0 :pointer))

(cffi:defcfun ("dBodyCopyRotation" #.(swig-lispify-noprefix "dBodyCopyRotation" 'function)) :void
  (arg0 :pointer)
  (R :pointer))

(cffi:defcfun ("dBodyGetQuaternion" #.(swig-lispify-noprefix "dBodyGetQuaternion" 'function)) :pointer
  (arg0 :pointer))

(cffi:defcfun ("dBodyCopyQuaternion" #.(swig-lispify-noprefix "dBodyCopyQuaternion" 'function)) :void
  (body :pointer)
  (quat :pointer))

(cffi:defcfun ("dBodyGetLinearVel" #.(swig-lispify-noprefix "dBodyGetLinearVel" 'function)) :pointer
  (arg0 :pointer))

(cffi:defcfun ("dBodyGetAngularVel" #.(swig-lispify-noprefix "dBodyGetAngularVel" 'function)) :pointer
  (arg0 :pointer))

(cffi:defcfun ("dBodySetMass" #.(swig-lispify-noprefix "dBodySetMass" 'function)) :void
  (arg0 :pointer)
  (mass :pointer))

(cffi:defcfun ("dBodyGetMass" #.(swig-lispify-noprefix "dBodyGetMass" 'function)) :void
  (arg0 :pointer)
  (mass :pointer))

(cffi:defcfun ("dBodyAddForce" #.(swig-lispify-noprefix "dBodyAddForce" 'function)) :void
  (arg0 :pointer)
  (fx :float)
  (fy :float)
  (fz :float))

(cffi:defcfun ("dBodyAddTorque" #.(swig-lispify-noprefix "dBodyAddTorque" 'function)) :void
  (arg0 :pointer)
  (fx :float)
  (fy :float)
  (fz :float))

(cffi:defcfun ("dBodyAddRelForce" #.(swig-lispify-noprefix "dBodyAddRelForce" 'function)) :void
  (arg0 :pointer)
  (fx :float)
  (fy :float)
  (fz :float))

(cffi:defcfun ("dBodyAddRelTorque" #.(swig-lispify-noprefix "dBodyAddRelTorque" 'function)) :void
  (arg0 :pointer)
  (fx :float)
  (fy :float)
  (fz :float))

(cffi:defcfun ("dBodyAddForceAtPos" #.(swig-lispify-noprefix "dBodyAddForceAtPos" 'function)) :void
  (arg0 :pointer)
  (fx :float)
  (fy :float)
  (fz :float)
  (px :float)
  (py :float)
  (pz :float))

(cffi:defcfun ("dBodyAddForceAtRelPos" #.(swig-lispify-noprefix "dBodyAddForceAtRelPos" 'function)) :void
  (arg0 :pointer)
  (fx :float)
  (fy :float)
  (fz :float)
  (px :float)
  (py :float)
  (pz :float))

(cffi:defcfun ("dBodyAddRelForceAtPos" #.(swig-lispify-noprefix "dBodyAddRelForceAtPos" 'function)) :void
  (arg0 :pointer)
  (fx :float)
  (fy :float)
  (fz :float)
  (px :float)
  (py :float)
  (pz :float))

(cffi:defcfun ("dBodyAddRelForceAtRelPos" #.(swig-lispify-noprefix "dBodyAddRelForceAtRelPos" 'function)) :void
  (arg0 :pointer)
  (fx :float)
  (fy :float)
  (fz :float)
  (px :float)
  (py :float)
  (pz :float))

(cffi:defcfun ("dBodyGetForce" #.(swig-lispify-noprefix "dBodyGetForce" 'function)) :pointer
  (arg0 :pointer))

(cffi:defcfun ("dBodyGetTorque" #.(swig-lispify-noprefix "dBodyGetTorque" 'function)) :pointer
  (arg0 :pointer))

(cffi:defcfun ("dBodySetForce" #.(swig-lispify-noprefix "dBodySetForce" 'function)) :void
  (b :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dBodySetTorque" #.(swig-lispify-noprefix "dBodySetTorque" 'function)) :void
  (b :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dBodyGetRelPointPos" #.(swig-lispify-noprefix "dBodyGetRelPointPos" 'function)) :void
  (arg0 :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dBodyGetRelPointVel" #.(swig-lispify-noprefix "dBodyGetRelPointVel" 'function)) :void
  (arg0 :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dBodyGetPointVel" #.(swig-lispify-noprefix "dBodyGetPointVel" 'function)) :void
  (arg0 :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dBodyGetPosRelPoint" #.(swig-lispify-noprefix "dBodyGetPosRelPoint" 'function)) :void
  (arg0 :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dBodyVectorToWorld" #.(swig-lispify-noprefix "dBodyVectorToWorld" 'function)) :void
  (arg0 :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dBodyVectorFromWorld" #.(swig-lispify-noprefix "dBodyVectorFromWorld" 'function)) :void
  (arg0 :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dBodySetFiniteRotationMode" #.(swig-lispify-noprefix "dBodySetFiniteRotationMode" 'function)) :void
  (arg0 :pointer)
  (mode :int))

(cffi:defcfun ("dBodySetFiniteRotationAxis" #.(swig-lispify-noprefix "dBodySetFiniteRotationAxis" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dBodyGetFiniteRotationMode" #.(swig-lispify-noprefix "dBodyGetFiniteRotationMode" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("dBodyGetFiniteRotationAxis" #.(swig-lispify-noprefix "dBodyGetFiniteRotationAxis" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dBodyGetNumJoints" #.(swig-lispify-noprefix "dBodyGetNumJoints" 'function)) :int
  (b :pointer))

(cffi:defcfun ("dBodyGetJoint" #.(swig-lispify-noprefix "dBodyGetJoint" 'function)) :pointer
  (arg0 :pointer)
  (index :int))

(cffi:defcfun ("dBodySetDynamic" #.(swig-lispify-noprefix "dBodySetDynamic" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("dBodySetKinematic" #.(swig-lispify-noprefix "dBodySetKinematic" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("dBodyIsKinematic" #.(swig-lispify-noprefix "dBodyIsKinematic" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("dBodyEnable" #.(swig-lispify-noprefix "dBodyEnable" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("dBodyDisable" #.(swig-lispify-noprefix "dBodyDisable" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("dBodyIsEnabled" #.(swig-lispify-noprefix "dBodyIsEnabled" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("dBodySetGravityMode" #.(swig-lispify-noprefix "dBodySetGravityMode" 'function)) :void
  (b :pointer)
  (mode :int))

(cffi:defcfun ("dBodyGetGravityMode" #.(swig-lispify-noprefix "dBodyGetGravityMode" 'function)) :int
  (b :pointer))

(cffi:defcfun ("dBodySetMovedCallback" #.(swig-lispify-noprefix "dBodySetMovedCallback" 'function)) :void
  (b :pointer)
  (callback :pointer))

(cffi:defcfun ("dBodyGetFirstGeom" #.(swig-lispify-noprefix "dBodyGetFirstGeom" 'function)) :pointer
  (b :pointer))

(cffi:defcfun ("dBodyGetNextGeom" #.(swig-lispify-noprefix "dBodyGetNextGeom" 'function)) :pointer
  (g :pointer))

(cffi:defcfun ("dBodySetDampingDefaults" #.(swig-lispify-noprefix "dBodySetDampingDefaults" 'function)) :void
  (b :pointer))

(cffi:defcfun ("dBodyGetLinearDamping" #.(swig-lispify-noprefix "dBodyGetLinearDamping" 'function)) :float
  (b :pointer))

(cffi:defcfun ("dBodySetLinearDamping" #.(swig-lispify-noprefix "dBodySetLinearDamping" 'function)) :void
  (b :pointer)
  (scale :float))

(cffi:defcfun ("dBodyGetAngularDamping" #.(swig-lispify-noprefix "dBodyGetAngularDamping" 'function)) :float
  (b :pointer))

(cffi:defcfun ("dBodySetAngularDamping" #.(swig-lispify-noprefix "dBodySetAngularDamping" 'function)) :void
  (b :pointer)
  (scale :float))

(cffi:defcfun ("dBodySetDamping" #.(swig-lispify-noprefix "dBodySetDamping" 'function)) :void
  (b :pointer)
  (linear_scale :float)
  (angular_scale :float))

(cffi:defcfun ("dBodyGetLinearDampingThreshold" #.(swig-lispify-noprefix "dBodyGetLinearDampingThreshold" 'function)) :float
  (b :pointer))

(cffi:defcfun ("dBodySetLinearDampingThreshold" #.(swig-lispify-noprefix "dBodySetLinearDampingThreshold" 'function)) :void
  (b :pointer)
  (threshold :float))

(cffi:defcfun ("dBodyGetAngularDampingThreshold" #.(swig-lispify-noprefix "dBodyGetAngularDampingThreshold" 'function)) :float
  (b :pointer))

(cffi:defcfun ("dBodySetAngularDampingThreshold" #.(swig-lispify-noprefix "dBodySetAngularDampingThreshold" 'function)) :void
  (b :pointer)
  (threshold :float))

(cffi:defcfun ("dBodyGetMaxAngularSpeed" #.(swig-lispify-noprefix "dBodyGetMaxAngularSpeed" 'function)) :float
  (b :pointer))

(cffi:defcfun ("dBodySetMaxAngularSpeed" #.(swig-lispify-noprefix "dBodySetMaxAngularSpeed" 'function)) :void
  (b :pointer)
  (max_speed :float))

(cffi:defcfun ("dBodyGetGyroscopicMode" #.(swig-lispify-noprefix "dBodyGetGyroscopicMode" 'function)) :int
  (b :pointer))

(cffi:defcfun ("dBodySetGyroscopicMode" #.(swig-lispify-noprefix "dBodySetGyroscopicMode" 'function)) :void
  (b :pointer)
  (enabled :int))

(cffi:defcfun ("dJointCreateBall" #.(swig-lispify-noprefix "dJointCreateBall" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateHinge" #.(swig-lispify-noprefix "dJointCreateHinge" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateSlider" #.(swig-lispify-noprefix "dJointCreateSlider" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateContact" #.(swig-lispify-noprefix "dJointCreateContact" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(cffi:defcfun ("dJointCreateHinge2" #.(swig-lispify-noprefix "dJointCreateHinge2" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateUniversal" #.(swig-lispify-noprefix "dJointCreateUniversal" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreatePR" #.(swig-lispify-noprefix "dJointCreatePR" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreatePU" #.(swig-lispify-noprefix "dJointCreatePU" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreatePiston" #.(swig-lispify-noprefix "dJointCreatePiston" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateFixed" #.(swig-lispify-noprefix "dJointCreateFixed" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateNull" #.(swig-lispify-noprefix "dJointCreateNull" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateAMotor" #.(swig-lispify-noprefix "dJointCreateAMotor" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateLMotor" #.(swig-lispify-noprefix "dJointCreateLMotor" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreatePlane2D" #.(swig-lispify-noprefix "dJointCreatePlane2D" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateDBall" #.(swig-lispify-noprefix "dJointCreateDBall" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateDHinge" #.(swig-lispify-noprefix "dJointCreateDHinge" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointCreateTransmission" #.(swig-lispify-noprefix "dJointCreateTransmission" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointDestroy" #.(swig-lispify-noprefix "dJointDestroy" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("dJointGroupCreate" #.(swig-lispify-noprefix "dJointGroupCreate" 'function)) :pointer
  (max_size :int))

(cffi:defcfun ("dJointGroupDestroy" #.(swig-lispify-noprefix "dJointGroupDestroy" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("dJointGroupEmpty" #.(swig-lispify-noprefix "dJointGroupEmpty" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("dJointGetNumBodies" #.(swig-lispify-noprefix "dJointGetNumBodies" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("dJointAttach" #.(swig-lispify-noprefix "dJointAttach" 'function)) :void
  (arg0 :pointer)
  (body1 :pointer)
  (body2 :pointer))

(cffi:defcfun ("dJointEnable" #.(swig-lispify-noprefix "dJointEnable" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("dJointDisable" #.(swig-lispify-noprefix "dJointDisable" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("dJointIsEnabled" #.(swig-lispify-noprefix "dJointIsEnabled" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("dJointSetData" #.(swig-lispify-noprefix "dJointSetData" 'function)) :void
  (arg0 :pointer)
  (data :pointer))

(cffi:defcfun ("dJointGetData" #.(swig-lispify-noprefix "dJointGetData" 'function)) :pointer
  (arg0 :pointer))

(cffi:defcfun ("dJointGetType" #.(swig-lispify-noprefix "dJointGetType" 'function)) #.(swig-lispify-noprefix "dJointType" 'enumname)
  (arg0 :pointer))

(cffi:defcfun ("dJointGetBody" #.(swig-lispify-noprefix "dJointGetBody" 'function)) :pointer
  (arg0 :pointer)
  (index :int))

(cffi:defcfun ("dJointSetFeedback" #.(swig-lispify-noprefix "dJointSetFeedback" 'function)) :void
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dJointGetFeedback" #.(swig-lispify-noprefix "dJointGetFeedback" 'function)) :pointer
  (arg0 :pointer))

(cffi:defcfun ("dJointSetBallAnchor" #.(swig-lispify-noprefix "dJointSetBallAnchor" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetBallAnchor2" #.(swig-lispify-noprefix "dJointSetBallAnchor2" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetBallParam" #.(swig-lispify-noprefix "dJointSetBallParam" 'function)) :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointSetHingeAnchor" #.(swig-lispify-noprefix "dJointSetHingeAnchor" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetHingeAnchorDelta" #.(swig-lispify-noprefix "dJointSetHingeAnchorDelta" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (ax :float)
  (ay :float)
  (az :float))

(cffi:defcfun ("dJointSetHingeAxis" #.(swig-lispify-noprefix "dJointSetHingeAxis" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetHingeAxisOffset" #.(swig-lispify-noprefix "dJointSetHingeAxisOffset" 'function)) :void
  (j :pointer)
  (x :float)
  (y :float)
  (z :float)
  (angle :float))

(cffi:defcfun ("dJointSetHingeParam" #.(swig-lispify-noprefix "dJointSetHingeParam" 'function)) :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointAddHingeTorque" #.(swig-lispify-noprefix "dJointAddHingeTorque" 'function)) :void
  (joint :pointer)
  (torque :float))

(cffi:defcfun ("dJointSetSliderAxis" #.(swig-lispify-noprefix "dJointSetSliderAxis" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetSliderAxisDelta" #.(swig-lispify-noprefix "dJointSetSliderAxisDelta" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (ax :float)
  (ay :float)
  (az :float))

(cffi:defcfun ("dJointSetSliderParam" #.(swig-lispify-noprefix "dJointSetSliderParam" 'function)) :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointAddSliderForce" #.(swig-lispify-noprefix "dJointAddSliderForce" 'function)) :void
  (joint :pointer)
  (force :float))

(cffi:defcfun ("dJointSetHinge2Anchor" #.(swig-lispify-noprefix "dJointSetHinge2Anchor" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetHinge2Axis1" #.(swig-lispify-noprefix "dJointSetHinge2Axis1" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetHinge2Axis2" #.(swig-lispify-noprefix "dJointSetHinge2Axis2" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetHinge2Param" #.(swig-lispify-noprefix "dJointSetHinge2Param" 'function)) :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointAddHinge2Torques" #.(swig-lispify-noprefix "dJointAddHinge2Torques" 'function)) :void
  (joint :pointer)
  (torque1 :float)
  (torque2 :float))

(cffi:defcfun ("dJointSetUniversalAnchor" #.(swig-lispify-noprefix "dJointSetUniversalAnchor" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetUniversalAxis1" #.(swig-lispify-noprefix "dJointSetUniversalAxis1" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetUniversalAxis1Offset" #.(swig-lispify-noprefix "dJointSetUniversalAxis1Offset" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (offset1 :float)
  (offset2 :float))

(cffi:defcfun ("dJointSetUniversalAxis2" #.(swig-lispify-noprefix "dJointSetUniversalAxis2" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetUniversalAxis2Offset" #.(swig-lispify-noprefix "dJointSetUniversalAxis2Offset" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (offset1 :float)
  (offset2 :float))

(cffi:defcfun ("dJointSetUniversalParam" #.(swig-lispify-noprefix "dJointSetUniversalParam" 'function)) :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointAddUniversalTorques" #.(swig-lispify-noprefix "dJointAddUniversalTorques" 'function)) :void
  (joint :pointer)
  (torque1 :float)
  (torque2 :float))

(cffi:defcfun ("dJointSetPRAnchor" #.(swig-lispify-noprefix "dJointSetPRAnchor" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPRAxis1" #.(swig-lispify-noprefix "dJointSetPRAxis1" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPRAxis2" #.(swig-lispify-noprefix "dJointSetPRAxis2" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPRParam" #.(swig-lispify-noprefix "dJointSetPRParam" 'function)) :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointAddPRTorque" #.(swig-lispify-noprefix "dJointAddPRTorque" 'function)) :void
  (j :pointer)
  (torque :float))

(cffi:defcfun ("dJointSetPUAnchor" #.(swig-lispify-noprefix "dJointSetPUAnchor" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPUAnchorDelta" #.(swig-lispify-noprefix "dJointSetPUAnchorDelta" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (dx :float)
  (dy :float)
  (dz :float))

(cffi:defcfun ("dJointSetPUAnchorOffset" #.(swig-lispify-noprefix "dJointSetPUAnchorOffset" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float)
  (dx :float)
  (dy :float)
  (dz :float))

(cffi:defcfun ("dJointSetPUAxis1" #.(swig-lispify-noprefix "dJointSetPUAxis1" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPUAxis2" #.(swig-lispify-noprefix "dJointSetPUAxis2" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPUAxis3" #.(swig-lispify-noprefix "dJointSetPUAxis3" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPUAxisP" #.(swig-lispify-noprefix "dJointSetPUAxisP" 'function)) :void
  (id :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPUParam" #.(swig-lispify-noprefix "dJointSetPUParam" 'function)) :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointAddPUTorque" #.(swig-lispify-noprefix "dJointAddPUTorque" 'function)) :void
  (j :pointer)
  (torque :float))

(cffi:defcfun ("dJointSetPistonAnchor" #.(swig-lispify-noprefix "dJointSetPistonAnchor" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPistonAnchorOffset" #.(swig-lispify-noprefix "dJointSetPistonAnchorOffset" 'function)) :void
  (j :pointer)
  (x :float)
  (y :float)
  (z :float)
  (dx :float)
  (dy :float)
  (dz :float))

(cffi:defcfun ("dJointSetPistonAxis" #.(swig-lispify-noprefix "dJointSetPistonAxis" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetPistonAxisDelta" #.(swig-lispify-noprefix "dJointSetPistonAxisDelta" 'function)) :void
  (j :pointer)
  (x :float)
  (y :float)
  (z :float)
  (ax :float)
  (ay :float)
  (az :float))

(cffi:defcfun ("dJointSetPistonParam" #.(swig-lispify-noprefix "dJointSetPistonParam" 'function)) :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointAddPistonForce" #.(swig-lispify-noprefix "dJointAddPistonForce" 'function)) :void
  (joint :pointer)
  (force :float))

(cffi:defcfun ("dJointSetFixed" #.(swig-lispify-noprefix "dJointSetFixed" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("dJointSetFixedParam" #.(swig-lispify-noprefix "dJointSetFixedParam" 'function)) :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointSetAMotorNumAxes" #.(swig-lispify-noprefix "dJointSetAMotorNumAxes" 'function)) :void
  (arg0 :pointer)
  (num :int))

(cffi:defcfun ("dJointSetAMotorAxis" #.(swig-lispify-noprefix "dJointSetAMotorAxis" 'function)) :void
  (arg0 :pointer)
  (anum :int)
  (rel :int)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetAMotorAngle" #.(swig-lispify-noprefix "dJointSetAMotorAngle" 'function)) :void
  (arg0 :pointer)
  (anum :int)
  (angle :float))

(cffi:defcfun ("dJointSetAMotorParam" #.(swig-lispify-noprefix "dJointSetAMotorParam" 'function)) :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointSetAMotorMode" #.(swig-lispify-noprefix "dJointSetAMotorMode" 'function)) :void
  (arg0 :pointer)
  (mode :int))

(cffi:defcfun ("dJointAddAMotorTorques" #.(swig-lispify-noprefix "dJointAddAMotorTorques" 'function)) :void
  (arg0 :pointer)
  (torque1 :float)
  (torque2 :float)
  (torque3 :float))

(cffi:defcfun ("dJointSetLMotorNumAxes" #.(swig-lispify-noprefix "dJointSetLMotorNumAxes" 'function)) :void
  (arg0 :pointer)
  (num :int))

(cffi:defcfun ("dJointSetLMotorAxis" #.(swig-lispify-noprefix "dJointSetLMotorAxis" 'function)) :void
  (arg0 :pointer)
  (anum :int)
  (rel :int)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetLMotorParam" #.(swig-lispify-noprefix "dJointSetLMotorParam" 'function)) :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointSetPlane2DXParam" #.(swig-lispify-noprefix "dJointSetPlane2DXParam" 'function)) :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointSetPlane2DYParam" #.(swig-lispify-noprefix "dJointSetPlane2DYParam" 'function)) :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointSetPlane2DAngleParam" #.(swig-lispify-noprefix "dJointSetPlane2DAngleParam" 'function)) :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointGetBallAnchor" #.(swig-lispify-noprefix "dJointGetBallAnchor" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetBallAnchor2" #.(swig-lispify-noprefix "dJointGetBallAnchor2" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetBallParam" #.(swig-lispify-noprefix "dJointGetBallParam" 'function)) :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetHingeAnchor" #.(swig-lispify-noprefix "dJointGetHingeAnchor" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetHingeAnchor2" #.(swig-lispify-noprefix "dJointGetHingeAnchor2" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetHingeAxis" #.(swig-lispify-noprefix "dJointGetHingeAxis" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetHingeParam" #.(swig-lispify-noprefix "dJointGetHingeParam" 'function)) :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetHingeAngle" #.(swig-lispify-noprefix "dJointGetHingeAngle" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetHingeAngleRate" #.(swig-lispify-noprefix "dJointGetHingeAngleRate" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetSliderPosition" #.(swig-lispify-noprefix "dJointGetSliderPosition" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetSliderPositionRate" #.(swig-lispify-noprefix "dJointGetSliderPositionRate" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetSliderAxis" #.(swig-lispify-noprefix "dJointGetSliderAxis" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetSliderParam" #.(swig-lispify-noprefix "dJointGetSliderParam" 'function)) :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetHinge2Anchor" #.(swig-lispify-noprefix "dJointGetHinge2Anchor" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetHinge2Anchor2" #.(swig-lispify-noprefix "dJointGetHinge2Anchor2" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetHinge2Axis1" #.(swig-lispify-noprefix "dJointGetHinge2Axis1" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetHinge2Axis2" #.(swig-lispify-noprefix "dJointGetHinge2Axis2" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetHinge2Param" #.(swig-lispify-noprefix "dJointGetHinge2Param" 'function)) :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetHinge2Angle1" #.(swig-lispify-noprefix "dJointGetHinge2Angle1" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetHinge2Angle1Rate" #.(swig-lispify-noprefix "dJointGetHinge2Angle1Rate" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetHinge2Angle2Rate" #.(swig-lispify-noprefix "dJointGetHinge2Angle2Rate" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetUniversalAnchor" #.(swig-lispify-noprefix "dJointGetUniversalAnchor" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetUniversalAnchor2" #.(swig-lispify-noprefix "dJointGetUniversalAnchor2" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetUniversalAxis1" #.(swig-lispify-noprefix "dJointGetUniversalAxis1" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetUniversalAxis2" #.(swig-lispify-noprefix "dJointGetUniversalAxis2" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetUniversalParam" #.(swig-lispify-noprefix "dJointGetUniversalParam" 'function)) :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetUniversalAngles" #.(swig-lispify-noprefix "dJointGetUniversalAngles" 'function)) :void
  (arg0 :pointer)
  (angle1 :pointer)
  (angle2 :pointer))

(cffi:defcfun ("dJointGetUniversalAngle1" #.(swig-lispify-noprefix "dJointGetUniversalAngle1" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetUniversalAngle2" #.(swig-lispify-noprefix "dJointGetUniversalAngle2" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetUniversalAngle1Rate" #.(swig-lispify-noprefix "dJointGetUniversalAngle1Rate" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetUniversalAngle2Rate" #.(swig-lispify-noprefix "dJointGetUniversalAngle2Rate" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPRAnchor" #.(swig-lispify-noprefix "dJointGetPRAnchor" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPRPosition" #.(swig-lispify-noprefix "dJointGetPRPosition" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPRPositionRate" #.(swig-lispify-noprefix "dJointGetPRPositionRate" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPRAngle" #.(swig-lispify-noprefix "dJointGetPRAngle" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPRAngleRate" #.(swig-lispify-noprefix "dJointGetPRAngleRate" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPRAxis1" #.(swig-lispify-noprefix "dJointGetPRAxis1" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPRAxis2" #.(swig-lispify-noprefix "dJointGetPRAxis2" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPRParam" #.(swig-lispify-noprefix "dJointGetPRParam" 'function)) :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetPUAnchor" #.(swig-lispify-noprefix "dJointGetPUAnchor" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPUPosition" #.(swig-lispify-noprefix "dJointGetPUPosition" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPUPositionRate" #.(swig-lispify-noprefix "dJointGetPUPositionRate" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPUAxis1" #.(swig-lispify-noprefix "dJointGetPUAxis1" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPUAxis2" #.(swig-lispify-noprefix "dJointGetPUAxis2" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPUAxis3" #.(swig-lispify-noprefix "dJointGetPUAxis3" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPUAxisP" #.(swig-lispify-noprefix "dJointGetPUAxisP" 'function)) :void
  (id :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPUAngles" #.(swig-lispify-noprefix "dJointGetPUAngles" 'function)) :void
  (arg0 :pointer)
  (angle1 :pointer)
  (angle2 :pointer))

(cffi:defcfun ("dJointGetPUAngle1" #.(swig-lispify-noprefix "dJointGetPUAngle1" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPUAngle1Rate" #.(swig-lispify-noprefix "dJointGetPUAngle1Rate" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPUAngle2" #.(swig-lispify-noprefix "dJointGetPUAngle2" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPUAngle2Rate" #.(swig-lispify-noprefix "dJointGetPUAngle2Rate" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPUParam" #.(swig-lispify-noprefix "dJointGetPUParam" 'function)) :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetPistonPosition" #.(swig-lispify-noprefix "dJointGetPistonPosition" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPistonPositionRate" #.(swig-lispify-noprefix "dJointGetPistonPositionRate" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPistonAngle" #.(swig-lispify-noprefix "dJointGetPistonAngle" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPistonAngleRate" #.(swig-lispify-noprefix "dJointGetPistonAngleRate" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointGetPistonAnchor" #.(swig-lispify-noprefix "dJointGetPistonAnchor" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPistonAnchor2" #.(swig-lispify-noprefix "dJointGetPistonAnchor2" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPistonAxis" #.(swig-lispify-noprefix "dJointGetPistonAxis" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetPistonParam" #.(swig-lispify-noprefix "dJointGetPistonParam" 'function)) :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetAMotorNumAxes" #.(swig-lispify-noprefix "dJointGetAMotorNumAxes" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("dJointGetAMotorAxis" #.(swig-lispify-noprefix "dJointGetAMotorAxis" 'function)) :void
  (arg0 :pointer)
  (anum :int)
  (result :pointer))

(cffi:defcfun ("dJointGetAMotorAxisRel" #.(swig-lispify-noprefix "dJointGetAMotorAxisRel" 'function)) :int
  (arg0 :pointer)
  (anum :int))

(cffi:defcfun ("dJointGetAMotorAngle" #.(swig-lispify-noprefix "dJointGetAMotorAngle" 'function)) :float
  (arg0 :pointer)
  (anum :int))

(cffi:defcfun ("dJointGetAMotorAngleRate" #.(swig-lispify-noprefix "dJointGetAMotorAngleRate" 'function)) :float
  (arg0 :pointer)
  (anum :int))

(cffi:defcfun ("dJointGetAMotorParam" #.(swig-lispify-noprefix "dJointGetAMotorParam" 'function)) :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetAMotorMode" #.(swig-lispify-noprefix "dJointGetAMotorMode" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("dJointGetLMotorNumAxes" #.(swig-lispify-noprefix "dJointGetLMotorNumAxes" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("dJointGetLMotorAxis" #.(swig-lispify-noprefix "dJointGetLMotorAxis" 'function)) :void
  (arg0 :pointer)
  (anum :int)
  (result :pointer))

(cffi:defcfun ("dJointGetLMotorParam" #.(swig-lispify-noprefix "dJointGetLMotorParam" 'function)) :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetFixedParam" #.(swig-lispify-noprefix "dJointGetFixedParam" 'function)) :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointGetTransmissionContactPoint1" #.(swig-lispify-noprefix "dJointGetTransmissionContactPoint1" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetTransmissionContactPoint2" #.(swig-lispify-noprefix "dJointGetTransmissionContactPoint2" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointSetTransmissionAxis1" #.(swig-lispify-noprefix "dJointSetTransmissionAxis1" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointGetTransmissionAxis1" #.(swig-lispify-noprefix "dJointGetTransmissionAxis1" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointSetTransmissionAxis2" #.(swig-lispify-noprefix "dJointSetTransmissionAxis2" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointGetTransmissionAxis2" #.(swig-lispify-noprefix "dJointGetTransmissionAxis2" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointSetTransmissionAnchor1" #.(swig-lispify-noprefix "dJointSetTransmissionAnchor1" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointGetTransmissionAnchor1" #.(swig-lispify-noprefix "dJointGetTransmissionAnchor1" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointSetTransmissionAnchor2" #.(swig-lispify-noprefix "dJointSetTransmissionAnchor2" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointGetTransmissionAnchor2" #.(swig-lispify-noprefix "dJointGetTransmissionAnchor2" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointSetTransmissionParam" #.(swig-lispify-noprefix "dJointSetTransmissionParam" 'function)) :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointGetTransmissionParam" #.(swig-lispify-noprefix "dJointGetTransmissionParam" 'function)) :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointSetTransmissionMode" #.(swig-lispify-noprefix "dJointSetTransmissionMode" 'function)) :void
  (j :pointer)
  (mode :int))

(cffi:defcfun ("dJointGetTransmissionMode" #.(swig-lispify-noprefix "dJointGetTransmissionMode" 'function)) :int
  (j :pointer))

(cffi:defcfun ("dJointSetTransmissionRatio" #.(swig-lispify-noprefix "dJointSetTransmissionRatio" 'function)) :void
  (j :pointer)
  (ratio :float))

(cffi:defcfun ("dJointGetTransmissionRatio" #.(swig-lispify-noprefix "dJointGetTransmissionRatio" 'function)) :float
  (j :pointer))

(cffi:defcfun ("dJointSetTransmissionAxis" #.(swig-lispify-noprefix "dJointSetTransmissionAxis" 'function)) :void
  (j :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointGetTransmissionAxis" #.(swig-lispify-noprefix "dJointGetTransmissionAxis" 'function)) :void
  (j :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetTransmissionAngle1" #.(swig-lispify-noprefix "dJointGetTransmissionAngle1" 'function)) :float
  (j :pointer))

(cffi:defcfun ("dJointGetTransmissionAngle2" #.(swig-lispify-noprefix "dJointGetTransmissionAngle2" 'function)) :float
  (j :pointer))

(cffi:defcfun ("dJointGetTransmissionRadius1" #.(swig-lispify-noprefix "dJointGetTransmissionRadius1" 'function)) :float
  (j :pointer))

(cffi:defcfun ("dJointGetTransmissionRadius2" #.(swig-lispify-noprefix "dJointGetTransmissionRadius2" 'function)) :float
  (j :pointer))

(cffi:defcfun ("dJointSetTransmissionRadius1" #.(swig-lispify-noprefix "dJointSetTransmissionRadius1" 'function)) :void
  (j :pointer)
  (radius :float))

(cffi:defcfun ("dJointSetTransmissionRadius2" #.(swig-lispify-noprefix "dJointSetTransmissionRadius2" 'function)) :void
  (j :pointer)
  (radius :float))

(cffi:defcfun ("dJointGetTransmissionBacklash" #.(swig-lispify-noprefix "dJointGetTransmissionBacklash" 'function)) :float
  (j :pointer))

(cffi:defcfun ("dJointSetTransmissionBacklash" #.(swig-lispify-noprefix "dJointSetTransmissionBacklash" 'function)) :void
  (j :pointer)
  (backlash :float))

(cffi:defcfun ("dJointSetDBallAnchor1" #.(swig-lispify-noprefix "dJointSetDBallAnchor1" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetDBallAnchor2" #.(swig-lispify-noprefix "dJointSetDBallAnchor2" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointGetDBallAnchor1" #.(swig-lispify-noprefix "dJointGetDBallAnchor1" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetDBallAnchor2" #.(swig-lispify-noprefix "dJointGetDBallAnchor2" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetDBallDistance" #.(swig-lispify-noprefix "dJointGetDBallDistance" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointSetDBallParam" #.(swig-lispify-noprefix "dJointSetDBallParam" 'function)) :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointGetDBallParam" #.(swig-lispify-noprefix "dJointGetDBallParam" 'function)) :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dJointSetDHingeAxis" #.(swig-lispify-noprefix "dJointSetDHingeAxis" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointGetDHingeAxis" #.(swig-lispify-noprefix "dJointGetDHingeAxis" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointSetDHingeAnchor1" #.(swig-lispify-noprefix "dJointSetDHingeAnchor1" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointSetDHingeAnchor2" #.(swig-lispify-noprefix "dJointSetDHingeAnchor2" 'function)) :void
  (arg0 :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dJointGetDHingeAnchor1" #.(swig-lispify-noprefix "dJointGetDHingeAnchor1" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetDHingeAnchor2" #.(swig-lispify-noprefix "dJointGetDHingeAnchor2" 'function)) :void
  (arg0 :pointer)
  (result :pointer))

(cffi:defcfun ("dJointGetDHingeDistance" #.(swig-lispify-noprefix "dJointGetDHingeDistance" 'function)) :float
  (arg0 :pointer))

(cffi:defcfun ("dJointSetDHingeParam" #.(swig-lispify-noprefix "dJointSetDHingeParam" 'function)) :void
  (arg0 :pointer)
  (parameter :int)
  (value :float))

(cffi:defcfun ("dJointGetDHingeParam" #.(swig-lispify-noprefix "dJointGetDHingeParam" 'function)) :float
  (arg0 :pointer)
  (parameter :int))

(cffi:defcfun ("dConnectingJoint" #.(swig-lispify-noprefix "dConnectingJoint" 'function)) :pointer
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dConnectingJointList" #.(swig-lispify-noprefix "dConnectingJointList" 'function)) :int
  (arg0 :pointer)
  (arg1 :pointer)
  (arg2 :pointer))

(cffi:defcfun ("dAreConnected" #.(swig-lispify-noprefix "dAreConnected" 'function)) :int
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dAreConnectedExcluding" #.(swig-lispify-noprefix "dAreConnectedExcluding" 'function)) :int
  (body1 :pointer)
  (body2 :pointer)
  (joint_type :int))

(cffi:defcfun ("dSimpleSpaceCreate" #.(swig-lispify-noprefix "dSimpleSpaceCreate" 'function)) :pointer
  (space :pointer))

(cffi:defcfun ("dHashSpaceCreate" #.(swig-lispify-noprefix "dHashSpaceCreate" 'function)) :pointer
  (space :pointer))

(cffi:defcfun ("dQuadTreeSpaceCreate" #.(swig-lispify-noprefix "dQuadTreeSpaceCreate" 'function)) :pointer
  (space :pointer)
  (Center :pointer)
  (Extents :pointer)
  (Depth :int))

(cffi:defcfun ("dSweepAndPruneSpaceCreate" #.(swig-lispify-noprefix "dSweepAndPruneSpaceCreate" 'function)) :pointer
  (space :pointer)
  (axisorder :int))

(cffi:defcfun ("dSpaceDestroy" #.(swig-lispify-noprefix "dSpaceDestroy" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("dHashSpaceSetLevels" #.(swig-lispify-noprefix "dHashSpaceSetLevels" 'function)) :void
  (space :pointer)
  (minlevel :int)
  (maxlevel :int))

(cffi:defcfun ("dHashSpaceGetLevels" #.(swig-lispify-noprefix "dHashSpaceGetLevels" 'function)) :void
  (space :pointer)
  (minlevel :pointer)
  (maxlevel :pointer))

(cffi:defcfun ("dSpaceSetCleanup" #.(swig-lispify-noprefix "dSpaceSetCleanup" 'function)) :void
  (space :pointer)
  (mode :int))

(cffi:defcfun ("dSpaceGetCleanup" #.(swig-lispify-noprefix "dSpaceGetCleanup" 'function)) :int
  (space :pointer))

(cffi:defcfun ("dSpaceSetSublevel" #.(swig-lispify-noprefix "dSpaceSetSublevel" 'function)) :void
  (space :pointer)
  (sublevel :int))

(cffi:defcfun ("dSpaceGetSublevel" #.(swig-lispify-noprefix "dSpaceGetSublevel" 'function)) :int
  (space :pointer))

(cffi:defcfun ("dSpaceSetManualCleanup" #.(swig-lispify-noprefix "dSpaceSetManualCleanup" 'function)) :void
  (space :pointer)
  (mode :int))

(cffi:defcfun ("dSpaceGetManualCleanup" #.(swig-lispify-noprefix "dSpaceGetManualCleanup" 'function)) :int
  (space :pointer))

(cffi:defcfun ("dSpaceAdd" #.(swig-lispify-noprefix "dSpaceAdd" 'function)) :void
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dSpaceRemove" #.(swig-lispify-noprefix "dSpaceRemove" 'function)) :void
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dSpaceQuery" #.(swig-lispify-noprefix "dSpaceQuery" 'function)) :int
  (arg0 :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dSpaceClean" #.(swig-lispify-noprefix "dSpaceClean" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("dSpaceGetNumGeoms" #.(swig-lispify-noprefix "dSpaceGetNumGeoms" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("dSpaceGetGeom" #.(swig-lispify-noprefix "dSpaceGetGeom" 'function)) :pointer
  (arg0 :pointer)
  (i :int))

(cffi:defcfun ("dSpaceGetClass" #.(swig-lispify-noprefix "dSpaceGetClass" 'function)) :int
  (space :pointer))

(cffi:defcfun ("dGeomTriMeshDataCreate" #.(swig-lispify-noprefix "dGeomTriMeshDataCreate" 'function)) :pointer)

(cffi:defcfun ("dGeomTriMeshDataDestroy" #.(swig-lispify-noprefix "dGeomTriMeshDataDestroy" 'function)) :void
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshDataSet" #.(swig-lispify-noprefix "dGeomTriMeshDataSet" 'function)) :void
  (g :pointer)
  (data_id :int)
  (in_data :pointer))

(cffi:defcfun ("dGeomTriMeshDataGet" #.(swig-lispify-noprefix "dGeomTriMeshDataGet" 'function)) :pointer
  (g :pointer)
  (data_id :int))

(cffi:defcfun ("dGeomTriMeshSetLastTransform" #.(swig-lispify-noprefix "dGeomTriMeshSetLastTransform" 'function)) :void
  (g :pointer)
  (last_trans :pointer))

(cffi:defcfun ("dGeomTriMeshGetLastTransform" #.(swig-lispify-noprefix "dGeomTriMeshGetLastTransform" 'function)) :pointer
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshDataBuildSingle" #.(swig-lispify-noprefix "dGeomTriMeshDataBuildSingle" 'function)) :void
  (g :pointer)
  (Vertices :pointer)
  (VertexStride :int)
  (VertexCount :int)
  (Indices :pointer)
  (IndexCount :int)
  (TriStride :int))

(cffi:defcfun ("dGeomTriMeshDataBuildSingle1" #.(swig-lispify-noprefix "dGeomTriMeshDataBuildSingle1" 'function)) :void
  (g :pointer)
  (Vertices :pointer)
  (VertexStride :int)
  (VertexCount :int)
  (Indices :pointer)
  (IndexCount :int)
  (TriStride :int)
  (Normals :pointer))

(cffi:defcfun ("dGeomTriMeshDataBuildDouble" #.(swig-lispify-noprefix "dGeomTriMeshDataBuildDouble" 'function)) :void
  (g :pointer)
  (Vertices :pointer)
  (VertexStride :int)
  (VertexCount :int)
  (Indices :pointer)
  (IndexCount :int)
  (TriStride :int))

(cffi:defcfun ("dGeomTriMeshDataBuildDouble1" #.(swig-lispify-noprefix "dGeomTriMeshDataBuildDouble1" 'function)) :void
  (g :pointer)
  (Vertices :pointer)
  (VertexStride :int)
  (VertexCount :int)
  (Indices :pointer)
  (IndexCount :int)
  (TriStride :int)
  (Normals :pointer))

(cffi:defcfun ("dGeomTriMeshDataBuildSimple" #.(swig-lispify-noprefix "dGeomTriMeshDataBuildSimple" 'function)) :void
  (g :pointer)
  (Vertices :pointer)
  (VertexCount :int)
  (Indices :pointer)
  (IndexCount :int))

(cffi:defcfun ("dGeomTriMeshDataBuildSimple1" #.(swig-lispify-noprefix "dGeomTriMeshDataBuildSimple1" 'function)) :void
  (g :pointer)
  (Vertices :pointer)
  (VertexCount :int)
  (Indices :pointer)
  (IndexCount :int)
  (Normals :pointer))

(cffi:defcfun ("dGeomTriMeshDataPreprocess" #.(swig-lispify-noprefix "dGeomTriMeshDataPreprocess" 'function)) :void
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshDataGetBuffer" #.(swig-lispify-noprefix "dGeomTriMeshDataGetBuffer" 'function)) :void
  (g :pointer)
  (buf :pointer)
  (bufLen :pointer))

(cffi:defcfun ("dGeomTriMeshDataSetBuffer" #.(swig-lispify-noprefix "dGeomTriMeshDataSetBuffer" 'function)) :void
  (g :pointer)
  (buf :pointer))

(cffi:defcfun ("dGeomTriMeshSetCallback" #.(swig-lispify-noprefix "dGeomTriMeshSetCallback" 'function)) :void
  (g :pointer)
  (Callback :pointer))

(cffi:defcfun ("dGeomTriMeshGetCallback" #.(swig-lispify-noprefix "dGeomTriMeshGetCallback" 'function)) :pointer
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshSetArrayCallback" #.(swig-lispify-noprefix "dGeomTriMeshSetArrayCallback" 'function)) :void
  (g :pointer)
  (ArrayCallback :pointer))

(cffi:defcfun ("dGeomTriMeshGetArrayCallback" #.(swig-lispify-noprefix "dGeomTriMeshGetArrayCallback" 'function)) :pointer
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshSetRayCallback" #.(swig-lispify-noprefix "dGeomTriMeshSetRayCallback" 'function)) :void
  (g :pointer)
  (Callback :pointer))

(cffi:defcfun ("dGeomTriMeshGetRayCallback" #.(swig-lispify-noprefix "dGeomTriMeshGetRayCallback" 'function)) :pointer
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshSetTriMergeCallback" #.(swig-lispify-noprefix "dGeomTriMeshSetTriMergeCallback" 'function)) :void
  (g :pointer)
  (Callback :pointer))

(cffi:defcfun ("dGeomTriMeshGetTriMergeCallback" #.(swig-lispify-noprefix "dGeomTriMeshGetTriMergeCallback" 'function)) :pointer
  (g :pointer))

(cffi:defcfun ("dCreateTriMesh" #.(swig-lispify-noprefix "dCreateTriMesh" 'function)) :pointer
  (space :pointer)
  (Data :pointer)
  (Callback :pointer)
  (ArrayCallback :pointer)
  (RayCallback :pointer))

(cffi:defcfun ("dGeomTriMeshSetData" #.(swig-lispify-noprefix "dGeomTriMeshSetData" 'function)) :void
  (g :pointer)
  (Data :pointer))

(cffi:defcfun ("dGeomTriMeshGetData" #.(swig-lispify-noprefix "dGeomTriMeshGetData" 'function)) :pointer
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshEnableTC" #.(swig-lispify-noprefix "dGeomTriMeshEnableTC" 'function)) :void
  (g :pointer)
  (geomClass :int)
  (enable :int))

(cffi:defcfun ("dGeomTriMeshIsTCEnabled" #.(swig-lispify-noprefix "dGeomTriMeshIsTCEnabled" 'function)) :int
  (g :pointer)
  (geomClass :int))

(cffi:defcfun ("dGeomTriMeshClearTCCache" #.(swig-lispify-noprefix "dGeomTriMeshClearTCCache" 'function)) :void
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshGetTriMeshDataID" #.(swig-lispify-noprefix "dGeomTriMeshGetTriMeshDataID" 'function)) :pointer
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshGetTriangle" #.(swig-lispify-noprefix "dGeomTriMeshGetTriangle" 'function)) :void
  (g :pointer)
  (Index :int)
  (v0 :pointer)
  (v1 :pointer)
  (v2 :pointer))

(cffi:defcfun ("dGeomTriMeshGetPoint" #.(swig-lispify-noprefix "dGeomTriMeshGetPoint" 'function)) :void
  (g :pointer)
  (Index :int)
  (u :float)
  (v :float)
  (Out :pointer))

(cffi:defcfun ("dGeomTriMeshGetTriangleCount" #.(swig-lispify-noprefix "dGeomTriMeshGetTriangleCount" 'function)) :int
  (g :pointer))

(cffi:defcfun ("dGeomTriMeshDataUpdate" #.(swig-lispify-noprefix "dGeomTriMeshDataUpdate" 'function)) :void
  (g :pointer))

(cffi:defcfun ("dGeomDestroy" #.(swig-lispify-noprefix "dGeomDestroy" 'function)) :void
  (geom :pointer))

(cffi:defcfun ("dGeomSetData" #.(swig-lispify-noprefix "dGeomSetData" 'function)) :void
  (geom :pointer)
  (data :pointer))

(cffi:defcfun ("dGeomGetData" #.(swig-lispify-noprefix "dGeomGetData" 'function)) :pointer
  (geom :pointer))

(cffi:defcfun ("dGeomSetBody" #.(swig-lispify-noprefix "dGeomSetBody" 'function)) :void
  (geom :pointer)
  (body :pointer))

(cffi:defcfun ("dGeomGetBody" #.(swig-lispify-noprefix "dGeomGetBody" 'function)) :pointer
  (geom :pointer))

(cffi:defcfun ("dGeomSetPosition" #.(swig-lispify-noprefix "dGeomSetPosition" 'function)) :void
  (geom :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dGeomSetRotation" #.(swig-lispify-noprefix "dGeomSetRotation" 'function)) :void
  (geom :pointer)
  (R :pointer))

(cffi:defcfun ("dGeomSetQuaternion" #.(swig-lispify-noprefix "dGeomSetQuaternion" 'function)) :void
  (geom :pointer)
  (Q :pointer))

(cffi:defcfun ("dGeomGetPosition" #.(swig-lispify-noprefix "dGeomGetPosition" 'function)) :pointer
  (geom :pointer))

(cffi:defcfun ("dGeomCopyPosition" #.(swig-lispify-noprefix "dGeomCopyPosition" 'function)) :void
  (geom :pointer)
  (pos :pointer))

(cffi:defcfun ("dGeomGetRotation" #.(swig-lispify-noprefix "dGeomGetRotation" 'function)) :pointer
  (geom :pointer))

(cffi:defcfun ("dGeomCopyRotation" #.(swig-lispify-noprefix "dGeomCopyRotation" 'function)) :void
  (geom :pointer)
  (R :pointer))

(cffi:defcfun ("dGeomGetQuaternion" #.(swig-lispify-noprefix "dGeomGetQuaternion" 'function)) :void
  (geom :pointer)
  (result :pointer))

(cffi:defcfun ("dGeomGetAABB" #.(swig-lispify-noprefix "dGeomGetAABB" 'function)) :void
  (geom :pointer)
  (aabb :pointer))

(cffi:defcfun ("dGeomIsSpace" #.(swig-lispify-noprefix "dGeomIsSpace" 'function)) :int
  (geom :pointer))

(cffi:defcfun ("dGeomGetSpace" #.(swig-lispify-noprefix "dGeomGetSpace" 'function)) :pointer
  (arg0 :pointer))

(cffi:defcfun ("dGeomGetClass" #.(swig-lispify-noprefix "dGeomGetClass" 'function)) :int
  (geom :pointer))

(cffi:defcfun ("dGeomSetCategoryBits" #.(swig-lispify-noprefix "dGeomSetCategoryBits" 'function)) :void
  (geom :pointer)
  (bits :unsigned-long))

(cffi:defcfun ("dGeomSetCollideBits" #.(swig-lispify-noprefix "dGeomSetCollideBits" 'function)) :void
  (geom :pointer)
  (bits :unsigned-long))

(cffi:defcfun ("dGeomGetCategoryBits" #.(swig-lispify-noprefix "dGeomGetCategoryBits" 'function)) :unsigned-long
  (arg0 :pointer))

(cffi:defcfun ("dGeomGetCollideBits" #.(swig-lispify-noprefix "dGeomGetCollideBits" 'function)) :unsigned-long
  (arg0 :pointer))

(cffi:defcfun ("dGeomEnable" #.(swig-lispify-noprefix "dGeomEnable" 'function)) :void
  (geom :pointer))

(cffi:defcfun ("dGeomDisable" #.(swig-lispify-noprefix "dGeomDisable" 'function)) :void
  (geom :pointer))

(cffi:defcfun ("dGeomIsEnabled" #.(swig-lispify-noprefix "dGeomIsEnabled" 'function)) :int
  (geom :pointer))

(cffi:defcfun ("dGeomLowLevelControl" #.(swig-lispify-noprefix "dGeomLowLevelControl" 'function)) :int
  (geom :pointer)
  (controlClass :int)
  (controlCode :int)
  (dataValue :pointer)
  (dataSize :pointer))

(cffi:defcfun ("dGeomGetRelPointPos" #.(swig-lispify-noprefix "dGeomGetRelPointPos" 'function)) :void
  (geom :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dGeomGetPosRelPoint" #.(swig-lispify-noprefix "dGeomGetPosRelPoint" 'function)) :void
  (geom :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dGeomVectorToWorld" #.(swig-lispify-noprefix "dGeomVectorToWorld" 'function)) :void
  (geom :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dGeomVectorFromWorld" #.(swig-lispify-noprefix "dGeomVectorFromWorld" 'function)) :void
  (geom :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (result :pointer))

(cffi:defcfun ("dGeomSetOffsetPosition" #.(swig-lispify-noprefix "dGeomSetOffsetPosition" 'function)) :void
  (geom :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dGeomSetOffsetRotation" #.(swig-lispify-noprefix "dGeomSetOffsetRotation" 'function)) :void
  (geom :pointer)
  (R :pointer))

(cffi:defcfun ("dGeomSetOffsetQuaternion" #.(swig-lispify-noprefix "dGeomSetOffsetQuaternion" 'function)) :void
  (geom :pointer)
  (Q :pointer))

(cffi:defcfun ("dGeomSetOffsetWorldPosition" #.(swig-lispify-noprefix "dGeomSetOffsetWorldPosition" 'function)) :void
  (geom :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dGeomSetOffsetWorldRotation" #.(swig-lispify-noprefix "dGeomSetOffsetWorldRotation" 'function)) :void
  (geom :pointer)
  (R :pointer))

(cffi:defcfun ("dGeomSetOffsetWorldQuaternion" #.(swig-lispify-noprefix "dGeomSetOffsetWorldQuaternion" 'function)) :void
  (geom :pointer)
  (arg1 :pointer))

(cffi:defcfun ("dGeomClearOffset" #.(swig-lispify-noprefix "dGeomClearOffset" 'function)) :void
  (geom :pointer))

(cffi:defcfun ("dGeomIsOffset" #.(swig-lispify-noprefix "dGeomIsOffset" 'function)) :int
  (geom :pointer))

(cffi:defcfun ("dGeomGetOffsetPosition" #.(swig-lispify-noprefix "dGeomGetOffsetPosition" 'function)) :pointer
  (geom :pointer))

(cffi:defcfun ("dGeomCopyOffsetPosition" #.(swig-lispify-noprefix "dGeomCopyOffsetPosition" 'function)) :void
  (geom :pointer)
  (pos :pointer))

(cffi:defcfun ("dGeomGetOffsetRotation" #.(swig-lispify-noprefix "dGeomGetOffsetRotation" 'function)) :pointer
  (geom :pointer))

(cffi:defcfun ("dGeomCopyOffsetRotation" #.(swig-lispify-noprefix "dGeomCopyOffsetRotation" 'function)) :void
  (geom :pointer)
  (R :pointer))

(cffi:defcfun ("dGeomGetOffsetQuaternion" #.(swig-lispify-noprefix "dGeomGetOffsetQuaternion" 'function)) :void
  (geom :pointer)
  (result :pointer))

(cffi:defcfun ("dCollide" #.(swig-lispify-noprefix "dCollide" 'function)) :int
  (o1 :pointer)
  (o2 :pointer)
  (flags :int)
  (contact :pointer)
  (skip :int))

(cffi:defcfun ("dSpaceCollide" #.(swig-lispify-noprefix "dSpaceCollide" 'function)) :void
  (space :pointer)
  (data :pointer)
  (callback :pointer))

(cffi:defcfun ("dSpaceCollide2" #.(swig-lispify-noprefix "dSpaceCollide2" 'function)) :void
  (space1 :pointer)
  (space2 :pointer)
  (data :pointer)
  (callback :pointer))

(cffi:defcfun ("dCreateSphere" #.(swig-lispify-noprefix "dCreateSphere" 'function)) :pointer
  (space :pointer)
  (radius :float))

(cffi:defcfun ("dGeomSphereSetRadius" #.(swig-lispify-noprefix "dGeomSphereSetRadius" 'function)) :void
  (sphere :pointer)
  (radius :float))

(cffi:defcfun ("dGeomSphereGetRadius" #.(swig-lispify-noprefix "dGeomSphereGetRadius" 'function)) :float
  (sphere :pointer))

(cffi:defcfun ("dGeomSpherePointDepth" #.(swig-lispify-noprefix "dGeomSpherePointDepth" 'function)) :float
  (sphere :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dCreateConvex" #.(swig-lispify-noprefix "dCreateConvex" 'function)) :pointer
  (space :pointer)
  (_planes :pointer)
  (_planecount :unsigned-int)
  (_points :pointer)
  (_pointcount :unsigned-int)
  (_polygons :pointer))

(cffi:defcfun ("dGeomSetConvex" #.(swig-lispify-noprefix "dGeomSetConvex" 'function)) :void
  (g :pointer)
  (_planes :pointer)
  (_count :unsigned-int)
  (_points :pointer)
  (_pointcount :unsigned-int)
  (_polygons :pointer))

(cffi:defcfun ("dCreateBox" #.(swig-lispify-noprefix "dCreateBox" 'function)) :pointer
  (space :pointer)
  (lx :float)
  (ly :float)
  (lz :float))

(cffi:defcfun ("dGeomBoxSetLengths" #.(swig-lispify-noprefix "dGeomBoxSetLengths" 'function)) :void
  (box :pointer)
  (lx :float)
  (ly :float)
  (lz :float))

(cffi:defcfun ("dGeomBoxGetLengths" #.(swig-lispify-noprefix "dGeomBoxGetLengths" 'function)) :void
  (box :pointer)
  (result :pointer))

(cffi:defcfun ("dGeomBoxPointDepth" #.(swig-lispify-noprefix "dGeomBoxPointDepth" 'function)) :float
  (box :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dCreatePlane" #.(swig-lispify-noprefix "dCreatePlane" 'function)) :pointer
  (space :pointer)
  (a :float)
  (b :float)
  (c :float)
  (d :float))

(cffi:defcfun ("dGeomPlaneSetParams" #.(swig-lispify-noprefix "dGeomPlaneSetParams" 'function)) :void
  (plane :pointer)
  (a :float)
  (b :float)
  (c :float)
  (d :float))

(cffi:defcfun ("dGeomPlaneGetParams" #.(swig-lispify-noprefix "dGeomPlaneGetParams" 'function)) :void
  (plane :pointer)
  (result :pointer))

(cffi:defcfun ("dGeomPlanePointDepth" #.(swig-lispify-noprefix "dGeomPlanePointDepth" 'function)) :float
  (plane :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dCreateCapsule" #.(swig-lispify-noprefix "dCreateCapsule" 'function)) :pointer
  (space :pointer)
  (radius :float)
  (length :float))

(cffi:defcfun ("dGeomCapsuleSetParams" #.(swig-lispify-noprefix "dGeomCapsuleSetParams" 'function)) :void
  (ccylinder :pointer)
  (radius :float)
  (length :float))

(cffi:defcfun ("dGeomCapsuleGetParams" #.(swig-lispify-noprefix "dGeomCapsuleGetParams" 'function)) :void
  (ccylinder :pointer)
  (radius :pointer)
  (length :pointer))

(cffi:defcfun ("dGeomCapsulePointDepth" #.(swig-lispify-noprefix "dGeomCapsulePointDepth" 'function)) :float
  (ccylinder :pointer)
  (x :float)
  (y :float)
  (z :float))

(cffi:defcfun ("dCreateCylinder" #.(swig-lispify-noprefix "dCreateCylinder" 'function)) :pointer
  (space :pointer)
  (radius :float)
  (length :float))

(cffi:defcfun ("dGeomCylinderSetParams" #.(swig-lispify-noprefix "dGeomCylinderSetParams" 'function)) :void
  (cylinder :pointer)
  (radius :float)
  (length :float))

(cffi:defcfun ("dGeomCylinderGetParams" #.(swig-lispify-noprefix "dGeomCylinderGetParams" 'function)) :void
  (cylinder :pointer)
  (radius :pointer)
  (length :pointer))

(cffi:defcfun ("dCreateRay" #.(swig-lispify-noprefix "dCreateRay" 'function)) :pointer
  (space :pointer)
  (length :float))

(cffi:defcfun ("dGeomRaySetLength" #.(swig-lispify-noprefix "dGeomRaySetLength" 'function)) :void
  (ray :pointer)
  (length :float))

(cffi:defcfun ("dGeomRayGetLength" #.(swig-lispify-noprefix "dGeomRayGetLength" 'function)) :float
  (ray :pointer))

(cffi:defcfun ("dGeomRaySet" #.(swig-lispify-noprefix "dGeomRaySet" 'function)) :void
  (ray :pointer)
  (px :float)
  (py :float)
  (pz :float)
  (dx :float)
  (dy :float)
  (dz :float))

(cffi:defcfun ("dGeomRayGet" #.(swig-lispify-noprefix "dGeomRayGet" 'function)) :void
  (ray :pointer)
  (start :pointer)
  (dir :pointer))

(cffi:defcfun ("dGeomRaySetParams" #.(swig-lispify-noprefix "dGeomRaySetParams" 'function)) :void
  (g :pointer)
  (FirstContact :int)
  (BackfaceCull :int))

(cffi:defcfun ("dGeomRayGetParams" #.(swig-lispify-noprefix "dGeomRayGetParams" 'function)) :void
  (g :pointer)
  (FirstContact :pointer)
  (BackfaceCull :pointer))

(cffi:defcfun ("dGeomRaySetClosestHit" #.(swig-lispify-noprefix "dGeomRaySetClosestHit" 'function)) :void
  (g :pointer)
  (closestHit :int))

(cffi:defcfun ("dGeomRayGetClosestHit" #.(swig-lispify-noprefix "dGeomRayGetClosestHit" 'function)) :int
  (g :pointer))

(cffi:defcfun ("dCreateGeomTransform" #.(swig-lispify-noprefix "dCreateGeomTransform" 'function)) :pointer
  (space :pointer))

(cffi:defcfun ("dGeomTransformSetGeom" #.(swig-lispify-noprefix "dGeomTransformSetGeom" 'function)) :void
  (g :pointer)
  (obj :pointer))

(cffi:defcfun ("dGeomTransformGetGeom" #.(swig-lispify-noprefix "dGeomTransformGetGeom" 'function)) :pointer
  (g :pointer))

(cffi:defcfun ("dGeomTransformSetCleanup" #.(swig-lispify-noprefix "dGeomTransformSetCleanup" 'function)) :void
  (g :pointer)
  (mode :int))

(cffi:defcfun ("dGeomTransformGetCleanup" #.(swig-lispify-noprefix "dGeomTransformGetCleanup" 'function)) :int
  (g :pointer))

(cffi:defcfun ("dGeomTransformSetInfo" #.(swig-lispify-noprefix "dGeomTransformSetInfo" 'function)) :void
  (g :pointer)
  (mode :int))

(cffi:defcfun ("dGeomTransformGetInfo" #.(swig-lispify-noprefix "dGeomTransformGetInfo" 'function)) :int
  (g :pointer))

(cffi:defcfun ("dCreateHeightfield" #.(swig-lispify-noprefix "dCreateHeightfield" 'function)) :pointer
  (space :pointer)
  (data :pointer)
  (bPlaceable :int))

(cffi:defcfun ("dGeomHeightfieldDataCreate" #.(swig-lispify-noprefix "dGeomHeightfieldDataCreate" 'function)) :pointer)

(cffi:defcfun ("dGeomHeightfieldDataDestroy" #.(swig-lispify-noprefix "dGeomHeightfieldDataDestroy" 'function)) :void
  (d :pointer))

(cffi:defcfun ("dGeomHeightfieldDataBuildCallback" #.(swig-lispify-noprefix "dGeomHeightfieldDataBuildCallback" 'function)) :void
  (d :pointer)
  (pUserData :pointer)
  (pCallback :pointer)
  (width :float)
  (depth :float)
  (widthSamples :int)
  (depthSamples :int)
  (scale :float)
  (offset :float)
  (thickness :float)
  (bWrap :int))

(cffi:defcfun ("dGeomHeightfieldDataBuildByte" #.(swig-lispify-noprefix "dGeomHeightfieldDataBuildByte" 'function)) :void
  (d :pointer)
  (pHeightData :pointer)
  (bCopyHeightData :int)
  (width :float)
  (depth :float)
  (widthSamples :int)
  (depthSamples :int)
  (scale :float)
  (offset :float)
  (thickness :float)
  (bWrap :int))

(cffi:defcfun ("dGeomHeightfieldDataBuildShort" #.(swig-lispify-noprefix "dGeomHeightfieldDataBuildShort" 'function)) :void
  (d :pointer)
  (pHeightData :pointer)
  (bCopyHeightData :int)
  (width :float)
  (depth :float)
  (widthSamples :int)
  (depthSamples :int)
  (scale :float)
  (offset :float)
  (thickness :float)
  (bWrap :int))

(cffi:defcfun ("dGeomHeightfieldDataBuildSingle" #.(swig-lispify-noprefix "dGeomHeightfieldDataBuildSingle" 'function)) :void
  (d :pointer)
  (pHeightData :pointer)
  (bCopyHeightData :int)
  (width :float)
  (depth :float)
  (widthSamples :int)
  (depthSamples :int)
  (scale :float)
  (offset :float)
  (thickness :float)
  (bWrap :int))

(cffi:defcfun ("dGeomHeightfieldDataBuildDouble" #.(swig-lispify-noprefix "dGeomHeightfieldDataBuildDouble" 'function)) :void
  (d :pointer)
  (pHeightData :pointer)
  (bCopyHeightData :int)
  (width :float)
  (depth :float)
  (widthSamples :int)
  (depthSamples :int)
  (scale :float)
  (offset :float)
  (thickness :float)
  (bWrap :int))

(cffi:defcfun ("dGeomHeightfieldDataSetBounds" #.(swig-lispify-noprefix "dGeomHeightfieldDataSetBounds" 'function)) :void
  (d :pointer)
  (minHeight :float)
  (maxHeight :float))

(cffi:defcfun ("dGeomHeightfieldSetHeightfieldData" #.(swig-lispify-noprefix "dGeomHeightfieldSetHeightfieldData" 'function)) :void
  (g :pointer)
  (d :pointer))

(cffi:defcfun ("dGeomHeightfieldGetHeightfieldData" #.(swig-lispify-noprefix "dGeomHeightfieldGetHeightfieldData" 'function)) :pointer
  (g :pointer))

(cffi:defcfun ("dClosestLineSegmentPoints" #.(swig-lispify-noprefix "dClosestLineSegmentPoints" 'function)) :void
  (a1 :pointer)
  (a2 :pointer)
  (b1 :pointer)
  (b2 :pointer)
  (cp1 :pointer)
  (cp2 :pointer))

(cffi:defcfun ("dBoxTouchesBox" #.(swig-lispify-noprefix "dBoxTouchesBox" 'function)) :int
  (_p1 :pointer)
  (R1 :pointer)
  (side1 :pointer)
  (_p2 :pointer)
  (R2 :pointer)
  (side2 :pointer))

(cffi:defcfun ("dBoxBox" #.(swig-lispify-noprefix "dBoxBox" 'function)) :int
  (p1 :pointer)
  (R1 :pointer)
  (side1 :pointer)
  (p2 :pointer)
  (R2 :pointer)
  (side2 :pointer)
  (normal :pointer)
  (depth :pointer)
  (return_code :pointer)
  (flags :int)
  (contact :pointer)
  (skip :int))

(cffi:defcfun ("dInfiniteAABB" #.(swig-lispify-noprefix "dInfiniteAABB" 'function)) :void
  (geom :pointer)
  (aabb :pointer))

(cffi:defcfun ("dCreateGeomClass" #.(swig-lispify-noprefix "dCreateGeomClass" 'function)) :int
  (classptr :pointer))

(cffi:defcfun ("dGeomGetClassData" #.(swig-lispify-noprefix "dGeomGetClassData" 'function)) :pointer
  (arg0 :pointer))

(cffi:defcfun ("dCreateGeom" #.(swig-lispify-noprefix "dCreateGeom" 'function)) :pointer
  (classnum :int))

(cffi:defcfun ("dSetColliderOverride" #.(swig-lispify-noprefix "dSetColliderOverride" 'function)) :void
  (i :int)
  (j :int)
  (fn :pointer))

(cffi:defcfun ("dWorldExportDIF" #.(swig-lispify-noprefix "dWorldExportDIF" 'function)) :void
  (w :pointer)
  (file :pointer)
  (world_name :string))
