;; Auto-generated. Do not edit!


(when (boundp 'low_level::Motor_msg)
  (if (not (find-package "LOW_LEVEL"))
    (make-package "LOW_LEVEL"))
  (shadow 'Motor_msg (find-package "LOW_LEVEL")))
(unless (find-package "LOW_LEVEL::MOTOR_MSG")
  (make-package "LOW_LEVEL::MOTOR_MSG"))

(in-package "ROS")
;;//! \htmlinclude Motor_msg.msg.html


(defclass low_level::Motor_msg
  :super ros::object
  :slots (_Command _Velocity ))

(defmethod low_level::Motor_msg
  (:init
   (&key
    ((:Command __Command) "")
    ((:Velocity __Velocity) 0.0)
    )
   (send-super :init)
   (setq _Command (string __Command))
   (setq _Velocity (float __Velocity))
   self)
  (:Command
   (&optional __Command)
   (if __Command (setq _Command __Command)) _Command)
  (:Velocity
   (&optional __Velocity)
   (if __Velocity (setq _Velocity __Velocity)) _Velocity)
  (:serialization-length
   ()
   (+
    ;; string _Command
    4 (length _Command)
    ;; float64 _Velocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Command
       (write-long (length _Command) s) (princ _Command s)
     ;; float64 _Velocity
       (sys::poke _Velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _Velocity
     (setq _Velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get low_level::Motor_msg :md5sum-) "7c014d1091a7b7744802d2d0fda80f11")
(setf (get low_level::Motor_msg :datatype-) "low_level/Motor_msg")
(setf (get low_level::Motor_msg :definition-)
      "string Command
float64 Velocity
")



(provide :low_level/Motor_msg "7c014d1091a7b7744802d2d0fda80f11")


