;; Auto-generated. Do not edit!


(when (boundp 'low_level::LCD_msg)
  (if (not (find-package "LOW_LEVEL"))
    (make-package "LOW_LEVEL"))
  (shadow 'LCD_msg (find-package "LOW_LEVEL")))
(unless (find-package "LOW_LEVEL::LCD_MSG")
  (make-package "LOW_LEVEL::LCD_MSG"))

(in-package "ROS")
;;//! \htmlinclude LCD_msg.msg.html


(defclass low_level::LCD_msg
  :super ros::object
  :slots (_Text _LineNumber ))

(defmethod low_level::LCD_msg
  (:init
   (&key
    ((:Text __Text) "")
    ((:LineNumber __LineNumber) 0)
    )
   (send-super :init)
   (setq _Text (string __Text))
   (setq _LineNumber (round __LineNumber))
   self)
  (:Text
   (&optional __Text)
   (if __Text (setq _Text __Text)) _Text)
  (:LineNumber
   (&optional __LineNumber)
   (if __LineNumber (setq _LineNumber __LineNumber)) _LineNumber)
  (:serialization-length
   ()
   (+
    ;; string _Text
    4 (length _Text)
    ;; uint8 _LineNumber
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Text
       (write-long (length _Text) s) (princ _Text s)
     ;; uint8 _LineNumber
       (write-byte _LineNumber s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _LineNumber
     (setq _LineNumber (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get low_level::LCD_msg :md5sum-) "4a002dcffdbe1ff12e490f148af7eb9b")
(setf (get low_level::LCD_msg :datatype-) "low_level/LCD_msg")
(setf (get low_level::LCD_msg :definition-)
      "string Text
uint8 LineNumber
")



(provide :low_level/LCD_msg "4a002dcffdbe1ff12e490f148af7eb9b")


