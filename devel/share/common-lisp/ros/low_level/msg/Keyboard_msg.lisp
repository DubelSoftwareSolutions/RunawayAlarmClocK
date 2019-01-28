; Auto-generated. Do not edit!


(cl:in-package low_level-msg)


;//! \htmlinclude Keyboard_msg.msg.html

(cl:defclass <Keyboard_msg> (roslisp-msg-protocol:ros-message)
  ((Command
    :reader Command
    :initarg :Command
    :type cl:string
    :initform ""))
)

(cl:defclass Keyboard_msg (<Keyboard_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Keyboard_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Keyboard_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name low_level-msg:<Keyboard_msg> is deprecated: use low_level-msg:Keyboard_msg instead.")))

(cl:ensure-generic-function 'Command-val :lambda-list '(m))
(cl:defmethod Command-val ((m <Keyboard_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-msg:Command-val is deprecated.  Use low_level-msg:Command instead.")
  (Command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Keyboard_msg>) ostream)
  "Serializes a message object of type '<Keyboard_msg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Keyboard_msg>) istream)
  "Deserializes a message object of type '<Keyboard_msg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Keyboard_msg>)))
  "Returns string type for a message object of type '<Keyboard_msg>"
  "low_level/Keyboard_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Keyboard_msg)))
  "Returns string type for a message object of type 'Keyboard_msg"
  "low_level/Keyboard_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Keyboard_msg>)))
  "Returns md5sum for a message object of type '<Keyboard_msg>"
  "e3e9d1976cb2a74a2f5cb06ef8ad543d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Keyboard_msg)))
  "Returns md5sum for a message object of type 'Keyboard_msg"
  "e3e9d1976cb2a74a2f5cb06ef8ad543d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Keyboard_msg>)))
  "Returns full string definition for message of type '<Keyboard_msg>"
  (cl:format cl:nil "string Command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Keyboard_msg)))
  "Returns full string definition for message of type 'Keyboard_msg"
  (cl:format cl:nil "string Command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Keyboard_msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Keyboard_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'Keyboard_msg
    (cl:cons ':Command (Command msg))
))
