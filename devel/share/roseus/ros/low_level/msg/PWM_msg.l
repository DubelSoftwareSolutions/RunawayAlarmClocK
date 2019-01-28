;; Auto-generated. Do not edit!


(when (boundp 'low_level::PWM_msg)
  (if (not (find-package "LOW_LEVEL"))
    (make-package "LOW_LEVEL"))
  (shadow 'PWM_msg (find-package "LOW_LEVEL")))
(unless (find-package "LOW_LEVEL::PWM_MSG")
  (make-package "LOW_LEVEL::PWM_MSG"))

(in-package "ROS")
;;//! \htmlinclude PWM_msg.msg.html


(defclass low_level::PWM_msg
  :super ros::object
  :slots (_PWM_on _DutyCycle _Device ))

(defmethod low_level::PWM_msg
  (:init
   (&key
    ((:PWM_on __PWM_on) nil)
    ((:DutyCycle __DutyCycle) 0)
    ((:Device __Device) "")
    )
   (send-super :init)
   (setq _PWM_on __PWM_on)
   (setq _DutyCycle (round __DutyCycle))
   (setq _Device (string __Device))
   self)
  (:PWM_on
   (&optional __PWM_on)
   (if __PWM_on (setq _PWM_on __PWM_on)) _PWM_on)
  (:DutyCycle
   (&optional __DutyCycle)
   (if __DutyCycle (setq _DutyCycle __DutyCycle)) _DutyCycle)
  (:Device
   (&optional __Device)
   (if __Device (setq _Device __Device)) _Device)
  (:serialization-length
   ()
   (+
    ;; bool _PWM_on
    1
    ;; uint8 _DutyCycle
    1
    ;; string _Device
    4 (length _Device)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _PWM_on
       (if _PWM_on (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _DutyCycle
       (write-byte _DutyCycle s)
     ;; string _Device
       (write-long (length _Device) s) (princ _Device s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _PWM_on
     (setq _PWM_on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _DutyCycle
     (setq _DutyCycle (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _Device
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Device (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get low_level::PWM_msg :md5sum-) "f2a52dcb9d1729882658bf99403797dd")
(setf (get low_level::PWM_msg :datatype-) "low_level/PWM_msg")
(setf (get low_level::PWM_msg :definition-)
      "bool PWM_on
uint8 DutyCycle
string Device
")



(provide :low_level/PWM_msg "f2a52dcb9d1729882658bf99403797dd")


