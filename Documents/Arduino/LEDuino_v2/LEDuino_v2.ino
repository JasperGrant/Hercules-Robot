// ---------------------------------------------------------------- //
// Arduino Ultrasoninc Sensor HC-SR04
// Re-writed by Arbi Abdul Jabbaar
// Using Arduino IDE 1.8.7
// Using HC-SR04 Module
// Tested on 17 September 2019
// ---------------------------------------------------------------- //

#define eFar 4 // attach pin D2 Arduino to pin Echo of HC-SR04
#define eClose 3 // attach pin D2 Arduino to pin Echo of HC-SR04
#define trigPin 2 //attach pin D3 Arduino to pin Trig of HC-SR04
#define LED 13

// defines variables
long duration; // variable for the duration of sound wave travel
double dClose; // variable for the distance measurement
double dFar; // variable for the distance measurement


void setup() {
  pinMode(trigPin, OUTPUT); // Sets the trigPin as an OUTPUT
  pinMode(eClose, INPUT); // Sets the echoPin as an INPUT
  pinMode(eFar, INPUT); // Sets the echoPin as an INPUT
  pinMode(LED, OUTPUT);

  Serial.begin(9600); // // Serial Communication is starting with 9600 of baudrate speed
  Serial.println("Ultrasonic Sensor HC-SR04 Test"); // print some text in Serial Monitor
  Serial.println("with Arduino UNO R3");
}
void loop() {
  // Clears the trigPin condition
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  // Sets the trigPin HIGH (ACTIVE) for 10 microseconds
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  // Reads the echoPin, returns the sound wave travel time in microseconds
  duration = pulseIn(eClose, HIGH, 10000);
  // Calculating the distance
  dClose = duration * 0.034 / 2 / 2.54; // Speed of sound wave divided by 2 (go and back)
  // Displays the distance on the Serial Monitor

  // Clears the trigPin condition
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  // Sets the trigPin HIGH (ACTIVE) for 10 microseconds
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  // Reads the echoPin, returns the sound wave travel time in microseconds
  duration = pulseIn(eFar, HIGH, 10000);
  // Calculating the distance
  dFar = duration * 0.034 / 2 /2.54; // Speed of sound wave divided by 2 (go and back)
  // Displays the distance on the Serial Monitor


  if ((dFar == 0) && (dClose != 0))
    digitalWrite(LED, HIGH);
  else
    digitalWrite(LED,LOW);
    
  Serial.print("Distance: ");
  Serial.print(dClose);
  Serial.print(" in ");
  Serial.print("Distance: ");
  Serial.print(dFar);
  Serial.println(" in");

  delay(1000);
}

getDist(int 
