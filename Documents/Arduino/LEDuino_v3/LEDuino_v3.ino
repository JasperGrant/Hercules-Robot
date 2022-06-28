// ---------------------------------------------------------------- //
// Arduino Ultrasoninc Sensor HC-SR04
// Re-writed by Arbi Abdul Jabbaar
// Using Arduino IDE 1.8.7
// Using HC-SR04 Module
// Tested on 17 September 2019
// ---------------------------------------------------------------- //


#include <ros.h> // library needed to use rosserial
#include <std_msgs/Int16.h> // Int16 standard message format

ros::NodeHandle nh; // create ROS node handle

std_msgs::Int16 sol_dist; // sol_thrust status variable
ros::Publisher p1("sol_dist", &sol_dist); // initialize p1 status publisher

#define echo 2 //attach pin D2 Arduino to pin Echo of HC-SR04
#define trig 3 //attach pin D3 Arduino to pin Trig of HC-SR04

// defines variables
long duration; // variable for the duration of sound wave travel
int dist; // variable for the distance measurement

void setup() 
{
  nh.getHardware()->setBaud(9600); // need to decrease baud rate for reduced buffer
  nh.initNode();                   // initialize ROS node handle
  nh.advertise(p1);                // initialize p1  publisher node handle
  
  pinMode(trig, OUTPUT); // Sets the trigPin as an OUTPUT
  pinMode(echo, INPUT); // Sets the echoPin as an INPUT

  //Serial.begin(9600); // // Serial Communication is starting with 9600 of baudrate speed
  //Serial.println("Ultrasonic Sensor HC-SR04 Test"); // print some text in Serial Monitor
  //Serial.println("with Arduino UNO R3");
}
void loop() {
  // Clears the trigPin condition
  digitalWrite(trig, LOW);
  delayMicroseconds(2);
  // Sets the trigPin HIGH (ACTIVE) for 10 microseconds
  digitalWrite(trig, HIGH);
  delayMicroseconds(10);
  digitalWrite(trig, LOW);
  // Reads the echoPin, returns the sound wave travel time in microseconds
  duration = pulseIn(echo, HIGH, 10000);
  // Calculating the distance
  dist = duration * 0.034 / 2; // Speed of sound wave divided by 2 (go and back)
  // Displays the distance on the Serial Monitor

  p1.publish(&sol_thrust);  

  //Serial.print("Distance: ");
  //Serial.print(dist);
  //Serial.println(" cm ");
}
