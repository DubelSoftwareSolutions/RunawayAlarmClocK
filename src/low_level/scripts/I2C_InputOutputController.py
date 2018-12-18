import time
import RPi.GPIO as GPIO
import rospy
from low_level import I2C_msg

ADC1_Address = 0x3F
ADC1_Address = 0x40
ADC1_Address = 0x41

GPIO.setmode(GPIO.BOARD)
GPIO.setup(ADC1I2C_PinNumber, GPIO.OUT)
GPIO.setup(ADC2I2C_PinNumber, GPIO.OUT)
GPIO.setup(ADC3I2C_PinNumber, GPIO.OUT)

def I2C_callback(data):
	if (data.Device == "ADC1"):
		GPIO_PinNumber = ADC1I2C_PinNumber
	elif (data.Device == "ADC2"):
		GPIO_PinNumber = ADC2I2C_PinNumber
	elif (data.Device == "ADC3"):
		GPIO_PinNumber = ADC3I2C_PinNumber
	GPIO_I2C_Pin = GPIO.I2C(GPIO_PinNumber, I2Cfrequency)  
	GPIO_I2C_Pin.ChangeDutyCycle(data.DutyCycle)
	if (data.I2C_on == True):
		GPIO_I2C_Pin.start(0)
	else:
		GPIO_I2C_Pin.stop()

def I2C_OutputController():
	rospy.init_node('I2C_OutputController',anonymous=True)
	rospy.Subscriber("I2C_Output", I2C_msg, I2C_callback)
	rospy.spin()
		
if __name__ == '__main__':
	I2C_OutputController()
	GPIO.cleanup()