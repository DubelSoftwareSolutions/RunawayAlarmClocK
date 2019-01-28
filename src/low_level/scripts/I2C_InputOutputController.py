#!/usr/bin/python

import time
import rospy
from low_level.msg import I2C_msg
from Adafruit_Seesaw import *

SeeSaw = Seesaw()
ADCreadings = I2C_msg()
publisherI2C = rospy.Publisher("ADCData", I2C_msg, queue_size=10)

def readADC():
	rosrate = rospy.Rate(1000)
	while not rospy.is_shutdown():
		ADCreadings.SharpFrontLeft = SeeSaw.analog_read(ADC_INPUT_0_PIN)
		ADCreadings.SharpFrontRight = SeeSaw.analog_read(ADC_INPUT_1_PIN)
		ADCreadings.SharpTop = SeeSaw.analog_read(ADC_INPUT_2_PIN)
		ADCreadings.KtirBottom = SeeSaw.analog_read(ADC_INPUT_3_PIN)
	
		publisherI2C.publish(ADCreadings)
		rosrate.sleep()

def I2C_InputOutputController():
	rospy.init_node('I2C_InputOutputController',anonymous=True)
	try:
		readADC()
	except rospy.ROSInterruptException: pass
	rospy.spin()
		
if __name__ == '__main__':
	I2C_InputOutputController()
