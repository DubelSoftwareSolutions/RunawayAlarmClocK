; Auto-generated. Do not edit!


(cl:in-package low_level-msg)


;//! \htmlinclude GPIO_msg.msg.html

(cl:defclass <GPIO_msg> (roslisp-msg-protocol:ros-message)
  ((Device
    :reader Device
    :initarg :Device
    :type cl:string
    :initform "")
   (Command
    :reader Command
    :initarg :Command
    :type cl:string
    :initform "")
   (GPIO_on
    :reader GPIO_on
    :initarg :GPIO_on
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GPIO_msg (<GPIO_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPIO_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPIO_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name low_level-msg:<GPIO_msg> is deprecated: use low_level-msg:GPIO_msg instead.")))

(cl:ensure-generic-function 'Device-val :lambda-list '(m))
(cl:defmethod Device-val ((m <GPIO_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-msg:Device-val is deprecated.  Use low_level-msg:Device instead.")
  (Device m))

(cl:ensure-generic-function 'Command-val :lambda-list '(m))
(cl:defmethod Command-val ((m <GPIO_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-msg:Command-val is deprecated.  Use low_level-msg:Command instead.")
  (Command m))

(cl:ensure-generic-function 'GPIO_on-val :lambda-list '(m))
(cl:defmethod GPIO_on-val ((m <GPIO_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-msg:GPIO_on-val is deprecated.  Use low_level-msg:GPIO_on instead.")
  (GPIO_on m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPIO_msg>) ostream)
  "Serializes a message object of type '<GPIO_msg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Device))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Device))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Command))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'GPIO_on) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPIO_msg>) istream)
  "Deserializes a message object of type '<GPIO_msg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Device) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Device) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'GPIO_on) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPIO_msg>)))
  "Returns string type for a message object of type '<GPIO_msg>"
  "low_level/GPIO_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPIO_msg)))
  "Returns string type for a message object of type 'GPIO_msg"
  "low_level/GPIO_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPIO_msg>)))
  "Returns md5sum for a message object of type '<GPIO_msg>"
  "d85d347562b5b0f5f81b70b7e3f78a6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPIO_msg)))
  "Returns md5sum for a message object of type 'GPIO_msg"
  "d85d347562b5b0f5f81b70b7e3f78a6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPIO_msg>)))
  "Returns full string definition for message of type '<GPIO_msg>"
  (cl:format cl:nil "string Device~%string Command~%bool GPIO_on~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPIO_msg)))
  "Returns full string definition for message of type 'GPIO_msg"
  (cl:format cl:nil "string Device~%string Command~%bool GPIO_on~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPIO_msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Device))
     4 (cl:length (cl:slot-value msg 'Command))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPIO_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'GPIO_msg
    (cl:cons ':Device (Device msg))
    (cl:cons ':Command (Command msg))
    (cl:cons ':GPIO_on (GPIO_on msg))
))
