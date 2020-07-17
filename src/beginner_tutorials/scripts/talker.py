#!/usr/bin/env python
# license removed for brevity
import rospy
from random import random
from std_msgs.msg import Float32

def talker():
    pub = rospy.Publisher('chatter', Float32, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        value = random()
        hello_str = "Publishing a random number %f" % value
        rospy.loginfo(hello_str)
        pub.publish(value)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
