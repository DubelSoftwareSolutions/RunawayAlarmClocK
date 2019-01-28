
(cl:in-package :asdf)

(defsystem "high_level-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "EventInfo" :depends-on ("_package_EventInfo"))
    (:file "_package_EventInfo" :depends-on ("_package"))
  ))