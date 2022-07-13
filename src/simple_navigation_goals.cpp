#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <geometry_msgs/Twist.h>
//#include <geometry_msgs/PolygonStamped.h>
#include <std_msgs/Empty.h>

#define PI 3.1415926


#define MAXSTRINGLEN 20
#define MAPSIZE 7
#define NUMBEROFMAPS 3
#define NUMBEROFOFFSETS 2
#define x_offsets 0
#define y_offsets 1


typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

//Define map structure
//Note: mine map is flipped 90 degrees clockwise from what you would expect.
char map[NUMBEROFMAPS][MAPSIZE][MAPSIZE][MAXSTRINGLEN] = {
								"N", "E", "E", "S", "S", "N", "E",
                               	"", "E", "N", "M", "W", "W", "SEE",
                               	"", "N", "N", "N", "W", "W", "S",
                               	"", "", "", "", "", "M", "W",
                               	"", "", "", "N", "N", "E", "W",
                               	"", "", "", "M", "S", "N", "W",
                               	"", "", "N", "N", "W", "", "",
                                      "", "E", "N", "N", "E", "E", "S",
                                      "", "E", "W", "N", "E", "E", "S",
                                      "", "N", "e", "S", "S", "N", "E",
                                      "", "", "", "", "", "E", "E",
                                      "", "", "E", "S", "S", "S", "S",
                                      "", "", "R", "S", "E", "S", "S",
                                      "", "", "W", "S", "S", "", "",
                             	"", "WwNF", "WwNNWWSSEF", "WwNNWWSSF", "WwNNWWSF", "NNNWWH", "NNNWWH",
                             	"", "WwNF", "WwNNWSF", "EF", "WwNNWWF", "NNNWWH", "NNNWWH",
                             	"", "WwNF", "WwNF", "WwNNF", "WwNNWF", "NNNNWWWSWF", "NNNNWWWSF",
                             	"", "", "", "", "", "ENNF", "NNNNWWWF",
                             	"", "", "", "WNNF", "WNNNF", "NNNF", "NNNNWWF",
                             	"", "", "", "WNF", "NF", "NNNNF", "NNNNWF",
                             	"", "", "ENF", "ENNF", "ENNWF", "NNNWWWWF", "NNNWWWWF"};

//X array is offsets[0], Y array is offsets[1]
float offsets[NUMBEROFOFFSETS][MAPSIZE][MAPSIZE] = {
        0.0, 0.0, 0.0, 0.0, -0.1, 0.0, 0.0,
        0.0, 0.1, 0.0, 0.0, -0.1, 0.0, 0.0,
        0.0, 0.1, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,

        0.0, 0.1, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.1, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.1, 0.1, 0.1, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0
};

int maps = 0;

//Sets a waypoint at coordinates x & y
void gohere(int x, int y, MoveBaseClient &ac)
{
	//Sets up waypoint stuff
    move_base_msgs::MoveBaseGoal goal;
    goal.target_pose.header.frame_id = "map";
    goal.target_pose.header.stamp = ros::Time::now();

	//Waypoint coordinates
    goal.target_pose.pose.position.x = (float)x*0.3048*2+0.3048 + offsets[x_offsets][x][y];
    goal.target_pose.pose.position.y = (float)y*0.3048*2+0.3048 + offsets[y_offsets][x][y];
    goal.target_pose.pose.orientation.w = 1.0;

	//Sets Waypoint
    ac.sendGoal(goal);
    ac.waitForResult();

	//Sends waypoint information to ROSINFO
    if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
        ROS_INFO("Moved to %d,%d",x,y);
    else
        ROS_INFO("Could not reach waypoint");
}

//Sets a waypoint at coordinates x & y
void gohere2(int x, int y, int z, MoveBaseClient &ac)
{
	//Sets up waypoint stuff
    move_base_msgs::MoveBaseGoal goal;
    goal.target_pose.header.frame_id = "map";
    goal.target_pose.header.stamp = ros::Time::now();

	//Waypoint coordinates
    goal.target_pose.pose.position.x = (float)x*0.3048*2+0.3048 + offsets[x_offsets][x][y];
    goal.target_pose.pose.position.y = (float)y*0.3048*2+0.3048 + offsets[y_offsets][x][y];
    goal.target_pose.pose.orientation.z = z;
    goal.target_pose.pose.orientation.w = 1.0;

	//Sets Waypoint
    ac.sendGoal(goal);
    ac.waitForResult();

	//Sends waypoint information to ROSINFO
    if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
        ROS_INFO("Moved to %d,%d",x,y);
    else
        ROS_INFO("Could not reach waypoint");
}

//Global x & y
int global_x = 0, global_y = 0;

//Return x & y
int return_x, return_y;

void grabber_callback(std_msgs::Empty msg)
{
    maps = 1;
    //Transform to long form
    //footprint = [[0,0], [0,0], [0,0], [0,0]];
    //foot_pub.publish(footprint);
    ROS_INFO("Found mine at %d,%d",global_x,global_y);
    //Half second delay may be enough?
    ros::Duration(0.5).sleep();
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
/*
    //Footprint publisher setup
    ros::init(argc, argv, "footprint_publisher_node");
    ros::NodeHandle nf;
    ros::Publisher foot_pub = nf.advertise<geometry_msgs::PolygonStamped>("/move_base/local_costmap/footprint");
    geometry_msgs::PolygonStamped footprint;
*/
    //Limit switch subscriber setup
    ros::init(argc, argv, "limit_switch_subscriber_node");
    ros::NodeHandle nl;
    ros::Subscriber limit_switch_sub = nl.subscribe("grabber", 1000, grabber_callback);

    //Rate setup
    ros::Rate rate(0.5);

    //tell the action client that we want to spin a thread by default
	MoveBaseClient ac("move_base", true);

    //Initialize in proper form
    //footprint = [[0,0], [0,0], [0,0], [0,0]];
    //foot_pub.publish(footprint);

	//wait for the action server to come up
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
                case 'e':
                    //Move position two east
                    goal_x+=2;
		    break;
                case 'w':
                    //Move position two west
                    goal_x-=2;
		    break;
                case 'R':
                    //Go to mine dropoff			
                    gohere(0, 6, ac);

		    //Drop Mine
		    ROS_INFO("Dropped Mine");
                    dropper_pub.publish(flag);
                    ros::Duration(1.5).sleep();

                    //Reverse for 2 seconds
                    vel_msg.linear.x = -0.2;
                    vel_pub.publish(vel_msg);
                    ros::Duration(2).sleep();

		    //Stop & Recallibrate
                    vel_msg.linear.x = 0;
                    vel_pub.publish(vel_msg);
		    ros::Duration(2).sleep();

		    ROS_INFO("Returning to %d,%d",return_x,return_y);
                    maps = 2;
                    break;
                case 'H':
                    //Move position one north
                    goal_y++;
                    //Attempts to collect mine in hallway
                    vel_msg = 0.1;
                    vel_pub.publish(vel_msg);
                    ros::Duration(2.0).sleep();
                    vel_msg = 0;
                    vel_pub.publish(vel_msg);

                    break;
                case 'h':
                    //Move position one north
                    goal_y--;
                    vel_msg = 0.-1;
                    vel_pub.publish(vel_msg);
                    ros::Duration(2.0).sleep();
                    vel_msg = 0;
                    vel_pub.publish(vel_msg);
                    break;
                case 'F':
		    //Change Map to fowards map
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

