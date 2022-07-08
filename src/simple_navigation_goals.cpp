#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

#define PI 3.1415926


#define MAXSTRINGLEN 6
#define MAPSIZE 7
#define NUMBEROFMAPS 3

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

void gohere(int x, int y, MoveBaseClient &ac)
{
	move_base_msgs::MoveBaseGoal goal;
	goal.target_pose.header.frame_id = "map";
	goal.target_pose.header.stamp = ros::Time::now();

	goal.target_pose.pose.position.x = x;
	goal.target_pose.pose.position.y = y;

	goal.target_pose.pose.orientation.w = 1.0;
	ROS_INFO("Sending goal");

	ac.sendGoal(goal);
    //TODO: Find out way to make sure we are not skipping the new instruction inside this loop
	ac.waitForResult();
	
	if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
		ROS_INFO("Hooray, the base moved 1 meter forward");
	else
		ROS_INFO("The base failed to move forward 1 meter for some reason");
}
//Define map structure
//Note: mine map is flipped to the right from what you would expect.
char map[NUMBEROFMAPS][MAPSIZE][MAPSIZE][MAXSTRINGLEN] = {
          " ", " ", " ", " ", " ", " ", " ",
                               " ", " ", " ", " ", " ", " ", " ",
                               " ", " ", " ", " ", " ", "NSW", " ",
                               " ", " ", " ", " ", " ", " ", " ",
                               " ", " ", " ", " ", " ", " ", " ",
                               " ", " ", " ", " ", " ", " ", " ",
                               " ", " ", " ", " ", " ", " ", " ",
                                      " ", " ", " ", " ", " ", " ", " ",
                                      " ", " ", " ", " ", " ", " ", " ",
                                      " ", " ", " ", " ", " ", " ", " ",
                                      " ", " ", " ", " ", " ", " ", " ",
                                      " ", " ", " ", " ", " ", " ", " ",
                                      " ", " ", " ", " ", " ", " ", " ",
                                      " ", " ", " ", " ", " ", " ", " ",
                             " ", " ", " ", " ", " ", " ", " ",
                             " ", " ", " ", " ", " ", " ", " ",
                             " ", " ", " ", " ", " ", " ", " ",
                             " ", " ", " ", " ", " ", " ", " ",
                             " ", " ", " ", " ", " ", " ", " ",
                             " ", " ", " ", " ", " ", " ", " ",
                             " ", " ", " ", " ", " ", " ", " ",

};

enum map_choice{
    forwards, reversing, returning
};

//Enum to be swapped out to specify different maps
enum map_choice maps = forwards;


//TODO: Subsciber for position
//TODO: Subscriber for limit switches

void amcl_callback(geometry_msgs::Pose msg){
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
    ros::Nodehandle nd;
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

    //Local integers to represents x and y coordinates
    int x = 0, y = 0;

    //Main loop
    for(;;){
        //Loop to go through string
        for(int i = 0; map[maps][x][y][i] != '\0';i++){
            //Switch to convert cardinal direction in string into coordinate change
            switch(map[maps][x][y][i]){
                case 'E':
                    //Move position one east
                    x++;
                    break;
                case 'W':
                    //Move position one west
                    x--;
                    break;
                case 'N':
                    //Move position one north
                    y++;
                    break;
                case 'S':
                    //Move position one south
                    y--;
                    break;
                case 'R':
                    //Change map to return map
                    dropper_pub.Publish(flag);
                    maps = returning;
                default:
                    ROS_INFO("Unrecognized character in instruction string\n")
                    break;

            }
            //Go to decided on location
            gohere(x, y , ac);
            ros::spinonce();
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

/*mine_cb(empty msg){
 *  switch to backwards grid
 * }


