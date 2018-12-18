import time
import RPi.GPIO as GPIO
import rospy
from low_level import Time_msg



def RosTimeService():
	rospy.init_node('RosTimeService',anonymous=True)
	rospy.Publisher("TimeOutput", PWM_msg, PWM_callback)
	rospy.spin()
		
if __name__ == '__main__':