#!/usr/bin/python

import datetime
import rospy
from low_level.srv import TimeService, TimeServiceResponse


def handleTimeService(req):
	res = TimeService

	if(req.Request == "Now"):
		now = datetime.datetime.now()	

		return TimeServiceResponse(
			TimeNow = now.strftime("%H:%M:%S"),
			DateNow = now.strftime("%d.%m.%Y"),
			timestamp = rospy.rostime.Duration()
		)

def RosTimeService():
	rospy.init_node('RosTimeService',anonymous=True)
	s = rospy.Service("TimeService", TimeService, handleTimeService)
	rospy.spin()
		
if __name__ == '__main__':
	RosTimeService()
