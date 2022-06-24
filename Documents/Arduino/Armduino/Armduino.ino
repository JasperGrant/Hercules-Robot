/*
 * MotorKnob
 *
 * A stepper motor follows the turns of a potentiometer
 * (or other sensor) on analog input 0.
 *
 * http://www.arduino.cc/en/Reference/Stepper
 * This example code is in the public domain.
 */

#include <Stepper.h>

// change this to the number of steps on your motor
#define STEPS 220

#define L1 3
#define L2 4

// create an instance of the stepper class, specifying
// the number of steps of the motor and the pins it's
// attached to
Stepper stepper(STEPS, 9, 11, 10, 12);

void setup() 
{
  pinMode(L1,INPUT_PULLUP);
  pinMode(L2,INPUT_PULLUP);

  
  // set the speed of the motor to 30 RPMs
  stepper.setSpeed(100);
}

void loop() 
{
  if(digitalRead(L1) == LOW)
    stepper.step(1);
  if(digitalRead(L2) == LOW)
    stepper.step(-1);
}
