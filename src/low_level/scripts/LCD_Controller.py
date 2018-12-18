import rospy
import i2c_lcd
from low_level.msg import LCD_msg
from low_level.srv import TimeService.srv

RefreshTime = 5 #seconds

def LCD_callback(data):
	i2c_lcd.clear()
	i2c_lcd.lcd_string(data.Text, data.LineNumber)


def LCD_Controller():
	rospy.init_node('LCD_Controller',anonymous=True)
	rospy.Subscriber("LCD_Output", LCD_msg, LCD_callback)
	LoopRate = rospy.Rate(1/RefreshTime)
	
	while not rospy.is_shutdown():
		rospy.wait_for_service('RosTimeService')
		try:
			TimeService = rospy.ServiceProxy('RosTimeService', TimeService)
			CurrentTime = TimeService("Now")
		except rospy.ServiceException, exception:
			print "Service call failed: %s"%exception
	
		i2c_lcd.clear()
		i2c_lcd.lcd_string(CurrentTime.TimeNow, i2c_lcd.LCD_LINE_1)
		i2c_lcd.lcd_string(CurrentTime.DateNow, i2c_lcd.LCD_LINE_2)
		rate.sleep()
	
if __name__ == '__main__':
	LCD_Controller()
	GPIO.cleanup()