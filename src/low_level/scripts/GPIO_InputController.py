#!/usr/bin/python

import time
import RPi.GPIO as GPIO
import rospy
from low_level.msg import Keyboard_msg


CommandMessage = Keyboard_msg()

K7GPIO_PinNumber = 17
K6GPIO_PinNumber = 27
K5GPIO_PinNumber = 22
K4GPIO_PinNumber = 10
K3GPIO_PinNumber = 9
K2GPIO_PinNumber = 11
K1GPIO_PinNumber = 5
K0GPIO_PinNumber = 6

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)

GPIO.setup(K7GPIO_PinNumber, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
GPIO.setup(K6GPIO_PinNumber, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
GPIO.setup(K5GPIO_PinNumber, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
GPIO.setup(K4GPIO_PinNumber, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
GPIO.setup(K3GPIO_PinNumber, GPIO.OUT)
GPIO.setup(K2GPIO_PinNumber, GPIO.OUT)
GPIO.setup(K1GPIO_PinNumber, GPIO.OUT)
GPIO.setup(K0GPIO_PinNumber, GPIO.OUT)
#K0: K4 = STOP, K5 = 3, K6 = 2, K7 = 1
#K1: K4 = GO, K5 = 6, K6 = 5, K7 = 4
#K2: K4 = LOCK, K5 = 9, K6 = 8, K7 = 7
#K3: K4 = QUIT, K5 = ESC, K6 = 0, K7 = ENT

def readKey():
	rosrate = rospy.Rate(5)
	while not rospy.is_shutdown():
		CommandMessage.Command = ""
		GPIO.output(K0GPIO_PinNumber, GPIO.HIGH)
		GPIO.output(K1GPIO_PinNumber, GPIO.LOW)	
		GPIO.output(K2GPIO_PinNumber, GPIO.LOW)	
		GPIO.output(K3GPIO_PinNumber, GPIO.LOW)	
		if GPIO.input(K4GPIO_PinNumber) == GPIO.HIGH:
			CommandMessage.Command = "STOP"
		if GPIO.input(K5GPIO_PinNumber) == GPIO.HIGH:
			CommandMessage.Command = "3"
		if GPIO.input(K6GPIO_PinNumber) == GPIO.HIGH:
			CommandMessage.Command = "2"
		if GPIO.input(K7GPIO_PinNumber) == GPIO.HIGH:
			CommandMessage.Command = "1"
	
		GPIO.output(K0GPIO_PinNumber, GPIO.LOW)
		GPIO.output(K1GPIO_PinNumber, GPIO.HIGH)	
		GPIO.output(K2GPIO_PinNumber, GPIO.LOW)	
		GPIO.output(K3GPIO_PinNumber, GPIO.LOW)	
		if GPIO.input(K4GPIO_PinNumber) == GPIO.HIGH:
			CommandMessage.Command = "GO"
		if GPIO.input(K5GPIO_PinNumber) == GPIO.HIGH:
			dupa = 1
		if GPIO.input(K6GPIO_PinNumber) == GPIO.HIGH:
			CommandMessage.Command = "5"
		if GPIO.input(K7GPIO_PinNumber) == GPIO.HIGH:
			CommandMessage.Command = "4"
	
		GPIO.output(K0GPIO_PinNumber, GPIO.LOW)
		GPIO.output(K1GPIO_PinNumber, GPIO.LOW)	
		GPIO.output(K2GPIO_PinNumber, GPIO.HIGH)	
		GPIO.output(K3GPIO_PinNumber, GPIO.LOW)	
		if GPIO.input(K4GPIO_PinNumber) == GPIO.HIGH:
			CommandMessage.Command = "LOCK"
		if GPIO.input(K5GPIO_PinNumber) == GPIO.HIGH:
			CommandMessage.Command = "9"
		if GPIO.input(K6GPIO_PinNumber) == GPIO.HIGH:
			CommandMessage.Command = "8"
		if GPIO.input(K7GPIO_PinNumber) == GPIO.HIGH:
			CommandMessage.Command = "7"
	
		GPIO.output(K0GPIO_PinNumber, GPIO.LOW)
		GPIO.output(K1GPIO_PinNumber, GPIO.LOW)	
		GPIO.output(K2GPIO_PinNumber, GPIO.LOW)	
		GPIO.output(K3GPIO_PinNumber, GPIO.HIGH)	
		if GPIO.input(K4GPIO_PinNumber) == GPIO.HIGH:
			CommandMessage.Command = "QUIT"
		if GPIO.input(K5GPIO_PinNumber) == GPIO.HIGH:
			CommandMessage.Command = "ESC"
		if GPIO.input(K6GPIO_PinNumber) == GPIO.HIGH:
			CommandMessage.Command = "0"
		if GPIO.input(K7GPIO_PinNumber) == GPIO.HIGH:
			CommandMessage.Command ="ENT"

		if (CommandMessage.Command != ""):
			publisherGPIO.publish(CommandMessage)
		rosrate.sleep()
	
publisherGPIO = rospy.Publisher("KeyboardCommand", Keyboard_msg, queue_size=10)
	
def GPIO_OutputController():
	rospy.init_node('GPIO_InputController',anonymous=True)
	try:
		readKey()
	except rospy.ROSInterruptException: pass
	rospy.spin()
		
if __name__ == '__main__':
	GPIO_OutputController()
	GPIO.cleanup()
