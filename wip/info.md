;; functions our bindings dont have
;; ("dWorldExportDIF" "dSetColliderOverride" "dCreateGeom" "dGeomGetClassData"
;;  "dCreateGeomClass" "dInfiniteAABB" "dBoxBox" "dBoxTouchesBox"
;;  "dClosestLineSegmentPoints" "dGeomHeightfieldGetHeightfieldData"
;;  "dGeomHeightfieldSetHeightfieldData" "dGeomHeightfieldDataSetBounds"
;;  "dGeomHeightfieldDataBuildDouble" "dGeomHeightfieldDataBuildSingle"
;;  "dGeomHeightfieldDataBuildShort" "dGeomHeightfieldDataBuildByte"
;;  "dGeomHeightfieldDataBuildCallback" "dGeomHeightfieldDataDestroy"
;;  "dGeomHeightfieldDataCreate" "dCreateHeightfield" "dGeomTransformGetInfo"
;;  "dGeomTransformSetInfo" "dGeomTransformGetCleanup" "dGeomTransformSetCleanup"
;;  "dGeomTransformGetGeom" "dGeomTransformSetGeom" "dCreateGeomTransform"
;;  "dGeomCylinderGetParams" "dGeomCylinderSetParams" "dGeomCapsulePointDepth"
;;  "dGeomCapsuleGetParams" "dGeomCapsuleSetParams" "dGeomPlanePointDepth"
;;  "dGeomPlaneGetParams" "dGeomPlaneSetParams" "dGeomBoxPointDepth"
;;  "dGeomBoxGetLengths" "dGeomBoxSetLengths" "dSpaceCollide2"
;;  "dGeomGetOffsetQuaternion" "dGeomCopyOffsetRotation" "dGeomGetOffsetRotation"
;;  "dGeomCopyOffsetPosition" "dGeomGetOffsetPosition" "dGeomIsOffset"
;;  "dGeomSetOffsetWorldQuaternion" "dGeomSetOffsetWorldRotation"
;;  "dGeomSetOffsetWorldPosition" "dGeomVectorFromWorld" "dGeomVectorToWorld"
;;  "dGeomGetPosRelPoint" "dGeomGetRelPointPos" "dGeomLowLevelControl"
;;  "dGeomIsEnabled" "dGeomDisable" "dGeomEnable" "dGeomGetClass" "dGeomGetSpace"
;;  "dGeomIsSpace" "dGeomGetAABB" "dGeomCopyRotation" "dGeomCopyPosition"
;;  "dGeomGetData" "dGeomSetData" "dGeomTriMeshDataUpdate"
;;  "dGeomTriMeshGetTriangleCount" "dGeomTriMeshGetPoint"
;;  "dGeomTriMeshGetTriangle" "dGeomTriMeshGetTriMeshDataID"
;;  "dGeomTriMeshClearTCCache" "dGeomTriMeshIsTCEnabled" "dGeomTriMeshEnableTC"
;;  "dGeomTriMeshGetData" "dGeomTriMeshSetData" "dCreateTriMesh"
;;  "dGeomTriMeshGetTriMergeCallback" "dGeomTriMeshSetTriMergeCallback"
;;  "dGeomTriMeshGetRayCallback" "dGeomTriMeshSetRayCallback"
;;  "dGeomTriMeshGetArrayCallback" "dGeomTriMeshSetArrayCallback"
;;  "dGeomTriMeshGetCallback" "dGeomTriMeshSetCallback"
;;  "dGeomTriMeshDataSetBuffer" "dGeomTriMeshDataGetBuffer"
;;  "dGeomTriMeshDataPreprocess" "dGeomTriMeshDataBuildSimple1"
;;  "dGeomTriMeshDataBuildSimple" "dGeomTriMeshDataBuildDouble1"
;;  "dGeomTriMeshDataBuildDouble" "dGeomTriMeshDataBuildSingle1"
;;  "dGeomTriMeshDataBuildSingle" "dGeomTriMeshGetLastTransform"
;;  "dGeomTriMeshSetLastTransform" "dGeomTriMeshDataGet" "dGeomTriMeshDataSet"
;;  "dGeomTriMeshDataDestroy" "dGeomTriMeshDataCreate" "dSpaceGetClass"
;;  "dSpaceGetGeom" "dSpaceGetNumGeoms" "dSpaceClean" "dSpaceQuery" "dSpaceRemove"
;;  "dSpaceAdd" "dSpaceGetManualCleanup" "dSpaceSetManualCleanup"
;;  "dSpaceGetSublevel" "dSpaceSetSublevel" "dSpaceGetCleanup" "dSpaceSetCleanup"
;;  "dHashSpaceGetLevels" "dHashSpaceSetLevels" "dSweepAndPruneSpaceCreate"
;;  "dSimpleSpaceCreate" "dAreConnectedExcluding" "dAreConnected"
;;  "dConnectingJointList" "dConnectingJoint" "dJointGetDHingeParam"
;;  "dJointSetDHingeParam" "dJointGetDHingeDistance" "dJointGetDHingeAnchor2"
;;  "dJointGetDHingeAnchor1" "dJointSetDHingeAnchor2" "dJointSetDHingeAnchor1"
;;  "dJointGetDHingeAxis" "dJointSetDHingeAxis" "dJointGetDBallParam"
;;  "dJointSetDBallParam" "dJointGetDBallDistance" "dJointGetDBallAnchor2"
;;  "dJointGetDBallAnchor1" "dJointSetDBallAnchor2" "dJointSetDBallAnchor1"
;;  "dJointSetTransmissionBacklash" "dJointGetTransmissionBacklash"
;;  "dJointSetTransmissionRadius2" "dJointSetTransmissionRadius1"
;;  "dJointGetTransmissionRadius2" "dJointGetTransmissionRadius1"
;;  "dJointGetTransmissionAngle2" "dJointGetTransmissionAngle1"
;;  "dJointGetTransmissionAxis" "dJointSetTransmissionAxis"
;;  "dJointGetTransmissionRatio" "dJointSetTransmissionRatio"
;;  "dJointGetTransmissionMode" "dJointSetTransmissionMode"
;;  "dJointGetTransmissionParam" "dJointSetTransmissionParam"
;;  "dJointGetTransmissionAnchor2" "dJointSetTransmissionAnchor2"
;;  "dJointGetTransmissionAnchor1" "dJointSetTransmissionAnchor1"
;;  "dJointGetTransmissionAxis2" "dJointSetTransmissionAxis2"
;;  "dJointGetTransmissionAxis1" "dJointSetTransmissionAxis1"
;;  "dJointGetTransmissionContactPoint2" "dJointGetTransmissionContactPoint1"
;;  "dJointGetFixedParam" "dJointGetLMotorParam" "dJointGetLMotorAxis"
;;  "dJointGetLMotorNumAxes" "dJointGetAMotorMode" "dJointGetAMotorParam"
;;  "dJointGetAMotorAngleRate" "dJointGetAMotorAngle" "dJointGetAMotorAxisRel"
;;  "dJointGetAMotorAxis" "dJointGetAMotorNumAxes" "dJointGetPistonParam"
;;  "dJointGetPistonAxis" "dJointGetPistonAnchor2" "dJointGetPistonAnchor"
;;  "dJointGetPistonAngleRate" "dJointGetPistonAngle"
;;  "dJointGetPistonPositionRate" "dJointGetPistonPosition" "dJointGetPUParam"
;;  "dJointGetPUAngle2Rate" "dJointGetPUAngle2" "dJointGetPUAngle1Rate"
;;  "dJointGetPUAngle1" "dJointGetPUAngles" "dJointGetPUAxisP" "dJointGetPUAxis3"
;;  "dJointGetPUAxis2" "dJointGetPUAxis1" "dJointGetPUPositionRate"
;;  "dJointGetPUPosition" "dJointGetPUAnchor" "dJointGetPRParam"
;;  "dJointGetPRAxis2" "dJointGetPRAxis1" "dJointGetPRAngleRate"
;;  "dJointGetPRAngle" "dJointGetPRPositionRate" "dJointGetPRPosition"
;;  "dJointGetPRAnchor" "dJointGetUniversalAngle2Rate"
;;  "dJointGetUniversalAngle1Rate" "dJointGetUniversalAngle2"
;;  "dJointGetUniversalAngle1" "dJointGetUniversalAngles"
;;  "dJointGetUniversalParam" "dJointGetUniversalAxis2" "dJointGetUniversalAxis1"
;;  "dJointGetUniversalAnchor2" "dJointGetUniversalAnchor"
;;  "dJointGetHinge2Angle2Rate" "dJointGetHinge2Angle1Rate"
;;  "dJointGetHinge2Angle1" "dJointGetHinge2Param" "dJointGetHinge2Axis2"
;;  "dJointGetHinge2Axis1" "dJointGetHinge2Anchor2" "dJointGetHinge2Anchor"
;;  "dJointGetSliderParam" "dJointGetSliderAxis" "dJointGetSliderPositionRate"
;;  "dJointGetSliderPosition" "dJointGetHingeAngleRate" "dJointGetHingeAngle"
;;  "dJointGetHingeParam" "dJointGetHingeAxis" "dJointGetHingeAnchor2"
;;  "dJointGetHingeAnchor" "dJointGetBallParam" "dJointGetBallAnchor2"
;;  "dJointGetBallAnchor" "dJointSetPlane2DAngleParam" "dJointSetPlane2DYParam"
;;  "dJointSetPlane2DXParam" "dJointSetLMotorParam" "dJointSetLMotorAxis"
;;  "dJointSetLMotorNumAxes" "dJointAddAMotorTorques" "dJointSetAMotorMode"
;;  "dJointSetAMotorParam" "dJointSetAMotorAngle" "dJointSetAMotorAxis"
;;  "dJointSetAMotorNumAxes" "dJointSetFixedParam" "dJointSetFixed"
;;  "dJointAddPistonForce" "dJointSetPistonParam" "dJointSetPistonAxisDelta"
;;  "dJointSetPistonAxis" "dJointSetPistonAnchorOffset" "dJointSetPistonAnchor"
;;  "dJointAddPUTorque" "dJointSetPUParam" "dJointSetPUAxisP" "dJointSetPUAxis3"
;;  "dJointSetPUAxis2" "dJointSetPUAxis1" "dJointSetPUAnchorOffset"
;;  "dJointSetPUAnchorDelta" "dJointSetPUAnchor" "dJointAddPRTorque"
;;  "dJointSetPRParam" "dJointSetPRAxis2" "dJointSetPRAxis1" "dJointSetPRAnchor"
;;  "dJointAddUniversalTorques" "dJointSetUniversalParam"
;;  "dJointSetUniversalAxis2Offset" "dJointSetUniversalAxis2"
;;  "dJointSetUniversalAxis1Offset" "dJointSetUniversalAxis1"
;;  "dJointSetUniversalAnchor" "dJointAddHinge2Torques" "dJointSetHinge2Param"
;;  "dJointSetHinge2Axis2" "dJointSetHinge2Axis1" "dJointSetHinge2Anchor"
;;  "dJointAddSliderForce" "dJointSetSliderParam" "dJointSetSliderAxisDelta"
;;  "dJointSetSliderAxis" "dJointAddHingeTorque" "dJointSetHingeParam"
;;  "dJointSetHingeAxisOffset" "dJointSetHingeAxis" "dJointSetHingeAnchorDelta"
;;  "dJointSetHingeAnchor" "dJointSetBallParam" "dJointSetBallAnchor2"
;;  "dJointSetBallAnchor" "dJointGetFeedback" "dJointSetFeedback" "dJointGetBody"
;;  "dJointGetData" "dJointSetData" "dJointIsEnabled" "dJointDisable"
;;  "dJointEnable" "dJointGetNumBodies" "dJointDestroy" "dJointCreateTransmission"
;;  "dJointCreateDHinge" "dJointCreateDBall" "dJointCreatePlane2D"
;;  "dJointCreateLMotor" "dJointCreateAMotor" "dJointCreateNull"
;;  "dJointCreateFixed" "dJointCreatePiston" "dJointCreatePU" "dJointCreatePR"
;;  "dJointCreateUniversal" "dJointCreateHinge2" "dJointCreateSlider"
;;  "dJointCreateHinge" "dJointCreateBall" "dBodySetGyroscopicMode"
;;  "dBodyGetGyroscopicMode" "dBodyGetMaxAngularSpeed"
;;  "dBodySetAngularDampingThreshold" "dBodyGetAngularDampingThreshold"
;;  "dBodySetLinearDampingThreshold" "dBodyGetLinearDampingThreshold"
;;  "dBodySetDampingDefaults" "dBodyGetGravityMode" "dBodySetGravityMode"
;;  "dBodyGetJoint" "dBodyGetNumJoints" "dBodyGetFiniteRotationAxis"
;;  "dBodyGetFiniteRotationMode" "dBodySetFiniteRotationAxis"
;;  "dBodySetFiniteRotationMode" "dBodyGetPosRelPoint" "dBodyGetPointVel"
;;  "dBodyGetRelPointVel" "dBodyGetRelPointPos" "dBodyCopyQuaternion"
;;  "dBodyCopyRotation" "dBodyCopyPosition" "dBodyGetData" "dBodySetData"
;;  "dWorldSetMaxAngularSpeed" "dWorldGetMaxAngularSpeed"
;;  "dWorldGetAngularDamping" "dWorldGetLinearDamping" "dWorldSetAutoDisableTime"
;;  "dWorldGetAutoDisableTime" "dWorldSetAutoDisableSteps"
;;  "dWorldGetAutoDisableSteps" "dWorldSetAutoDisableAverageSamplesCount"
;;  "dWorldGetAutoDisableAverageSamplesCount"
;;  "dWorldSetAutoDisableAngularAverageThreshold"
;;  "dWorldGetAutoDisableAngularAverageThreshold"
;;  "dWorldSetAutoDisableLinearAverageThreshold"
;;  "dWorldGetAutoDisableLinearAverageThreshold"
;;  "dWorldSetAutoDisableAngularThreshold" "dWorldGetAutoDisableAngularThreshold"
;;  "dWorldSetAutoDisableLinearThreshold" "dWorldGetAutoDisableLinearThreshold"
;;  "dWorldGetContactSurfaceLayer" "dWorldSetContactSurfaceLayer"
;;  "dWorldGetContactMaxCorrectingVel" "dWorldSetContactMaxCorrectingVel"
;;  "dWorldGetQuickStepW" "dWorldSetQuickStepW" "dWorldGetQuickStepNumIterations"
;;  "dWorldSetQuickStepNumIterations" "dWorldImpulseToForce"
;;  "dWorldSetStepThreadingImplementation" "dWorldSetStepMemoryManager"
;;  "dWorldSetStepMemoryReservationPolicy" "dWorldCleanupWorkingMemory"
;;  "dWorldUseSharedWorkingMemory" "dWorldGetStepIslandsProcessingMaxThreadCount"
;;  "dWorldSetStepIslandsProcessingMaxThreadCount" "dWorldGetCFM" "dWorldGetERP"
;;  "dMassSetCappedCylinderTotal" "dMassSetCappedCylinder" "dMassAdd"
;;  "dMassRotate" "dMassTranslate" "dMassAdjust" "dMassSetTrimeshTotal"
;;  "dMassSetTrimesh" "dMassSetParameters" "dMassCheck" "dFree" "dRealloc"
;;  "dAlloc" "dGetFreeHandler" "dGetReallocHandler" "dGetAllocHandler"
;;  "dSetFreeHandler" "dSetReallocHandler" "dSetAllocHandler" "dOdeMessage"
;;  "dOdeDebug" "dOdeError" "dGetMessageHandler" "dGetDebugHandler"
;;  "dGetErrorHandler" "dSetMessageHandler" "dSetDebugHandler" "dSetErrorHandler"
;;  "dCleanupODEAllDataForThread" "dAllocateODEDataForThread"
;;  "dCheckConfiguration" "dGeomGetBodyNext" "dGeomMoved" "dOdeMessage"
;;  "dOdeDebug" "dOdeError")
;; (setf our-funcs '("dGetConfiguration"
;;                   "dInitODE"
;;                   "dInitODE2"
;;                   "dCloseODE"
;;                   "dBodyCreate"
;;                   "dBodyGetWorld"
;;                   "dBodyDestroy"
;;                   "dBodyGetPosition"
;;                   "dBodyGetRotation"
;;                   "dBodySetQuaternion"
;;                   "dBodyGetQuaternion"
;;                   "dBodyGetMass"
;;                   "dBodySetMass"
;;                   "dBodySetPosition"
;;                   "dBodySetLinearVel"
;;                   "dBodySetAngularVel"
;;                   "dBodyGetLinearVel"
;;                   "dBodyGetAngularVel"
;;                   "dBodySetMaxAngularSpeed"
;;                   "dBodySetRotation"
;;                   "dBodyEnable"
;;                   "dBodyDisable"
;;                   "dBodyIsEnabled"
;;                   "dBodyGetFirstGeom"
;;                   "dBodyGetNextGeom"
;;                   "dGeomSetCategoryBits"
;;                   "dGeomSetCollideBits"
;;                   "dGeomGetCollideBits"
;;                   "dGeomGetCategoryBits"
;;                   "dBodySetAutoDisableFlag"
;;                   "dBodyGetAutoDisableFlag"
;;                   "dBodyAddForce"
;;                   "dBodyAddTorque"
;;                   "dBodyAddRelForce"
;;                   "dBodyAddRelTorque"
;;                   "dBodyAddForceAtPos"
;;                   "dBodyAddForceAtRelPos"
;;                   "dBodyAddRelForceAtPos"
;;                   "dBodyAddRelForceAtRelPos"
;;                   "dBodyGetForce"
;;                   "dBodyGetTorque"
;;                   "dBodySetForce"
;;                   "dBodySetTorque"
;;                   "dBodySetDynamic"
;;                   "dBodySetKinematic"
;;                   "dBodyIsKinematic"
;;                   "dBodyVectorToWorld"
;;                   "dBodyVectorFromWorld"
;;                   "dBodySetAutoDisableLinearThreshold"
;;                   "dBodyGetAutoDisableLinearThreshold"
;;                   "dBodySetAutoDisableAngularThreshold"
;;                   "dBodyGetAutoDisableAngularThreshold"
;;                   "dBodySetAutoDisableSteps"
;;                   "dBodyGetAutoDisableSteps"
;;                   "dBodySetAutoDisableTime"
;;                   "dBodyGetAutoDisableTime"
;;                   "dBodySetAutoDisableAverageSamplesCount"
;;                   "dBodyGetAutoDisableAverageSamplesCount"
;;                   "dBodySetAutoDisableDefaults"
;;                   "dBodySetMovedCallback"
;;                   "dBodyGetLinearDamping"
;;                   "dBodyGetAngularDamping"
;;                   "dBodySetLinearDamping"
;;                   "dBodySetDamping"
;;                   "dBodySetAngularDamping"
;;                   "dGeomSetPosition"
;;                   "dGeomSetRotation"
;;                   "dGeomSetQuaternion"
;;                   "dGeomGetPosition"
;;                   "dGeomGetRotation"
;;                   "dGeomGetQuaternion"
;;                   "dGeomSetOffsetPosition"
;;                   "dGeomSetOffsetRotation"
;;                   "dGeomSetOffsetQuaternion"
;;                   "dGeomClearOffset"
;;                   "dCreateBox"
;;                   "dCreatePlane"
;;                   "dGeomDestroy"
;;                   "dGeomSetBody"
;;                   "dHashSpaceCreate"
;;                   "dQuadTreeSpaceCreate"
;;                   "dJointGroupEmpty"
;;                   "dJointAttach"
;;                   "dJointGroupCreate"
;;                   "dJointGroupDestroy"
;;                   "dMassSetBox"
;;                   "dMassSetBoxTotal"
;;                   "dMassSetZero"
;;                   "dRFromAxisAndAngle"
;;                   "dSpaceCollide"
;;                   "dWorldCreate"
;;                   "dWorldDestroy"
;;                   "dWorldSetGravity"
;;                   "dWorldGetGravity"
;;                   "dWorldStep"
;;                   "dCreateSphere"
;;                   "dGeomSphereSetRadius"
;;                   "dGeomSphereGetRadius"
;;                   "dGeomSpherePointDepth"
;;                   "dMassSetSphere"
;;                   "dMassSetSphereTotal"
;;                   "dCreateCylinder"
;;                   "dMassSetCylinder"
;;                   "dMassSetCylinderTotal"
;;                   "dCreateCapsule"
;;                   "dMassSetCapsule"
;;                   "dMassSetCapsuleTotal"
;;                   "dCreateRay"
;;                   "dGeomRaySetLength"
;;                   "dGeomRayGetLength"
;;                   "dGeomRaySet"
;;                   "dGeomRayGet"
;;                   "dGeomRaySetParams"
;;                   "dGeomRayGetParams"
;;                   "dGeomRaySetClosestHit"
;;                   "dGeomRayGetClosestHit"
;;                   "dCreateConvex"
;;                   "dGeomSetConvex"
;;                   "dSpaceDestroy"
;;                   "dWorldSetCFM"
;;                   "dWorldSetERP"
;;                   "dWorldQuickStep"
;;                   "dGeomGetBody"
;;                   "dCollide"
;;                   "dJointCreateContact"
;;                   "dJointGetType"
;;                   "dWorldSetLinearDamping"
;;                   "dWorldSetAngularDamping"
;;                   "dWorldSetDamping"
;;                   "dWorldGetLinearDampingThreshold"
;;                   "dWorldGetAngularDampingThreshold"
;;                   "dWorldSetLinearDampingThreshold"
;;                   "dWorldSetAngularDampingThreshold"
;;                   "dWorldSetAutoDisableFlag"
;;                   "dWorldGetAutoDisableFlag"))