;; Auto-generated. Do not edit!


(when (boundp 'low_level::Keyboard_msg)
  (if (not (find-package "LOW_LEVEL"))
    (make-package "LOW_LEVEL"))
  (shadow 'Keyboard_msg (find-package "LOW_LEVEL")))
(unless (find-package "LOW_LEVEL::KEYBOARD_MSG")
  (make-package "LOW_LEVEL::KEYBOARD_MSG"))

(in-package "ROS")
;;//! \htmlinclude Keyboard_msg.msg.html


(defclass low_level::Keyboard_msg
  :super ros::object
  :slots (_Command ))

(defmethod low_level::Keyboard_msg
  (:init
   (&key
    ((:Command __Command) "")
    )
   (send-super :init)
   (setq _Command (string __Command))
   self)
  (:Command
   (&optional __Command)
   (if __Command (setq _Command __Command)) _Command)
  (:serialization-length
   ()
   (+
    ;; string _Command
    4 (length _Command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Command
       (write-long (length _Command) s) (princ _Command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get low_level::Keyboard_msg :md5sum-) "e3e9d1976cb2a74a2f5cb06ef8ad543d")
(setf (get low_level::Keyboard_msg :datatype-) "low_level/Keyboard_msg")
(setf (get low_level::Keyboard_msg :definition-)
      "string Command

")



(provide :low_level/Keyboard_msg "e3e9d1976cb2a74a2f5cb06ef8ad543d")


