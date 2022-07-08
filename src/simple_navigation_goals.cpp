#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <geometry_msgs/Twist.h>
#include <std_msgs/Empty.h>

#define PI 3.1415926


#define MAXSTRINGLEN 20
#define MAPSIZE 7
#define NUMBEROFMAPS 3

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

//Sets a waypoint at coordinates x & y
void gohere(int x, int y, MoveBaseClient &ac)
{
	//TODO: Conversion to map coordinates
	move_base_msgs::MoveBaseGoal goal;
	goal.target_pose.header.frame_id = "map";
	goal.target_pose.header.stamp = ros::Time::now();

	goal.target_pose.pose.position.x = (float)x*0.3048*2+0.3048;
	goal.target_pose.pose.position.y = (float)y*0.3048*2+0.3048;

	goal.target_pose.pose.orientation.w = 1.0;
	ROS_INFO("Sending goal");

	ac.sendGoal(goal);
   
	ac.waitForResult();
	
	if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
		ROS_INFO("Hooray, the base moved 1 meter forward");
	else
		ROS_INFO("The base failed to move forward 1 meter for some reason");
}

//Define map structure
//Note: mine map is flipped 90 degrees clockwise from what you would expect.
char map[NUMBEROFMAPS][MAPSIZE][MAPSIZE][MAXSTRINGLEN] = {
				"E", "EEN", "E", "S", "S", "EEE", "S",
                               	"E", "W", "N", "EEE", "W", "N", "W",
                               	"E", "W", "S", "S", "W", "W", "S",
                               	"N", "N", "E", "W", "W", "S", "W",
                               	"N", "N", "E", "W", "W", "S", "W",
                               	"E", "S", "S", "NE", "N", "N", "W",
                               	"", "N", "N", "W", "W", "N", "",
                                      "E", "E", "N", "N", "E", "E", "E",
                                      "E", "E", "W", "N", "E", "E", "S",
                                      "E", "E", "E", "E", "E", "N", "E",
                                      "E", "E", "E", "E", "E", "E", "E",
                                      "N", "N", "E", "E", "E", "S", "E",
                                      "E", "S", "S", "E", "E", "S", "S",
                                      "R", "S", "S", "S", "S", "S", "S",
                             	"N", "NNWWWW", "NNNNWWWWWWSSE", "NNNNWWWWWWSS", "NNNNWWWWWWS", "NNNNWNNWWS", "NNNNWNNWWWSWW",
                             	"N", "NNWWSWWWW", "NNNNWWWWWS", "NNNWW", "NNNNWWWWWW", "NNNNWNNWWWSWN", "NNNNWNNWWWSWNW",
                             	"N", "NNWWSWWW", "NNNWWWW", "NNNNN", "NNNNWWWWW", "NNNNWNNWWWSW", "NNNNWNNWWWS",
                             	"N", "NNWWSWW", "NNWWSW", "NNWWW", "NNNNWWWW", "NNNNWNW", "NNNNWNNWWW",
                             	"N", "N", "N", "NNNWWW", "NNNNWWW", "NNNNWW", "NNNNWNNWW",
                             	"N", "N", "N", "NNNN", "NNNNWN", "NNNNWNN", "NNNNWNNW",
                             	"", "NN", "NNN", "NNNW", "NNNNW", "NNNNNN", ""};

enum map_choice{
    forwards, reversing, returning
};

//Enum to be swapped out to specify different maps
enum map_choice maps = forwards;

void amcl_callback(geometry_msgs::Pose msg){
//TODO: Conversion
    //global variable = msg.data
}

void grabber_callback(std_msgs::Empty msg){
    maps = reversing;
    ROS_INFO("Found mine at X,Y\n");
}

//Global x and y
int global_x = 0, global_y = 0;

int main(int argc, char** argv)
{


    //Velocity publisher setup
    ros::init(argc, argv, "cmd_vel_publisher_node");
    ros::NodeHandle nh;
    ros::Publisher vel_pub = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1);
    geometry_msgs::Twist vel_msg;

    //Dropper publisher setup
    ros::init(argc, argv, "dropper_publisher_node");
    ros::NodeHandle nd;
    ros::Publisher dropper_pub = nd.advertise<std_msgs::Empty>("dropper", 1);
    std_msgs::Empty flag;

    //Coordinate subscriber setup
    ros::init(argc, argv, "amcl_subscriber_node");
    ros::NodeHandle ns;
    ros::Subscriber amcl_sub = ns.subscribe("amcl", 1000, &amcl_callback);

    //Limit switch subscriber setup
    ros::init(argc, argv, "limit_switch_subscriber_node");
    ros::NodeHandle nl;
    ros::Subscriber limit_switch_sub = nl.subscribe("grabber", 1000, &grabber_callback);

    //Rate setup
    ros::Rate rate(0.5);

    vel_pub.publish(vel_msg);

    //tell the action client that we want to spin a thread by default
	MoveBaseClient ac("move_base", true);

	//wait for the action server to come up
	while(!ac.waitForServer(ros::Duration(5.0)))
	{
		ROS_INFO("Waiting for the move_base action server to come up");
	}


    //Enum to be swapped out to specify different maps
    enum map_choice maps = forwards;

    //Main loop
    for(;;){

	//Local integers to represents x and y coordinates
    	int x = global_x, y = global_y;
	//Set local goal variables
	int goal_x = x, goal_y = y;
        //Loop to go through string
        for(int i = 0; map[maps][x][y][i] != '\0';i++)
	{
            //Switch to convert cardinal direction in string into coordinate change
            switch(map[maps][x][y][i]){

                case 'E':
                    //Move position one east
                    goal_x++;
                    break;
                case 'W':
                    //Move position one west
                    goal_x--;
                    break;
                case 'N':
                    //Move position one north
                    goal_y++;
                    break;
                case 'S':
                    //Move position one south
                    goal_y--;
                    break;
                case 'R':
                    //Change map to return map
                    dropper_pub.publish(flag);
                    maps = returning;
                default:
                    ROS_INFO("Unrecognized character in instruction string\n");
                    break;

            	}
            //Go to decided on location
            gohere(goal_x, goal_y , ac);
            ros::spin();
        }

        //Get location and do instructions from forward squares
        //If callback is activated:
            //Switch to backward squares
            //Return mine
        //If in ending square
            //Switch to forward aquares
    }

    //subscriber with callback: mine is in proper distance

	return 0;
}

