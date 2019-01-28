;; Auto-generated. Do not edit!


(when (boundp 'low_level::TimeService)
  (if (not (find-package "LOW_LEVEL"))
    (make-package "LOW_LEVEL"))
  (shadow 'TimeService (find-package "LOW_LEVEL")))
(unless (find-package "LOW_LEVEL::TIMESERVICE")
  (make-package "LOW_LEVEL::TIMESERVICE"))
(unless (find-package "LOW_LEVEL::TIMESERVICEREQUEST")
  (make-package "LOW_LEVEL::TIMESERVICEREQUEST"))
(unless (find-package "LOW_LEVEL::TIMESERVICERESPONSE")
  (make-package "LOW_LEVEL::TIMESERVICERESPONSE"))

(in-package "ROS")





(defclass low_level::TimeServiceRequest
  :super ros::object
  :slots (_Request ))

(defmethod low_level::TimeServiceRequest
  (:init
   (&key
    ((:Request __Request) "")
    )
   (send-super :init)
   (setq _Request (string __Request))
   self)
  (:Request
   (&optional __Request)
   (if __Request (setq _Request __Request)) _Request)
  (:serialization-length
   ()
   (+
    ;; string _Request
    4 (length _Request)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Request
       (write-long (length _Request) s) (princ _Request s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Request
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Request (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass low_level::TimeServiceResponse
  :super ros::object
  :slots (_TimeNow _DateNow _timestamp ))

(defmethod low_level::TimeServiceResponse
  (:init
   (&key
    ((:TimeNow __TimeNow) "")
    ((:DateNow __DateNow) "")
    ((:timestamp __timestamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _TimeNow (string __TimeNow))
   (setq _DateNow (string __DateNow))
   (setq _timestamp __timestamp)
   self)
  (:TimeNow
   (&optional __TimeNow)
   (if __TimeNow (setq _TimeNow __TimeNow)) _TimeNow)
  (:DateNow
   (&optional __DateNow)
   (if __DateNow (setq _DateNow __DateNow)) _DateNow)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; string _TimeNow
    4 (length _TimeNow)
    ;; string _DateNow
    4 (length _DateNow)
    ;; duration _timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _TimeNow
       (write-long (length _TimeNow) s) (princ _TimeNow s)
     ;; string _DateNow
       (write-long (length _DateNow) s) (princ _DateNow s)
     ;; duration _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _TimeNow
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _TimeNow (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _DateNow
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _DateNow (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; duration _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass low_level::TimeService
  :super ros::object
  :slots ())

(setf (get low_level::TimeService :md5sum-) "87ba0ebb6660fa9f2267d4d35e953e92")
(setf (get low_level::TimeService :datatype-) "low_level/TimeService")
(setf (get low_level::TimeService :request) low_level::TimeServiceRequest)
(setf (get low_level::TimeService :response) low_level::TimeServiceResponse)

(defmethod low_level::TimeServiceRequest
  (:response () (instance low_level::TimeServiceResponse :init)))

(setf (get low_level::TimeServiceRequest :md5sum-) "87ba0ebb6660fa9f2267d4d35e953e92")
(setf (get low_level::TimeServiceRequest :datatype-) "low_level/TimeServiceRequest")
(setf (get low_level::TimeServiceRequest :definition-)
      "string Request
---
string TimeNow
string DateNow
duration timestamp
")

(setf (get low_level::TimeServiceResponse :md5sum-) "87ba0ebb6660fa9f2267d4d35e953e92")
(setf (get low_level::TimeServiceResponse :datatype-) "low_level/TimeServiceResponse")
(setf (get low_level::TimeServiceResponse :definition-)
      "string Request
---
string TimeNow
string DateNow
duration timestamp
")



(provide :low_level/TimeService "87ba0ebb6660fa9f2267d4d35e953e92")


