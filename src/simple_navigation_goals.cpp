// Simple_Navigation_Goals
// Andrew Doucet
// Jasper Grant

//Inclusions
#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <geometry_msgs/Twist.h>
//#include <geometry_msgs/PolygonStamped.h>
#include <std_msgs/Empty.h>

//Definitions
#define PI 3.1415926
#define MAXSTRINGLEN 20
#define MAPSIZE 7
#define NUMBEROFMAPS 3
#define NUMBEROFOFFSETS 2
#define x_offsets 0
#define y_offsets 1


typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;


// Instruction Maps (Fowards/Reverse/Returning)
// Map is flipped 90 degrees clockwise in definition

int maps = 0;
int mines = 0;

char map[NUMBEROFMAPS][MAPSIZE][MAPSIZE][MAXSTRINGLEN] = {
				"N", "E", "E", "S", "S", "N", "E",
                               	"", "E", "N", "M", "W", "W", "SEEESSSEE",
                               	"", "N", "N", "N", "W", "W", "S",
                               	"", "", "", "", "", "M", "W",
                               	"", "", "", "N", "N", "W", "W",
                               	"", "", "", "M", "N", "N", "W",
                               	"", "", "N", "N", "H", "H", "",
                                      "", "E", "N", "N", "E", "E", "S",
                                      "", "E", "W", "N", "E", "E", "S",
                                      "", "N", "e", "S", "S", "E", "E",
                                      "", "", "", "", "", "E", "E",
                                      "", "", "E", "S", "S", "S", "S",
                                      "", "", "R", "S", "S", "S", "S",
                                      "", "", "W", "S", "S", "h", "h",
                             	"", "WwNF", "WwNNWWSSEF", "WwNNWWSSF", "WwNNWWSF", "EF", "EF",
                             	"", "WwNF", "WwNNWSF", "NF", "WwNNWWF", "EF", "EF",
                             	"", "WwNF", "WwNF", "WwNNF", "WwNNWF", "NNNWWWWF", "NNNNWWWF",
                             	"", "", "", "", "", "NNF", "NNNNWWWF",
                             	"", "", "", "WNNF", "WNNNF", "WNNNWF", "NNNNWWF",
                             	"", "", "", "WNF", "NNNF", "NNNNF", "NNNNWF",
                             	"", "", "ENF", "ENNF", "ENNF", "NNNWWWWF", "NNNWWWWF"};

// Offset MapsNNNWWH
// X Offsets followed by Y offsets
float offsets[NUMBEROFOFFSETS][MAPSIZE][MAPSIZE] = {
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        -0.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,

        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.1, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.1, 0.0, 0.0, 0.0, 0.0,
        0.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0
};

// Sets a waypoint at coordinates x & y
void gohere(int x, int y, MoveBaseClient &ac)
{
   // Sets up waypoint stuff
    move_base_msgs::MoveBaseGoal goal;
    goal.target_pose.header.frame_id = "map";
    goal.target_pose.header.stamp = ros::Time::now();

   // Waypoint coordinates
    goal.target_pose.pose.position.x = (float)x*0.3048*2+0.3048 + offsets[x_offsets][x][y];
    goal.target_pose.pose.position.y = (float)y*0.3048*2+0.3048 + offsets[y_offsets][x][y];
    goal.target_pose.pose.orientation.w = 1.0;

    // Sets Waypoint
    ac.sendGoal(goal);
    ac.waitForResult();

    // Sends waypoint information to ROSINFO
    if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED);
        //ROS_INFO("Moved to %d,%d",x,y);
    else
        ROS_ERROR("Could not reach waypoint");
}

// Sets a waypoint at coordinates x & y
// Also sets a direction
void gohere2(int x, int y, float z, MoveBaseClient &ac)
{
    // Sets up waypoint stuff
    move_base_msgs::MoveBaseGoal goal;
    goal.target_pose.header.frame_id = "map";
    goal.target_pose.header.stamp = ros::Time::now();

    // Waypoint coordinates
    goal.target_pose.pose.position.x = (float)x*0.3048*2+0.3048 + offsets[x_offsets][x][y];
    goal.target_pose.pose.position.y = (float)y*0.3048*2+0.3048 + offsets[y_offsets][x][y];
    goal.target_pose.pose.orientation.z = z;
    goal.target_pose.pose.orientation.w = 1.0;

    // Sets Waypoint
    ac.sendGoal(goal);
    ac.waitForResult();

    // Sends waypoint information to ROSINFO
    if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED);
        //ROS_INFO("Moved to %d,%d",x,y);
    else
        ROS_ERROR("Could not reach waypoint");
}

// Global x & y
int global_x = 0, global_y = 0;

// Return x & y
int return_x, return_y;

// Callback when mines is found
void grabber_callback(std_msgs::Empty msg)
{
    maps = 1;
    mines++;
    ROS_WARN("Found Mine At %d'',%d''",global_x*2+1,global_y*2+1);
    ROS_WARN("%d Mines Found",mines);
    ROS_WARN("%d Mines Remaining",6-mines);

    //Half second delay may be enough?
    ros::Duration(2.5).sleep();
    return_x = global_x;
    return_y = global_y;
}

int main(int argc, char** argv)
{
    ROS_INFO("Challenge Start");

    // Velocity publisher setup
    ros::init(argc, argv, "cmd_vel_publisher_node");
    ros::NodeHandle nh;
    ros::Publisher vel_pub = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1);
    geometry_msgs::Twist vel_msg;

    // Dropper publisher setup
    ros::init(argc, argv, "dropper_publisher_node");
    ros::NodeHandle nd;
    ros::Publisher dropper_pub = nd.advertise<std_msgs::Empty>("dropper", 1);
    std_msgs::Empty flag;

    // Limit switch subscriber setup
    ros::init(argc, argv, "limit_switch_subscriber_node");
    ros::NodeHandle nl;
    ros::Subscriber limit_switch_sub = nl.subscribe("grabber", 1000, grabber_callback);

    // Rate setup
    ros::Rate rate(0.5);

    // Ttell the action client that we want to spin a thread by default
	MoveBaseClient ac("move_base", true);

	// Wait for the action server to come up
	while(!ac.waitForServer(ros::Duration(5.0)))
	{
		ROS_INFO("Waiting for the move_base action server to come up");
	}

    //Main loop
    for(;;){

	//Debug for checking odom movement

	/*
	vel_msg.linear.x = -1;
        vel_pub.publish(vel_msg);
        //Half second delay may be enough?
        ros::Duration(2.0).sleep();
        vel_msg.linear.x = 0;
	*/

	// Local integers to represents x and y coordinates
        int x = global_x, y = global_y;

	// Set local goal variables
	int goal_x = x, goal_y = y;

	// Correctly addresses return matrix
	if(maps == 2)
	{
		x = return_x;
		y = return_y;
	}	

        // Loop to go through string
        for(int i = 0; map[maps][x][y][i] != '\0';i++)
	{
            // Switch to convert cardinal direction in string into coordinate change
            switch(map[maps][x][y][i]){

                case 'E':
                    //Move position one east
		    ROS_INFO("Moving east");
                    goal_x++;
                    break;
                case 'W':
                    //Move position one west
                    ROS_INFO("Moving west");
                    goal_x--;
                    break;
                case 'N':
                    //Move position one north
                    ROS_INFO("Moving north");
                    goal_y++;
                    break;
                case 'S':
                    ROS_INFO("Moving south");
                    //Move position one south
                    goal_y--;
                    break;
                case 'e':
                    //Move position two east
                    ROS_INFO("Moving through wildlife");
                    goal_x+=2;
		    break;
                case 'w':
                    //Move position two west
                    ROS_INFO("Moving through wildlife");
                    goal_x-=2;
		    break;
                case 'R':
                    // Go to mine dropoff			
                    gohere2(6, 0, -PI/2, ac);
 

		    // Drop Mine
		    ROS_INFO("Dropped Mine");
                    dropper_pub.publish(flag);
                    ros::Duration(2.5).sleep();

		    if(mines == 6)
		    {
			goto end;
		    }

                    //Reverse for 2 seconds
                    vel_msg.linear.x = -0.2;
                    vel_pub.publish(vel_msg);
                    ros::Duration(2).sleep();

		    //Stop & Recallibrate
                    vel_msg.linear.x = 0;
                    vel_pub.publish(vel_msg);
		    ros::Duration(2).sleep();

		    ROS_INFO("Returning to %d,%d",return_x,return_y);
                    gohere(5, 2, ac);
                    maps = 2;
                    break;
                case 'H':
                    //Orients robot
                    gohere2(x, y, PI/2, ac);

                    //Move position one north
                    goal_y++;

                    //Move Foward
                    vel_msg.linear.x = 0.1;
                    vel_pub.publish(vel_msg);
                    ros::Duration(2.0).sleep();

                    //Stop
                    vel_msg.linear.x = 0;
                    vel_pub.publish(vel_msg);

                    break;
                case 'h':
                    //Back up
                    goal_y--;
                    vel_msg.linear.x = -0.1;
                    vel_pub.publish(vel_msg);
                    ros::Duration(2.0).sleep();

	            //Stop
                    vel_msg.linear.x = 0;
                    vel_pub.publish(vel_msg);
                    break;
                case 'F':
		    //Change Map to fowards map
                    maps = 0;
		    ROS_INFO("Continuing to find new mines");
                    break;
		case 'M':
		    //Move Foward
                    vel_msg.linear.x = 0.1;
                    vel_pub.publish(vel_msg);
                    ros::Duration(1.0).sleep();

                    //Stop
                    vel_msg.linear.x = 0;
                    vel_pub.publish(vel_msg);
		    break;
                default:
                    ROS_ERROR("Unrecognized Instruction\n");
                    break;

            	}
            //Go to decided on location
            gohere(goal_x, goal_y , ac);
	    global_x = goal_x;
	    global_y = goal_y;
            ros::spinOnce();
        }
    }

    end:
    ROS_INFO("All mines returned");
    ros::Duration(5.0).sleep();
    return 0;
}

