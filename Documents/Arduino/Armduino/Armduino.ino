//Newcode
//Andrew Doucet
//Runs motors and stuff

//ROS Libraries
#include <ros.h>
#include <std_msgs/Empty.h>

//Pinout
#define L1 2
#define L2 3
#define L3 4
#define ARMS 5
#define EMIT 6
#define LED 13

#define DROP_DELAY 5000

//Variables
bool holding = false;

//Functions
bool detected();
void grab();
void drop(const std_msgs::Empty&);

//ROS Nodes
ros::NodeHandle nh;
std_msgs::Empty msg;
ros::Publisher pub("grabber", &msg);
ros::Subscriber<std_msgs::Empty> sub("dropper", &drop );

void setup()
{
  //Limit Switches
  pinMode(L1, INPUT_PULLUP);
  pinMode(L2, INPUT_PULLUP);
  pinMode(L3, INPUT_PULLUP);

  //Output Pins
  pinMode(ARMS, OUTPUT);
  pinMode(EMIT, OUTPUT);
  pinMode(LED, OUTPUT);

  //Node Initialization
  nh.initNode();
  nh.advertise(pub);
  nh.subscribe(sub);
  
  //EMITTER
  tone(EMIT,4000);
}

void loop()
{
  //Grabs mine if detected
  if (!holding)
  {
    if (detected())
    {
      grab();
    }
  }

  //END LOOP
  nh.spinOnce();
  delay(100);
}

//Returns true if a mine is detected
//Returns false if a mine is not detected
bool detected()
{
  bool detected = false;

  if (digitalRead(L1)==LOW)
  {
    detected = true;
  }

  if (digitalRead(L2)==LOW)
  {
    detected = true;
  }

  if (digitalRead(L3)==LOW)
  {
    detected = true;
  }

  return detected;
}

//Grabs Mine
void grab()
{
  digitalWrite(ARMS, HIGH);
  digitalWrite(LED, HIGH);
  pub.publish(&msg);
  holding = true;
  return;
}

//Drop Mine
void drop(const std_msgs::Empty& toggle_msg)
{
  digitalWrite(ARMS, LOW);
  digitalWrite(LED, LOW);
  delay(DROP_DELAY);
  holding = false;
  return;  
}
