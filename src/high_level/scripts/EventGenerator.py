#!/usr/bin/python

import time
import rospy
from low_level.msg import *
from low_level.srv import TimeService

QueueSize = 100
PWM_Message = PWM_msg()
Motor_Message = Motor_msg()

rospy.init_node('EventGenerator',anonymous=True)

def ADC_callback(data):
	if (data.SharpTop > 400):
		Motor_Message.Command = "break"
		publisherMotor.publish(Motor_Message)
	elif (data.SharpFrontLeft > 300 and data.SharpFrontRight > 300):
		Motor_Message.Command = "turn_right"		
		publisherMotor.publish(Motor_Message)
	else:
		Motor_Message.Command = "forward"		
		publisherMotor.publish(Motor_Message)
		
def Keyboard_callback(data):
	dupa = 1

subscriberI2C = rospy.Subscriber("ADCData", I2C_msg, ADC_callback)
subscriberKeyboard = rospy.Subscriber("KeyboardCommand", Keyboard_msg, Keyboard_callback)
publisherMotor = rospy.Publisher("MovementCommand", Motor_msg, queue_size=QueueSize)
publisherPWM = rospy.Publisher("PWM_Output", PWM_msg, queue_size=QueueSize)


def EventGenerator():
	Motor_Message.Command = "forward"
	publisherMotor.publish(Motor_Message)
	rospy.spin()
		
if __name__ == '__main__':
	EventGenerator()
