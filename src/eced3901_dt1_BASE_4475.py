import math
import rospy as ros
import sys
import time

from geometry_msgs.msg import Twist, Pose
from nav_msgs.msg import Odometry
from tf.transformations import euler_from_quaternion, quaternion_from_euler

PI = math.pi
OFFSET = 0.5

__author__ = "Gabriel Urbain" 
__copyright__ = "Copyright 2018, IDLab, UGent"

__license__ = "MIT" 
__version__ = "1.0" 
__maintainer__ = "Gabriel Urbain"
__email__ = "gabriel.urbain@ugent.be" 
__status__ = "Education" 
__date__ = "October 15th, 2018"


class SquareMove(object):
    """
    This class is an abstract class to control a square trajectory on the turtleBot.
    It mainly declare and subscribe to ROS topics in an elegant way.
    """

    def __init__(self):

        # Declare ROS subscribers and publishers
        self.node_name = "square_move"
        self.odom_sub_name = "/odom"
        self.vel_pub_name = "/cmd_vel"
        self.vel_pub = None
        self.odometry_sub = None

        # ROS params
        self.pub_rate = 0.1
        self.queue_size = 2

        # Variables containing the sensor information that can be used in the main program
        self.odom_pose = None

    def start_ros(self):

        # Create a ROS node with a name for our program
        ros.init_node(self.node_name, log_level=ros.INFO)

        # Define a callback to stop the robot when we interrupt the program (CTRL-C)
        ros.on_shutdown(self.stop_robot)

        # Create the Subscribers and Publishers
        self.odometry_sub = ros.Subscriber(self.odom_sub_name, Odometry, callback=self.__odom_ros_sub, queue_size=self.queue_size)
        self.vel_pub = ros.Publisher(self.vel_pub_name, Twist, queue_size=self.queue_size)

    def stop_robot(self):

        # Get the initial time
        self.t_init = time.time()

        # We publish for a second to be sure the robot receive the message
        while time.time() - self.t_init < 1 and not ros.is_shutdown():
            
            self.vel_ros_pub(Twist())
            time.sleep(self.pub_rate)

        sys.exit("The process has been interrupted by the user!")

    def move(self):
        """ To be surcharged in the inheriting class"""

        while not ros.is_shutdown():
            time.sleep(1)

    def __odom_ros_sub(self, msg):

        self.odom_pose = msg.pose.pose

    def vel_ros_pub(self, msg):

        self.vel_pub.publish(msg)


class SquareMoveOdom(SquareMove):
    """
    This class implements a semi closed-loop square trajectory based on relative position control,
    where only odometry is used. HOWTO:
     - Start the sensors on the turtlebot:
            $ roslaunch turtlebot3_gazebo turtlebot3_empty_world.launch 
     - Start this node on your computer:
            $ python eced3901_dt1.py odom
    """

    def __init__(self):


        super(SquareMoveOdom, self).__init__()

        self.pub_rate = 0.1

    def get_z_rotation(self, orientation):

        (roll, pitch, yaw) = euler_from_quaternion([orientation.x, orientation.y, orientation.z, orientation.w])
        print roll, pitch, yaw
        return yaw
        
    def move_of(self, d, speed=0.5):

        x_init = self.odom_pose.position.x
        y_init = self.odom_pose.position.y

        # Set the velocity forward until distance is reached
        while math.sqrt((self.odom_pose.position.x - x_init)**2 + \
             (self.odom_pose.position.y - y_init)**2) < d and not ros.is_shutdown():

            sys.stdout.write("\r [MOVE] The robot has moved of {:.2f}".format(math.sqrt((self.odom_pose.position.x - x_init)**2 + \
            (self.odom_pose.position.y - y_init)**2)) +  "m over " + str(d) + "m")
            sys.stdout.flush()

            msg = Twist()
            msg.linear.x = speed
            msg.angular.z = 0
            self.vel_ros_pub(msg)
            time.sleep(self.pub_rate)

    def turn_of(self, a, ang_speed=0.4):

        # Convert the orientation quaternion message to Euler angles
        a_init = self.get_z_rotation(self.odom_pose.orientation)

	# Clockwise
        if (a > 0):

            # Normal operation
            if (a_init + a < math.pi):
                # Set the angular velocity forward until angle is reached
                while (self.get_z_rotation(self.odom_pose.orientation) - a_init) < a and not ros.is_shutdown():
			print("Case 1")
			msg = Twist()
         		msg.angular.z = ang_speed
         		msg.linear.x = 0
         		self.vel_ros_pub(msg)
         		time.sleep(self.pub_rate)

		# Error-correction
            else:
        		# Set the angular velocity forward until angle is reached
                while (self.get_z_rotation(self.odom_pose.orientation) > a_init-OFFSET or (self.get_z_rotation(self.odom_pose.orientation) - a_init) < a-2*math.pi) and not ros.is_shutdown():
			print("Case 2")
			msg = Twist()
         		msg.angular.z = ang_speed
         		msg.linear.x = 0
         		self.vel_ros_pub(msg)
         		time.sleep(self.pub_rate)
            
	else:

            # Normal operation
            if (a_init + a > -math.pi):
                # Set the angular velocity forward until angle is reached
                while (self.get_z_rotation(self.odom_pose.orientation) - a_init) > a and not ros.is_shutdown():
			print("Case 3")
			msg = Twist()
         		msg.angular.z = -ang_speed
         		msg.linear.x = 0
         		self.vel_ros_pub(msg)
         		time.sleep(self.pub_rate)

		# Error-correction
            else:
        		# Set the angular velocity forward until angle is reached
                while (self.get_z_rotation(self.odom_pose.orientation) < a_init+OFFSET or (self.get_z_rotation(self.odom_pose.orientation) - a_init) > a+2*math.pi) and not ros.is_shutdown():
			print("Case 4")
			msg = Twist()
         		msg.angular.z = -ang_speed
         		msg.linear.x = 0
         		self.vel_ros_pub(msg)
         		time.sleep(self.pub_rate)
                   
		

    def move(self):

   	# Wait that our python program has received its first messages
        while self.odom_pose is None and not ros.is_shutdown():
            time.sleep(0.1)

            #Clockwise
            self.move_of(0.5)
            self.turn_of(PI/2)
            self.move_of(1)
            self.turn_of(PI/2)
       	    self.move_of(0.5)
            self.turn_of(PI/2)
            self.move_of(1)

            #Turn Around
            self.turn_of(math.pi)

            #Counter-Clockwise
            self.move_of(1)
            self.turn_of(-PI/2)
            self.move_of(0.5)
            self.turn_of(-PI/2)
            self.move_of(1)
            self.turn_of(-PI/2)
            self.move_of(0.5)

            #End
            self.stop_robot()




if __name__ == '__main__':
    time.sleep(1)

    # Choose the example you need to run in the command line
    r = SquareMoveOdom()

    # Listen and Publish to ROS + execute moving instruction
    r.start_ros()
    r.move()
