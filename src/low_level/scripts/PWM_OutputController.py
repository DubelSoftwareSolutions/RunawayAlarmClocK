import time
import RPi.GPIO as GPIO
import rospy
from low_level import PWM_msg

LeftWheelPWM_PinNumber = 12
RightWheelPWM_PinNumber = 13
BuzzerPWM_PinNumber = 14
WheelPWMfrequency = 1000
BuzzerPWMfrequency = 50
OnDutyCycle = 100
OffDutyCycle = 0

GPIO.setmode(GPIO.BOARD)
GPIO.setup(LeftWheelPWM_PinNumber, GPIO.OUT)
GPIO.setup(RightWheelPWM_PinNumber, GPIO.OUT)
GPIO.setup(BuzzerPWM_PinNumber, GPIO.OUT)

def PWM_callback(data):
	if (data.Device == "LeftWheel"):
		GPIO_PinNumber = LeftWheelPWM_PinNumber
		PWMfrequency = WheelPWMfrequency
	elif (data.Device == "RightWheel"):
		GPIO_PinNumber = RightWheelPWM_PinNumber
		PWMfrequency = WheelPWMfrequency
	elif (data.Device == "Buzzer"):
		GPIO_PinNumber = BuzzerPWM_PinNumber
		PWMfrequency = BuzzerPWMfrequency
	GPIO_PWM_Pin = GPIO.PWM(GPIO_PinNumber, PWMfrequency)  
	GPIO_PWM_Pin.ChangeDutyCycle(data.DutyCycle)
	if (data.PWM_on == True):
		GPIO_PWM_Pin.start(0)
	else:
		GPIO_PWM_Pin.stop()

def PWM_OutputController():
	rospy.init_node('PWM_OutputController',anonymous=True)
	rospy.Subscriber("PWM_Output", PWM_msg, PWM_callback)
	rospy.spin()
		
if __name__ == '__main__':
	PWM_OutputController()
	GPIO.cleanup()