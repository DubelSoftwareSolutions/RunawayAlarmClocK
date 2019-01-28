; Auto-generated. Do not edit!


(cl:in-package high_level-msg)


;//! \htmlinclude EventInfo.msg.html

(cl:defclass <EventInfo> (roslisp-msg-protocol:ros-message)
  ((Name
    :reader Name
    :initarg :Name
    :type cl:string
    :initform ""))
)

(cl:defclass EventInfo (<EventInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EventInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EventInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name high_level-msg:<EventInfo> is deprecated: use high_level-msg:EventInfo instead.")))

(cl:ensure-generic-function 'Name-val :lambda-list '(m))
(cl:defmethod Name-val ((m <EventInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader high_level-msg:Name-val is deprecated.  Use high_level-msg:Name instead.")
  (Name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EventInfo>) ostream)
  "Serializes a message object of type '<EventInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EventInfo>) istream)
  "Deserializes a message object of type '<EventInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EventInfo>)))
  "Returns string type for a message object of type '<EventInfo>"
  "high_level/EventInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EventInfo)))
  "Returns string type for a message object of type 'EventInfo"
  "high_level/EventInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EventInfo>)))
  "Returns md5sum for a message object of type '<EventInfo>"
  "cdf8d6bab384a2e7902ca6add60245eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EventInfo)))
  "Returns md5sum for a message object of type 'EventInfo"
  "cdf8d6bab384a2e7902ca6add60245eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EventInfo>)))
  "Returns full string definition for message of type '<EventInfo>"
  (cl:format cl:nil "string Name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EventInfo)))
  "Returns full string definition for message of type 'EventInfo"
  (cl:format cl:nil "string Name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EventInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EventInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'EventInfo
    (cl:cons ':Name (Name msg))
))
