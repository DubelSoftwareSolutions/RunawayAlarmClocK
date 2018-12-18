import time
import RPi.GPIO as GPIO
import rospy
from low_level import GPIO_msg

LeftWheelGPIO_PinNumber = 12
RightWheelGPIO_PinNumber = 13
BuzzerGPIO_PinNumber = 14
WheelGPIOfrequency = 1000
BuzzerGPIOfrequency = 50
OnDutyCycle = 100
OffDutyCycle = 0

GPIO.setmode(GPIO.BOARD)
GPIO.setup(LeftWheelGPIO_PinNumber, GPIO.OUT)
GPIO.setup(RightWheelGPIO_PinNumber, GPIO.OUT)
GPIO.setup(BuzzerGPIO_PinNumber, GPIO.OUT)

def GPIO_callback(data):
	GPIO_GPIO_Pin = GPIO.GPIO(GPIO_PinNumber, GPIOfrequency)  
	GPIO_GPIO_Pin.ChangeDutyCycle(data.DutyCycle)
	if (data.GPIO_on == True):
		GPIO_GPIO_Pin.on()
	else:
		GPIO_GPIO_Pin.off()

def GPIO_OutputController():
	rospy.init_node('GPIO_InputOutputController',anonymous=True)
	rospy.Subscriber("GPIO_InputOutput", GPIO_msg, GPIO_callback)
	rospy.spin()
		
if __name__ == '__main__':
	GPIO_OutputController()
	GPIO.cleanup()