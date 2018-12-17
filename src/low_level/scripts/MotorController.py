import time
import RPi.GPIO as GPIO
import rospy
from low_level import Motor_msg
from low_level import PWM_msg

QueueSize = 100
PWM_Message = PWM_msg()

def Motor_callback(data):
	if (data.Command == "forward"):
		PWM_Message.PWM_on = True
		PWM_Message.Device = "LeftWheel"
		PWM_Message.DutyCycle = 100
		PWM_Message.PWM_on = True
		PWM_Message.Device = "RightWheel"
		PWM_Message.DutyCycle = 100
	elif (data.Command == "backward"):
		PWM_Message.PWM_on = True
		PWM_Message.Device = "LeftWheel"
		PWM_Message.DutyCycle = 100
		PWM_Message.PWM_on = True
		PWM_Message.Device = "RightWheel"
		PWM_Message.DutyCycle = 100
	elif (data.Command == "turn_left"):
		PWM_Message.PWM_on = True
		PWM_Message.Device = "LeftWheel"
		PWM_Message.DutyCycle = 100
		PWM_Message.PWM_on = True
		PWM_Message.Device = "RightWheel"
		PWM_Message.DutyCycle = 100
	elif (data.Command == "turn_right"):
		PWM_Message.PWM_on = True
		PWM_Message.Device = "LeftWheel"
		PWM_Message.DutyCycle = 100
		PWM_Message.PWM_on = True
		PWM_Message.Device = "RightWheel"
		PWM_Message.DutyCycle = 100	
	publisher.publish(PWM_Message)

def MotorController():
	rospy.init_node('MotorController',anonymous=True)
	subscriber = rospy.Subscriber("MovementCommand", Motor_msg, Motor_callback)
	publisher = rospy.Publisher("PWM_Output", PWM_msg, queue_size=QueueSize)
	rospy.spin()
		
if __name__ == '__main__':
	MotorController()