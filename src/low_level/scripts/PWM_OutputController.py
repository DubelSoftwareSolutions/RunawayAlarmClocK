#!/usr/bin/python

import time
import RPi.GPIO as GPIO
import rospy
from low_level.msg import PWM_msg

LeftWheelPWM_PinNumber = 12
RightWheelPWM_PinNumber = 13
BuzzerPWM_PinNumber = 25
WheelPWMfrequency = 1000
BuzzerPWMfrequency = 50
OnDutyCycle = 100
OffDutyCycle = 0

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(LeftWheelPWM_PinNumber, GPIO.OUT)
GPIO.setup(RightWheelPWM_PinNumber, GPIO.OUT)
GPIO.setup(BuzzerPWM_PinNumber, GPIO.OUT)
LeftWheelPWM_Pin = GPIO.PWM(LeftWheelPWM_PinNumber, WheelPWMfrequency)  
RightWheelPWM_Pin = GPIO.PWM(RightWheelPWM_PinNumber, WheelPWMfrequency)  
BuzzerPWM_Pin = GPIO.PWM(BuzzerPWM_PinNumber, BuzzerPWMfrequency)

def PWM_callback(data):
	if (data.Device == "LeftWheel"):
		GPIO_PinNumber = LeftWheelPWM_PinNumber
		PWMfrequency = WheelPWMfrequency
		LeftWheelPWM_Pin.ChangeDutyCycle(data.DutyCycle)
	elif (data.Device == "RightWheel"):
		GPIO_PinNumber = RightWheelPWM_PinNumber
		PWMfrequency = WheelPWMfrequency
		RightWheelPWM_Pin.ChangeDutyCycle(data.DutyCycle)
	elif (data.Device == "Buzzer"):
		GPIO_PinNumber = BuzzerPWM_PinNumber
		PWMfrequency = BuzzerPWMfrequency
		BuzzerPWM_Pin.ChangeDutyCycle(data.DutyCycle)

def PWM_OutputController():
	LeftWheelPWM_Pin.start(0)
	RightWheelPWM_Pin.start(0)
	BuzzerPWM_Pin.start(0)
	rospy.init_node('PWM_OutputController',anonymous=True)
	rospy.Subscriber("PWM_Output", PWM_msg, PWM_callback)
	rospy.spin()
		
if __name__ == '__main__':
	PWM_OutputController()
	LeftWheelPWM_Pin.stop()
	RightWheelPWM_Pin.stop()
	BuzzerPWM_Pin.stop()
	GPIO.cleanup()
