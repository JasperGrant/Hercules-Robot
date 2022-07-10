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
	//ROS_INFO("Sending goal");

	ac.sendGoal(goal);
   
	ac.waitForResult();
	
	if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
		ROS_INFO("Moved to %d,%d",x,y);
	else
		ROS_INFO("Could not reach waypoint");
}

//Define map structure
//Note: mine map is flipped 90 degrees clockwise from what you would expect.
char map[NUMBEROFMAPS][MAPSIZE][MAPSIZE][MAXSTRINGLEN] = {
				"E", "EEN", "E", "S", "S", "EEE", "S",
                               	"E", "W", "N", "EEE", "W", "N", "W",
                               	"E", "W", "S", "S", "W", "W", "S",
                               	"E", "N", "E", "W", "W", "S", "W",
                               	"N", "N", "E", "W", "W", "S", "W",
                               	"E", "S", "S", "EN", "N", "N", "W",
                               	"N", "N", "N", "W", "W", "N", "",
                                      "E", "E", "N", "N", "E", "E", "E",
                                      "E", "E", "W", "N", "E", "E", "S",
                                      "E", "E", "E", "E", "E", "N", "E",
                                      "E", "E", "E", "E", "E", "E", "E",
                                      "E", "N", "E", "E", "E", "S", "E",
                                      "E", "S", "S", "E", "E", "S", "S",
                                      "R", "S", "S", "S", "S", "S", "S",
                             	"NF", "NNWWWWF", "NNNNWWWWWWSSEF", "NNNNWWWWWWSSF", "NNNNWWWWWWSF", "NNNNWNNWWSF", "NNNNWNNWWWSWWF",
                             	"NF", "NNWWSWWWWF", "NNNNWWWWWSF", "NNNWWF", "NNNNWWWWWWF", "NNNNWNNWWWSWNF", "NNNNWNNWWWSWNWF",
                             	"NF", "NNWWSWWWF", "NNNWWWWF", "NNNNNF", "NNNNWWWWWF", "NNNNWNNWWWSWF", "NNNNWNNWWWSF",
                             	"NF", "NNWWSWWF", "NNWWSWF", "NNWWWF", "NNNNWWWWF", "NNNNWNWF", "NNNNWNNWWWF",
                             	"NF", "NF", "NF", "NNNWWWF", "NNNNWWWF", "NNNNWWF", "NNNNWNNWWF",
                             	"NF", "NF", "NF", "NNNNF", "NNNNWNF", "NNNNWNNF", "NNNNWNNWF",
                             	"", "NNF", "NNNF", "NNNWF", "NNNNWF", "NNNNNNF", ""};

int maps = 0;

void amcl_callback(geometry_msgs::Pose msg){
//TODO: Conversion
    //global variable = msg.data
}

//Global x and y
int global_x = 0, global_y = 0;

//Return x & y
int return_x, return_y;

void grabber_callback(std_msgs::Empty msg)
{
    maps = 1;
    ROS_INFO("Found mine at %d,%d",global_x,global_y);
	return_x = global_x;
	return_y = global_y;
}

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
    ros::Subscriber amcl_sub = ns.subscribe("amcl", 1000, amcl_callback);

    //Limit switch subscriber setup
    ros::init(argc, argv, "limit_switch_subscriber_node");
    ros::NodeHandle nl;
    ros::Subscriber limit_switch_sub = nl.subscribe("grabber", 1000, grabber_callback);

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

    //Main loop
    for(;;){

	//Local integers to represents x and y coordinates
    int x = global_x, y = global_y;

	//Set local goal variables
	int goal_x = x, goal_y = y;

	//Correctly addresses return matrix
	if(maps == 2)
	{
		x = return_x;
		y = return_y;
	}	

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
					ROS_INFO("Dropped Mine");
					ROS_INFO("Returning to %d,%d",return_x,return_y);
                    maps = 2;
                    break;
                case 'F':
                    maps = 0;
					ROS_INFO("Returning to fowards map");
                    break;
                default:
                    ROS_INFO("Unrecognized character in instruction string\n");
                    break;

            	}
            //Go to decided on location
            gohere(goal_x, goal_y , ac);
			global_x = goal_x;
			global_y = goal_y;
            ros::spinOnce();
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

