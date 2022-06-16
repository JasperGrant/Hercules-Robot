#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>

#define PI 3.1415926
#define DIST_CEOF 1
#define ANG_COEF 1

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

int main(int argc, char** argv)
{
	ros::init(argc, argv, "simple_navigation_goals");

	//tell the action client that we want to spin a thread by default
	MoveBaseClient ac("move_base", true);

	//wait for the action server to come up
	while(!ac.waitForServer(ros::Duration(5.0)))
	{
		ROS_INFO("Waiting for the move_base action server to come up");
	}

	move_base_msgs::MoveBaseGoal goal;

	for(int i=0;i<4;i++)
	{
	//we'll send a goal to the robot to move 1 meter forward
	goal.target_pose.header.frame_id = "base_link";
	goal.target_pose.header.stamp = ros::Time::now();
	goal.target_pose.pose.position.x = DIST_CEOF*1.1;
	goal.target_pose.pose.orientation.z = (ANG_COEF*PI)/2;
	goal.target_pose.pose.orientation.w = 1.0;
	ROS_INFO("Sending goal");

	ac.sendGoal(goal);
	ac.waitForResult();
	
	if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
		ROS_INFO("Hooray, the base moved 1 meter forward");
	else
		ROS_INFO("The base failed to move forward 1 meter for some reason");
	}

	return 0;
}
