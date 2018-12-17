import time
import RPi.GPIO as GPIO
import rospy
from low_level import PWM_msg

ChannelNumber = 12
PWMfrequency = 50
OnDutyCycle = 100
OffDutyCycle = 0

GPIO.setmode(GPIO.BOARD)
GPIO.setup(ChannelNumber, GPIO.OUT)

def PWM_callback(data):
	GPIO.setup(data.GPIO_PinNumber, GPIO.OUT)
	GPIO_PWM_Pin = GPIO.PWM(ChannelNumber, PWMfrequency)  
	GPIO_PWM_Pin.ChangeDutyCycle(data.DutyCycle)
	if (data.PWM_on == True):
		GPIO_PWM_Pin.start(0)
	else
		GPIO_PWM_Pin.stop()

def PWM_OutputController():
	rospy.init_node('PWM_OutputController',anonymous=True)
	rospy.Subscriber("PWM_Output", PWM_msg, PWM_callback)
	rospy.spin()
		
if __name__ == '__main__':
	PWM_OutputController()
	GPIO.cleanup()