#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <stdlib.h>
#include <math.h>

#define PI 3.1415926

#define MAXLEN 6

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

void gohere(COORD * coord, MoveBaseClient &ac)
{
	move_base_msgs::MoveBaseGoal goal;
	goal.target_pose.header.frame_id = "map";
	goal.target_pose.header.stamp = ros::Time::now();

	goal.target_pose.pose.position.x = coord->x;
	goal.target_pose.pose.position.y = coord->y;

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
//Note: mine map is flipped to the right from what you would expect.
char forwards_map[7][7][MAXLEN] = {" ", " ", " ", " ", " ", " ", " ",
                               " ", " ", " ", " ", " ", " ", " ",
                               " ", " ", " ", " ", " ", " ", " ",
                               " ", " ", " ", " ", " ", " ", " ",
                               " ", " ", " ", " ", " ", " ", " ",
                               " ", " ", " ", " ", " ", " ", " ",
                               " ", " ", " ", " ", " ", " ", " ",

};

char backwards_map[7][7][MAXLEN] = {" ", " ", " ", " ", " ", " ", " ",
                                  " ", " ", " ", " ", " ", " ", " ",
                                  " ", " ", " ", " ", " ", " ", " ",
                                  " ", " ", " ", " ", " ", " ", " ",
                                  " ", " ", " ", " ", " ", " ", " ",
                                  " ", " ", " ", " ", " ", " ", " ",
                                  " ", " ", " ", " ", " ", " ", " ",

};

struct coordinate{
    int x;
    int y;
    struct coordinate *next;
} typedef COORD;

struct mempool{
    struct coordinate *head;
    struct coordinate *tail;
} typedef MEMPOOL;

COORD *new_coordinate(void){
    //Allocate memory
    COORD *new_coord = (COORD *)calloc(1, sizeof(COORD));
    //Zero components of coord
    new_coord->x = 0;
    new_coord->y = 0;
    //Return new zeroed coordinate
    return new_coord;
}

MEMPOOL *new_mempool(void){
    //Allocate memory
    MEMPOOL *new_mempool = (MEMPOOL *) calloc(1, sizeof(MEMPOOL));
    //Make NULL pointers
    new_mempool->head = NULL;
    new_mempool->tail = NULL;
    //Return NULLed linked list
    return new_mempool;

}


COORD *closest(COORD * coord, char c){
    //Define return result
    COORD *result = new_coordinate();
    //Float to tell distance from a mine
    float min = 20, distance;
    //For each square
    for(int X = 0; X<7; X++){
        for(int Y = 0; Y<7; Y++){
            //If mine
            if(mine_map[X][Y] == c){
                distance = sqrt(((X-coord->x)*(X-coord->x)) + ((Y-coord->y)*(Y-coord->y)))
                //If closer to then previous min
                if(distance < min){
                    //Update result
                    min = distance;
                    result->x = X;
                    result->y = Y;
                }
            }
        }
    }
    //Ternary operator, if coordinate has not beeen changed no mine has been found so return NULL
    return (result->x == 0 || result->y == 0) ? (NULL) : (result);

}

//TODO: Find way to add current position

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

    //Define mine count as 0
    int mine_count = 0;
    //Main loop
    for(;;){
        for(int i = 0; ;)
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


