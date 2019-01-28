; Auto-generated. Do not edit!


(cl:in-package low_level-msg)


;//! \htmlinclude Motor_msg.msg.html

(cl:defclass <Motor_msg> (roslisp-msg-protocol:ros-message)
  ((Command
    :reader Command
    :initarg :Command
    :type cl:string
    :initform "")
   (Velocity
    :reader Velocity
    :initarg :Velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass Motor_msg (<Motor_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Motor_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Motor_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name low_level-msg:<Motor_msg> is deprecated: use low_level-msg:Motor_msg instead.")))

(cl:ensure-generic-function 'Command-val :lambda-list '(m))
(cl:defmethod Command-val ((m <Motor_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-msg:Command-val is deprecated.  Use low_level-msg:Command instead.")
  (Command m))

(cl:ensure-generic-function 'Velocity-val :lambda-list '(m))
(cl:defmethod Velocity-val ((m <Motor_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-msg:Velocity-val is deprecated.  Use low_level-msg:Velocity instead.")
  (Velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Motor_msg>) ostream)
  "Serializes a message object of type '<Motor_msg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Command))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Motor_msg>) istream)
  "Deserializes a message object of type '<Motor_msg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Velocity) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Motor_msg>)))
  "Returns string type for a message object of type '<Motor_msg>"
  "low_level/Motor_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Motor_msg)))
  "Returns string type for a message object of type 'Motor_msg"
  "low_level/Motor_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Motor_msg>)))
  "Returns md5sum for a message object of type '<Motor_msg>"
  "7c014d1091a7b7744802d2d0fda80f11")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Motor_msg)))
  "Returns md5sum for a message object of type 'Motor_msg"
  "7c014d1091a7b7744802d2d0fda80f11")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Motor_msg>)))
  "Returns full string definition for message of type '<Motor_msg>"
  (cl:format cl:nil "string Command~%float64 Velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Motor_msg)))
  "Returns full string definition for message of type 'Motor_msg"
  (cl:format cl:nil "string Command~%float64 Velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Motor_msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Command))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Motor_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'Motor_msg
    (cl:cons ':Command (Command msg))
    (cl:cons ':Velocity (Velocity msg))
))
