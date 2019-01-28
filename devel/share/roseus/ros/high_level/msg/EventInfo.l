;; Auto-generated. Do not edit!


(when (boundp 'high_level::EventInfo)
  (if (not (find-package "HIGH_LEVEL"))
    (make-package "HIGH_LEVEL"))
  (shadow 'EventInfo (find-package "HIGH_LEVEL")))
(unless (find-package "HIGH_LEVEL::EVENTINFO")
  (make-package "HIGH_LEVEL::EVENTINFO"))

(in-package "ROS")
;;//! \htmlinclude EventInfo.msg.html


(defclass high_level::EventInfo
  :super ros::object
  :slots (_Name ))

(defmethod high_level::EventInfo
  (:init
   (&key
    ((:Name __Name) "")
    )
   (send-super :init)
   (setq _Name (string __Name))
   self)
  (:Name
   (&optional __Name)
   (if __Name (setq _Name __Name)) _Name)
  (:serialization-length
   ()
   (+
    ;; string _Name
    4 (length _Name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Name
       (write-long (length _Name) s) (princ _Name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get high_level::EventInfo :md5sum-) "cdf8d6bab384a2e7902ca6add60245eb")
(setf (get high_level::EventInfo :datatype-) "high_level/EventInfo")
(setf (get high_level::EventInfo :definition-)
      "string Name
")



(provide :high_level/EventInfo "cdf8d6bab384a2e7902ca6add60245eb")


