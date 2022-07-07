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
char map[NUMBEROFMAPS][MAPSIZE][MAPSIZE][MAXSTRINGLEN] = {" ", " ", " ", " ", " ", " ", " ",
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
                             " ", " ", " ", " ", " ", " ", " ",
                             " ", " ", " ", " ", " ", " ", " ",

};

enum map_choice{
    forwards, reversing, returning
};

//TODO: Subsciber for position
//TODO: Subscriber for limit switches

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

    //Integers to represents x and y coordinates
    int x = 0, y = 0;
    //Enum to be swapped out to specify different maps
    enum map_choice maps = forwards;
    //Main loop
    for(;;){
        //Loop to go through string
        for(int i = 0; map[maps][x][y][i] != '\0';i++){
            //Switch to convert cardinal direction in string into coordinate change
            switch(){
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
                    maps = returning;
                    //Go to next iteration of loop without going anywhere
                    continue;
                default:
                    ROS_INFO("Unrecognized character in instruction string\n")
                    break;

            }
            //Go to decided on location
            gohere(x, y , ac);
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


