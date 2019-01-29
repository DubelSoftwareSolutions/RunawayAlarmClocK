#!/usr/bin/python

import time
import rospy
from low_level.msg import *
from low_level.srv import TimeService

QueueSize = 100
PWM_Message = PWM_msg()
Motor_Message = Motor_msg()
AlarmTime = "14:30:00"
AlarmDate = "29.01.2019"

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
	if (data.Command == "STOP"):
		PWM_Message.PWM_on = False
		PWM_Message.DutyCycle = 0.0
		PWM_Message.Device = "Buzzer"
		publisherPWM.publish(PWM_Message)
		
		Motor_Message.Command = "break"		
		publisherMotor.publish(Motor_Message)

subscriberI2C = rospy.Subscriber("ADCData", I2C_msg, ADC_callback)
subscriberKeyboard = rospy.Subscriber("KeyboardCommand", Keyboard_msg, Keyboard_callback)
publisherMotor = rospy.Publisher("MovementCommand", Motor_msg, queue_size=QueueSize)
publisherPWM = rospy.Publisher("PWM_Output", PWM_msg, queue_size=QueueSize)


def EventGenerator():
	LoopRate = rospy.Rate(1/RefreshTime)
	while not rospy.is_shutdown():
		rospy.wait_for_service('TimeService')
		try:
			timeservice = rospy.ServiceProxy('TimeService',TimeService)
			CurrentTime = timeservice("Now")
		except rospy.ServiceException, exception:
			print "Service call failed: %s"%exception
		if(CurrentTime.TimeNow == AlarmTime and CurrentTime.DateNow == AlarmDate):
			PWM_Message.PWM_on = True
			PWM_Message.DutyCycle = 100.0
			PWM_Message.Device = "Buzzer"
			publisherPWM.publish(PWM_Message)
	rospy.spin()
		
if __name__ == '__main__':
	EventGenerator()
