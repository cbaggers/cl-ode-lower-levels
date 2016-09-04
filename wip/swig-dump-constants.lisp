(cl:defconstant #.(swig-lispify-noprefix "dInfinity" 'constant) (infinity :single))

(cl:defconstant #.(swig-lispify-noprefix "dSINGLE" 'constant) 1)

(cl:defconstant #.(swig-lispify-noprefix "dWORLDSTEP_THREADCOUNT_UNLIMITED" 'constant) 0)

(cl:defconstant #.(swig-lispify-noprefix "dWORLDSTEP_RESERVEFACTOR_DEFAULT" 'constant) 1.2d0)

(cl:defconstant #.(swig-lispify-noprefix "dWORLDSTEP_RESERVESIZE_DEFAULT" 'constant) 65536)

(cl:defconstant #.(swig-lispify-noprefix "dSAP_AXES_XYZ" 'constant) (cl:logior 0 (cl:ash 1 2) (cl:ash 2 4)))

(cl:defconstant #.(swig-lispify-noprefix "dSAP_AXES_XZY" 'constant) (cl:logior 0 (cl:ash 2 2) (cl:ash 1 4)))

(cl:defconstant #.(swig-lispify-noprefix "dSAP_AXES_YXZ" 'constant) (cl:logior 1 (cl:ash 0 2) (cl:ash 2 4)))

(cl:defconstant #.(swig-lispify-noprefix "dSAP_AXES_YZX" 'constant) (cl:logior 1 (cl:ash 2 2) (cl:ash 0 4)))

(cl:defconstant #.(swig-lispify-noprefix "dSAP_AXES_ZXY" 'constant) (cl:logior 2 (cl:ash 0 2) (cl:ash 1 4)))

(cl:defconstant #.(swig-lispify-noprefix "dSAP_AXES_ZYX" 'constant) (cl:logior 2 (cl:ash 1 2) (cl:ash 0 4)))

(cl:defconstant #.(swig-lispify-noprefix "CONTACTS_UNIMPORTANT" 'constant) #x80000000)
