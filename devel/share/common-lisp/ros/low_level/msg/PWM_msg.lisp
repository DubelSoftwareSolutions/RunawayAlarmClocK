; Auto-generated. Do not edit!


(cl:in-package low_level-msg)


;//! \htmlinclude PWM_msg.msg.html

(cl:defclass <PWM_msg> (roslisp-msg-protocol:ros-message)
  ((PWM_on
    :reader PWM_on
    :initarg :PWM_on
    :type cl:boolean
    :initform cl:nil)
   (DutyCycle
    :reader DutyCycle
    :initarg :DutyCycle
    :type cl:fixnum
    :initform 0)
   (Device
    :reader Device
    :initarg :Device
    :type cl:string
    :initform ""))
)

(cl:defclass PWM_msg (<PWM_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PWM_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PWM_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name low_level-msg:<PWM_msg> is deprecated: use low_level-msg:PWM_msg instead.")))

(cl:ensure-generic-function 'PWM_on-val :lambda-list '(m))
(cl:defmethod PWM_on-val ((m <PWM_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-msg:PWM_on-val is deprecated.  Use low_level-msg:PWM_on instead.")
  (PWM_on m))

(cl:ensure-generic-function 'DutyCycle-val :lambda-list '(m))
(cl:defmethod DutyCycle-val ((m <PWM_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-msg:DutyCycle-val is deprecated.  Use low_level-msg:DutyCycle instead.")
  (DutyCycle m))

(cl:ensure-generic-function 'Device-val :lambda-list '(m))
(cl:defmethod Device-val ((m <PWM_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-msg:Device-val is deprecated.  Use low_level-msg:Device instead.")
  (Device m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PWM_msg>) ostream)
  "Serializes a message object of type '<PWM_msg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'PWM_on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DutyCycle)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Device))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Device))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PWM_msg>) istream)
  "Deserializes a message object of type '<PWM_msg>"
    (cl:setf (cl:slot-value msg 'PWM_on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DutyCycle)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Device) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Device) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PWM_msg>)))
  "Returns string type for a message object of type '<PWM_msg>"
  "low_level/PWM_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PWM_msg)))
  "Returns string type for a message object of type 'PWM_msg"
  "low_level/PWM_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PWM_msg>)))
  "Returns md5sum for a message object of type '<PWM_msg>"
  "f2a52dcb9d1729882658bf99403797dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PWM_msg)))
  "Returns md5sum for a message object of type 'PWM_msg"
  "f2a52dcb9d1729882658bf99403797dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PWM_msg>)))
  "Returns full string definition for message of type '<PWM_msg>"
  (cl:format cl:nil "bool PWM_on~%uint8 DutyCycle~%string Device~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PWM_msg)))
  "Returns full string definition for message of type 'PWM_msg"
  (cl:format cl:nil "bool PWM_on~%uint8 DutyCycle~%string Device~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PWM_msg>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'Device))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PWM_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'PWM_msg
    (cl:cons ':PWM_on (PWM_on msg))
    (cl:cons ':DutyCycle (DutyCycle msg))
    (cl:cons ':Device (Device msg))
))
