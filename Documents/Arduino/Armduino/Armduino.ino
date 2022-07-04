//ROS Libraries
#include <ros.h>
#include <std_msgs/UInt8.h>

//PINOUT
#define L1 1
#define L2 2
#define L3 3

#define ARMS 4
#define LED 5

//Variables
bool holdingMine = false;

//Functions
bool mineDetected();
void dropMine();
void grabMine();

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
  int_msg = 1;

  //LED Setup
  tone(LED,4000);
}

void loop ()
{  
  //Grabs mine if detected
  if (!holdingMine)
  {
    if (mineDetected())
    {
      holdingMine = grabMine();
    }
  }

  //END LOOP
  nh.spinOnce();
  delay(1000);
}

void dropMine()
{
  digitalWrite(ARMS, LOW);
  delay(5000);
  holdingMine = false;
  return;
}

void grabMine()
{
  digitalWrite(ARMS, HIGH);
  detector.publish(&int_msg);
  holdingMine = true;
  return;
}

//Returns true if a mine is detected
//Returns false if a mine is not detected
bool mineDetected()
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
