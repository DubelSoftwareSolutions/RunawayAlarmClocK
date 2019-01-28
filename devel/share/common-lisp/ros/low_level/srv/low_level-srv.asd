
(cl:in-package :asdf)

(defsystem "low_level-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TimeService" :depends-on ("_package_TimeService"))
    (:file "_package_TimeService" :depends-on ("_package"))
  ))