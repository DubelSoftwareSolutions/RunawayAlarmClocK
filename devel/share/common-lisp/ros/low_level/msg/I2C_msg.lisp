; Auto-generated. Do not edit!


(cl:in-package low_level-msg)


;//! \htmlinclude I2C_msg.msg.html

(cl:defclass <I2C_msg> (roslisp-msg-protocol:ros-message)
  ((SharpFrontLeft
    :reader SharpFrontLeft
    :initarg :SharpFrontLeft
    :type cl:fixnum
    :initform 0)
   (SharpFrontRight
    :reader SharpFrontRight
    :initarg :SharpFrontRight
    :type cl:fixnum
    :initform 0)
   (SharpTop
    :reader SharpTop
    :initarg :SharpTop
    :type cl:fixnum
    :initform 0)
   (KtirBottom
    :reader KtirBottom
    :initarg :KtirBottom
    :type cl:fixnum
    :initform 0))
)

(cl:defclass I2C_msg (<I2C_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <I2C_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'I2C_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name low_level-msg:<I2C_msg> is deprecated: use low_level-msg:I2C_msg instead.")))

(cl:ensure-generic-function 'SharpFrontLeft-val :lambda-list '(m))
(cl:defmethod SharpFrontLeft-val ((m <I2C_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-msg:SharpFrontLeft-val is deprecated.  Use low_level-msg:SharpFrontLeft instead.")
  (SharpFrontLeft m))

(cl:ensure-generic-function 'SharpFrontRight-val :lambda-list '(m))
(cl:defmethod SharpFrontRight-val ((m <I2C_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-msg:SharpFrontRight-val is deprecated.  Use low_level-msg:SharpFrontRight instead.")
  (SharpFrontRight m))

(cl:ensure-generic-function 'SharpTop-val :lambda-list '(m))
(cl:defmethod SharpTop-val ((m <I2C_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-msg:SharpTop-val is deprecated.  Use low_level-msg:SharpTop instead.")
  (SharpTop m))

(cl:ensure-generic-function 'KtirBottom-val :lambda-list '(m))
(cl:defmethod KtirBottom-val ((m <I2C_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-msg:KtirBottom-val is deprecated.  Use low_level-msg:KtirBottom instead.")
  (KtirBottom m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <I2C_msg>) ostream)
  "Serializes a message object of type '<I2C_msg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SharpFrontLeft)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SharpFrontLeft)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SharpFrontRight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SharpFrontRight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SharpTop)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SharpTop)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'KtirBottom)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'KtirBottom)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <I2C_msg>) istream)
  "Deserializes a message object of type '<I2C_msg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SharpFrontLeft)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SharpFrontLeft)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SharpFrontRight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SharpFrontRight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SharpTop)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'SharpTop)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'KtirBottom)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'KtirBottom)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<I2C_msg>)))
  "Returns string type for a message object of type '<I2C_msg>"
  "low_level/I2C_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'I2C_msg)))
  "Returns string type for a message object of type 'I2C_msg"
  "low_level/I2C_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<I2C_msg>)))
  "Returns md5sum for a message object of type '<I2C_msg>"
  "90409038824ffc2a00007388b5d017cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'I2C_msg)))
  "Returns md5sum for a message object of type 'I2C_msg"
  "90409038824ffc2a00007388b5d017cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<I2C_msg>)))
  "Returns full string definition for message of type '<I2C_msg>"
  (cl:format cl:nil "uint16 SharpFrontLeft~%uint16 SharpFrontRight~%uint16 SharpTop~%uint16 KtirBottom~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'I2C_msg)))
  "Returns full string definition for message of type 'I2C_msg"
  (cl:format cl:nil "uint16 SharpFrontLeft~%uint16 SharpFrontRight~%uint16 SharpTop~%uint16 KtirBottom~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <I2C_msg>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <I2C_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'I2C_msg
    (cl:cons ':SharpFrontLeft (SharpFrontLeft msg))
    (cl:cons ':SharpFrontRight (SharpFrontRight msg))
    (cl:cons ':SharpTop (SharpTop msg))
    (cl:cons ':KtirBottom (KtirBottom msg))
))
