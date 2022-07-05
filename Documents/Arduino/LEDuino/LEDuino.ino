//ROS Libraries
#include <ros.h>
#include <std_msgs/UInt8.h>

//PINOUT
#define LED 13

//Functions
void dropMine();

//ROS NODE
ros::NodeHandle nh;

//PUBLISHER
std_msgs::UInt8 int_msg;
ros::Publisher detector("detector", &int_msg);

//SUSCRIBER
ros::Subscriber<std_msgs::UInt8> dropper("dropper", dropMine);

void setup()
{
  //Node Setup
  nh.initNode();
  nh.advertise(detector);
  nh.suscribe(dropper);
  int_msg = 69;
}

void loop ()
{  
  detector.publish(&int_msg);
  nh.spinOnce();
  delay(1000);
}

void dropMine()
{
  digitalWrite(LED, HIGH);
  delay(1000);
  digitalWrite(LED,LOW);
  return;
}
