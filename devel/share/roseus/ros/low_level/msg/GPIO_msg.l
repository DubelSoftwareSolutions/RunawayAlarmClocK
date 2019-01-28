;; Auto-generated. Do not edit!


(when (boundp 'low_level::GPIO_msg)
  (if (not (find-package "LOW_LEVEL"))
    (make-package "LOW_LEVEL"))
  (shadow 'GPIO_msg (find-package "LOW_LEVEL")))
(unless (find-package "LOW_LEVEL::GPIO_MSG")
  (make-package "LOW_LEVEL::GPIO_MSG"))

(in-package "ROS")
;;//! \htmlinclude GPIO_msg.msg.html


(defclass low_level::GPIO_msg
  :super ros::object
  :slots (_Device _Command _GPIO_on ))

(defmethod low_level::GPIO_msg
  (:init
   (&key
    ((:Device __Device) "")
    ((:Command __Command) "")
    ((:GPIO_on __GPIO_on) nil)
    )
   (send-super :init)
   (setq _Device (string __Device))
   (setq _Command (string __Command))
   (setq _GPIO_on __GPIO_on)
   self)
  (:Device
   (&optional __Device)
   (if __Device (setq _Device __Device)) _Device)
  (:Command
   (&optional __Command)
   (if __Command (setq _Command __Command)) _Command)
  (:GPIO_on
   (&optional __GPIO_on)
   (if __GPIO_on (setq _GPIO_on __GPIO_on)) _GPIO_on)
  (:serialization-length
   ()
   (+
    ;; string _Device
    4 (length _Device)
    ;; string _Command
    4 (length _Command)
    ;; bool _GPIO_on
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Device
       (write-long (length _Device) s) (princ _Device s)
     ;; string _Command
       (write-long (length _Command) s) (princ _Command s)
     ;; bool _GPIO_on
       (if _GPIO_on (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Device
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Device (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _Command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _GPIO_on
     (setq _GPIO_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get low_level::GPIO_msg :md5sum-) "d85d347562b5b0f5f81b70b7e3f78a6c")
(setf (get low_level::GPIO_msg :datatype-) "low_level/GPIO_msg")
(setf (get low_level::GPIO_msg :definition-)
      "string Device
string Command
bool GPIO_on

")



(provide :low_level/GPIO_msg "d85d347562b5b0f5f81b70b7e3f78a6c")


