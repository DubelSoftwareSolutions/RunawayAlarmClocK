;; Auto-generated. Do not edit!


(when (boundp 'low_level::I2C_msg)
  (if (not (find-package "LOW_LEVEL"))
    (make-package "LOW_LEVEL"))
  (shadow 'I2C_msg (find-package "LOW_LEVEL")))
(unless (find-package "LOW_LEVEL::I2C_MSG")
  (make-package "LOW_LEVEL::I2C_MSG"))

(in-package "ROS")
;;//! \htmlinclude I2C_msg.msg.html


(defclass low_level::I2C_msg
  :super ros::object
  :slots (_SharpFrontLeft _SharpFrontRight _SharpTop _KtirBottom ))

(defmethod low_level::I2C_msg
  (:init
   (&key
    ((:SharpFrontLeft __SharpFrontLeft) 0)
    ((:SharpFrontRight __SharpFrontRight) 0)
    ((:SharpTop __SharpTop) 0)
    ((:KtirBottom __KtirBottom) 0)
    )
   (send-super :init)
   (setq _SharpFrontLeft (round __SharpFrontLeft))
   (setq _SharpFrontRight (round __SharpFrontRight))
   (setq _SharpTop (round __SharpTop))
   (setq _KtirBottom (round __KtirBottom))
   self)
  (:SharpFrontLeft
   (&optional __SharpFrontLeft)
   (if __SharpFrontLeft (setq _SharpFrontLeft __SharpFrontLeft)) _SharpFrontLeft)
  (:SharpFrontRight
   (&optional __SharpFrontRight)
   (if __SharpFrontRight (setq _SharpFrontRight __SharpFrontRight)) _SharpFrontRight)
  (:SharpTop
   (&optional __SharpTop)
   (if __SharpTop (setq _SharpTop __SharpTop)) _SharpTop)
  (:KtirBottom
   (&optional __KtirBottom)
   (if __KtirBottom (setq _KtirBottom __KtirBottom)) _KtirBottom)
  (:serialization-length
   ()
   (+
    ;; uint16 _SharpFrontLeft
    2
    ;; uint16 _SharpFrontRight
    2
    ;; uint16 _SharpTop
    2
    ;; uint16 _KtirBottom
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _SharpFrontLeft
       (write-word _SharpFrontLeft s)
     ;; uint16 _SharpFrontRight
       (write-word _SharpFrontRight s)
     ;; uint16 _SharpTop
       (write-word _SharpTop s)
     ;; uint16 _KtirBottom
       (write-word _KtirBottom s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _SharpFrontLeft
     (setq _SharpFrontLeft (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _SharpFrontRight
     (setq _SharpFrontRight (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _SharpTop
     (setq _SharpTop (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _KtirBottom
     (setq _KtirBottom (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get low_level::I2C_msg :md5sum-) "90409038824ffc2a00007388b5d017cb")
(setf (get low_level::I2C_msg :datatype-) "low_level/I2C_msg")
(setf (get low_level::I2C_msg :definition-)
      "uint16 SharpFrontLeft
uint16 SharpFrontRight
uint16 SharpTop
uint16 KtirBottom

")



(provide :low_level/I2C_msg "90409038824ffc2a00007388b5d017cb")


