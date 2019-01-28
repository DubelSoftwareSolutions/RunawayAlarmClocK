; Auto-generated. Do not edit!


(cl:in-package low_level-srv)


;//! \htmlinclude TimeService-request.msg.html

(cl:defclass <TimeService-request> (roslisp-msg-protocol:ros-message)
  ((Request
    :reader Request
    :initarg :Request
    :type cl:string
    :initform ""))
)

(cl:defclass TimeService-request (<TimeService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name low_level-srv:<TimeService-request> is deprecated: use low_level-srv:TimeService-request instead.")))

(cl:ensure-generic-function 'Request-val :lambda-list '(m))
(cl:defmethod Request-val ((m <TimeService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-srv:Request-val is deprecated.  Use low_level-srv:Request instead.")
  (Request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeService-request>) ostream)
  "Serializes a message object of type '<TimeService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Request))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeService-request>) istream)
  "Deserializes a message object of type '<TimeService-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Request) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Request) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeService-request>)))
  "Returns string type for a service object of type '<TimeService-request>"
  "low_level/TimeServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeService-request)))
  "Returns string type for a service object of type 'TimeService-request"
  "low_level/TimeServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeService-request>)))
  "Returns md5sum for a message object of type '<TimeService-request>"
  "87ba0ebb6660fa9f2267d4d35e953e92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeService-request)))
  "Returns md5sum for a message object of type 'TimeService-request"
  "87ba0ebb6660fa9f2267d4d35e953e92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeService-request>)))
  "Returns full string definition for message of type '<TimeService-request>"
  (cl:format cl:nil "string Request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeService-request)))
  "Returns full string definition for message of type 'TimeService-request"
  (cl:format cl:nil "string Request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeService-request
    (cl:cons ':Request (Request msg))
))
;//! \htmlinclude TimeService-response.msg.html

(cl:defclass <TimeService-response> (roslisp-msg-protocol:ros-message)
  ((TimeNow
    :reader TimeNow
    :initarg :TimeNow
    :type cl:string
    :initform "")
   (DateNow
    :reader DateNow
    :initarg :DateNow
    :type cl:string
    :initform "")
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:real
    :initform 0))
)

(cl:defclass TimeService-response (<TimeService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name low_level-srv:<TimeService-response> is deprecated: use low_level-srv:TimeService-response instead.")))

(cl:ensure-generic-function 'TimeNow-val :lambda-list '(m))
(cl:defmethod TimeNow-val ((m <TimeService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-srv:TimeNow-val is deprecated.  Use low_level-srv:TimeNow instead.")
  (TimeNow m))

(cl:ensure-generic-function 'DateNow-val :lambda-list '(m))
(cl:defmethod DateNow-val ((m <TimeService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-srv:DateNow-val is deprecated.  Use low_level-srv:DateNow instead.")
  (DateNow m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <TimeService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-srv:timestamp-val is deprecated.  Use low_level-srv:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeService-response>) ostream)
  "Serializes a message object of type '<TimeService-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'TimeNow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'TimeNow))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'DateNow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'DateNow))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timestamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timestamp) (cl:floor (cl:slot-value msg 'timestamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeService-response>) istream)
  "Deserializes a message object of type '<TimeService-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'TimeNow) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'TimeNow) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'DateNow) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'DateNow) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeService-response>)))
  "Returns string type for a service object of type '<TimeService-response>"
  "low_level/TimeServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeService-response)))
  "Returns string type for a service object of type 'TimeService-response"
  "low_level/TimeServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeService-response>)))
  "Returns md5sum for a message object of type '<TimeService-response>"
  "87ba0ebb6660fa9f2267d4d35e953e92")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeService-response)))
  "Returns md5sum for a message object of type 'TimeService-response"
  "87ba0ebb6660fa9f2267d4d35e953e92")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeService-response>)))
  "Returns full string definition for message of type '<TimeService-response>"
  (cl:format cl:nil "string TimeNow~%string DateNow~%duration timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeService-response)))
  "Returns full string definition for message of type 'TimeService-response"
  (cl:format cl:nil "string TimeNow~%string DateNow~%duration timestamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeService-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'TimeNow))
     4 (cl:length (cl:slot-value msg 'DateNow))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeService-response
    (cl:cons ':TimeNow (TimeNow msg))
    (cl:cons ':DateNow (DateNow msg))
    (cl:cons ':timestamp (timestamp msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TimeService)))
  'TimeService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TimeService)))
  'TimeService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeService)))
  "Returns string type for a service object of type '<TimeService>"
  "low_level/TimeService")