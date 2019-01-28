#!/usr/bin/python

import rospy
import I2C_LCD_driver
from low_level.msg import LCD_msg
from low_level.srv import TimeService



mylcd = I2C_LCD_driver.lcd()
RefreshTime = 1.0 #seconds

def LCD_callback(data):
	i2c_lcd.clear()
	i2c_lcd.lcd_string(data.Text, data.LineNumber)


def LCD_Controller():
	rospy.init_node('LCD_Controller',anonymous=True)
	rospy.Subscriber("LCD_Output", LCD_msg, LCD_callback)
	LoopRate = rospy.Rate(1/RefreshTime)
	
	while not rospy.is_shutdown():
		rospy.wait_for_service('TimeService')
		try:
			timeservice = rospy.ServiceProxy('TimeService', TimeService)
			CurrentTime = timeservice("Now")
		except rospy.ServiceException, exception:
			print "Service call failed: %s"%exception
	
		mylcd.lcd_clear()
		mylcd.lcd_display_string(CurrentTime.TimeNow, 1)
		mylcd.lcd_display_string(CurrentTime.DateNow, 2)
		LoopRate.sleep()
	
if __name__ == '__main__':
	LCD_Controller()
	GPIO.cleanup()
