#!/usr/bin/python

import time
import RPi.GPIO as GPIO
import rospy
from low_level.msg import Motor_msg
from low_level.msg import PWM_msg
from low_level.msg import GPIO_msg

QueueSize = 100
PWM_Message = PWM_msg()
GPIO_Message = GPIO_msg()

def Motor_callback(data):
	if (data.Command == "forward"):
		PWM_Message.PWM_on = True
		PWM_Message.Device = "LeftWheel"
		PWM_Message.DutyCycle = 100
		GPIO_Message.GPIO_on = True
		GPIO_Message.Device = "LeftWheel"
		GPIO_Message.Command = "ClockWise"
		publisherPWM.publish(PWM_Message)
		publisherGPIO.publish(GPIO_Message)

		PWM_Message.PWM_on = True
		PWM_Message.Device = "RightWheel"
		PWM_Message.DutyCycle = 100
		publisherPWM.publish(PWM_Message)
		GPIO_Message.GPIO_on = True
		GPIO_Message.Device = "RightWheel"
		GPIO_Message.Command = "CounterClockWise"
		publisherPWM.publish(PWM_Message)
		publisherGPIO.publish(GPIO_Message)


	elif (data.Command == "backward"):
		PWM_Message.PWM_on = True
		PWM_Message.Device = "LeftWheel"
		PWM_Message.DutyCycle = 100
		GPIO_Message.GPIO_on = True
		GPIO_Message.Device = "LeftWheel"
		GPIO_Message.Command = "CounterClockWise"
		publisherPWM.publish(PWM_Message)
		publisherGPIO.publish(GPIO_Message)

		PWM_Message.PWM_on = True
		PWM_Message.Device = "RightWheel"
		PWM_Message.DutyCycle = 100
		GPIO_Message.GPIO_on = True
		GPIO_Message.Device = "RightWheel"
		GPIO_Message.Command = "ClockWise"
		publisherPWM.publish(PWM_Message)
		publisherGPIO.publish(GPIO_Message)


	elif (data.Command == "turn_left"):
		PWM_Message.PWM_on = True
		PWM_Message.Device = "LeftWheel"
		PWM_Message.DutyCycle = 100
		GPIO_Message.GPIO_on = True
		GPIO_Message.Device = "LeftWheel"
		GPIO_Message.Command = "CounterClockWise"
		publisherPWM.publish(PWM_Message)
		publisherGPIO.publish(GPIO_Message)

		PWM_Message.PWM_on = True
		PWM_Message.Device = "RightWheel"
		PWM_Message.DutyCycle = 100
		GPIO_Message.GPIO_on = True
		GPIO_Message.Device = "RightWheel"
		GPIO_Message.Command = "CounterClockWise"
		publisherPWM.publish(PWM_Message)
		publisherGPIO.publish(GPIO_Message)


	elif (data.Command == "turn_right"):
		PWM_Message.PWM_on = True
		PWM_Message.Device = "LeftWheel"
		PWM_Message.DutyCycle = 100
		GPIO_Message.GPIO_on = True
		GPIO_Message.Device = "LeftWheel"
		GPIO_Message.Command = "ClockWise"
		publisherPWM.publish(PWM_Message)
		publisherGPIO.publish(GPIO_Message)

		PWM_Message.PWM_on = True
		PWM_Message.Device = "RightWheel"
		PWM_Message.DutyCycle = 100	
		GPIO_Message.GPIO_on = True
		GPIO_Message.Device = "RightWheel"
		GPIO_Message.Command = "ClockWise"
		publisherPWM.publish(PWM_Message)
		publisherGPIO.publish(GPIO_Message)

	elif (data.Command == "break"):
		PWM_Message.PWM_on = False
		PWM_Message.Device = "LeftWheel"
		PWM_Message.DutyCycle = 0.0
		GPIO_Message.GPIO_on = False
		GPIO_Message.Device = "LeftWheel"
		GPIO_Message.Command = "Break"
		publisherPWM.publish(PWM_Message)
		publisherGPIO.publish(GPIO_Message)

		PWM_Message.PWM_on = False
		PWM_Message.Device = "RightWheel"
		PWM_Message.DutyCycle = 0.0	
		GPIO_Message.GPIO_on = False
		GPIO_Message.Device = "RightWheel"
		GPIO_Message.Command = "Break"
		publisherPWM.publish(PWM_Message)
		publisherGPIO.publish(GPIO_Message)

subscriber = rospy.Subscriber("MovementCommand", Motor_msg, Motor_callback)
publisherPWM = rospy.Publisher("PWM_Output", PWM_msg, queue_size=QueueSize)
publisherGPIO = rospy.Publisher("GPIO_InputOutput", GPIO_msg, queue_size=QueueSize)

def MotorController():
	rospy.init_node('MotorController',anonymous=True)
	rospy.spin()
		
if __name__ == '__main__':
	MotorController()
