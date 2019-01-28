#!/usr/bin/python

import time
import RPi.GPIO as GPIO
import rospy
from low_level.msg import GPIO_msg

LeftWheelGPIO_Pin1Number = 14
LeftWheelGPIO_Pin2Number = 15
RightWheelGPIO_Pin1Number = 23
RightWheelGPIO_Pin2Number = 24
StandbyGPIO_PinNumber = 21
BuzzerGPIO_PinNumber = 20

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)

GPIO.setup(LeftWheelGPIO_Pin1Number, GPIO.OUT)
GPIO.setup(LeftWheelGPIO_Pin2Number, GPIO.OUT)
GPIO.setup(RightWheelGPIO_Pin1Number, GPIO.OUT)
GPIO.setup(RightWheelGPIO_Pin2Number, GPIO.OUT)
GPIO.setup(StandbyGPIO_PinNumber, GPIO.OUT)
GPIO.setup(BuzzerGPIO_PinNumber, GPIO.OUT)

def GPIO_callback(data):
	if (data.Device == "LeftWheel"):
		if (data.GPIO_on == True):		
			if (data.Command == "ClockWise"):
				GPIO.output(LeftWheelGPIO_Pin1Number, GPIO.HIGH)
				GPIO.output(LeftWheelGPIO_Pin2Number, GPIO.LOW)
			elif (data.Command == "CounterClockWise"):
				GPIO.output(LeftWheelGPIO_Pin1Number, GPIO.LOW)
				GPIO.output(LeftWheelGPIO_Pin2Number, GPIO.HIGH)
			elif (data.Command == "Break"):
				GPIO.output(LeftWheelGPIO_Pin1Number, GPIO.HIGH)
				GPIO.output(LeftWheelGPIO_Pin2Number, GPIO.HIGH)
		else:
			GPIO.output(LeftWheelGPIO_Pin1Number, GPIO.LOW)
			GPIO.output(LeftWheelGPIO_Pin2Number, GPIO.LOW)

	elif (data.Device == "RightWheel"):
		if (data.GPIO_on == True):		
			if (data.Command == "ClockWise"):
				GPIO.output(RightWheelGPIO_Pin1Number, GPIO.HIGH)
				GPIO.output(RightWheelGPIO_Pin2Number, GPIO.LOW)
			elif (data.Command == "CounterClockWise"):
				GPIO.output(RightWheelGPIO_Pin1Number, GPIO.LOW)
				GPIO.output(RightWheelGPIO_Pin2Number, GPIO.HIGH)
			elif (data.Command == "Break"):
				GPIO.output(RightWheelGPIO_Pin1Number, GPIO.HIGH)
				GPIO.output(RightWheelGPIO_Pin2Number, GPIO.HIGH)
		else:
			GPIO.output(RightWheelGPIO_Pin1Number, GPIO.LOW)
			GPIO.output(RightWheelGPIO_Pin2Number, GPIO.LOW)

	elif (data.Device == "Buzzer"):
		if (data.GPIO_on == True):
			GPIO.output(BuzzerGPIO_PinNumber, GPIO.HIGH)
		elif (data.GPIO_on == False):
			GPIO.output(BuzzerGPIO_PinNumber, GPIO.LOW)

def GPIO_OutputController():
	GPIO.output(StandbyGPIO_PinNumber, GPIO.HIGH)
	rospy.init_node('GPIO_InputOutputController',anonymous=True)
	rospy.Subscriber("GPIO_InputOutput", GPIO_msg, GPIO_callback)
	rospy.spin()
		
if __name__ == '__main__':
	GPIO_OutputController()
	GPIO.cleanup()
