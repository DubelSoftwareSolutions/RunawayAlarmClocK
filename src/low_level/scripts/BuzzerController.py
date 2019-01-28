#!/usr/bin/python

import time
import RPi.GPIO as GPIO
import rospy
from high_level.msg import EventInfo
from low_level.msg import PWM_msg

QueueSize = 10
PWM_Message = PWM_msg()
PWM_Message.Device = "Buzzer"
PWM_Message.
AlarmStarted = False

def Buzzer_callback(data):
	if(data.Name == "AlarmStart"):
		AlarmStarted = True
	elif(data.Name == "AlarmStop"):
		AlarmStarted = False

def BuzzerController():
	rospy.init_node('BuzzerController',anonymous=True)
	subscriber = rospy.Subscriber("EventInfo", Event_msg, Buzzer_callback)
	publisher = rospy.Publisher("PWM_Output", PWM_msg, queue_size=QueueSize)
	
	LoopRate = rospy.Rate(2)
	while (not rospy.is_shutdown()) and (AlarmStarted):
		PWM_Message.PWM_on = not PWM_Message.PWM_on
		PWM_Message.Device = "Buzzer"
		PWM_Message.DutyCycle = 100
		publisher.publish(PWM_Message)
		LoopRate.sleep()
		
if __name__ == '__main__':
	BuzzerController()
