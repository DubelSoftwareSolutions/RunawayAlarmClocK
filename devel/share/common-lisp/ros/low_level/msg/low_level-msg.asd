
(cl:in-package :asdf)

(defsystem "low_level-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GPIO_msg" :depends-on ("_package_GPIO_msg"))
    (:file "_package_GPIO_msg" :depends-on ("_package"))
    (:file "I2C_msg" :depends-on ("_package_I2C_msg"))
    (:file "_package_I2C_msg" :depends-on ("_package"))
    (:file "Keyboard_msg" :depends-on ("_package_Keyboard_msg"))
    (:file "_package_Keyboard_msg" :depends-on ("_package"))
    (:file "LCD_msg" :depends-on ("_package_LCD_msg"))
    (:file "_package_LCD_msg" :depends-on ("_package"))
    (:file "Motor_msg" :depends-on ("_package_Motor_msg"))
    (:file "_package_Motor_msg" :depends-on ("_package"))
    (:file "PWM_msg" :depends-on ("_package_PWM_msg"))
    (:file "_package_PWM_msg" :depends-on ("_package"))
  ))