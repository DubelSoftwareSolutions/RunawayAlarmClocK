; Auto-generated. Do not edit!


(cl:in-package low_level-msg)


;//! \htmlinclude LCD_msg.msg.html

(cl:defclass <LCD_msg> (roslisp-msg-protocol:ros-message)
  ((Text
    :reader Text
    :initarg :Text
    :type cl:string
    :initform "")
   (LineNumber
    :reader LineNumber
    :initarg :LineNumber
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LCD_msg (<LCD_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LCD_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LCD_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name low_level-msg:<LCD_msg> is deprecated: use low_level-msg:LCD_msg instead.")))

(cl:ensure-generic-function 'Text-val :lambda-list '(m))
(cl:defmethod Text-val ((m <LCD_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-msg:Text-val is deprecated.  Use low_level-msg:Text instead.")
  (Text m))

(cl:ensure-generic-function 'LineNumber-val :lambda-list '(m))
(cl:defmethod LineNumber-val ((m <LCD_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader low_level-msg:LineNumber-val is deprecated.  Use low_level-msg:LineNumber instead.")
  (LineNumber m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LCD_msg>) ostream)
  "Serializes a message object of type '<LCD_msg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Text))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LineNumber)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LCD_msg>) istream)
  "Deserializes a message object of type '<LCD_msg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LineNumber)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LCD_msg>)))
  "Returns string type for a message object of type '<LCD_msg>"
  "low_level/LCD_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LCD_msg)))
  "Returns string type for a message object of type 'LCD_msg"
  "low_level/LCD_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LCD_msg>)))
  "Returns md5sum for a message object of type '<LCD_msg>"
  "4a002dcffdbe1ff12e490f148af7eb9b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LCD_msg)))
  "Returns md5sum for a message object of type 'LCD_msg"
  "4a002dcffdbe1ff12e490f148af7eb9b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LCD_msg>)))
  "Returns full string definition for message of type '<LCD_msg>"
  (cl:format cl:nil "string Text~%uint8 LineNumber~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LCD_msg)))
  "Returns full string definition for message of type 'LCD_msg"
  (cl:format cl:nil "string Text~%uint8 LineNumber~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LCD_msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'Text))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LCD_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'LCD_msg
    (cl:cons ':Text (Text msg))
    (cl:cons ':LineNumber (LineNumber msg))
))
