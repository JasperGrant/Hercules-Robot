//Arms
//By Andy

#include <Stepper.h>

// Number of Steps on motor
#define STEPS 100

//Stepper motors
Stepper arms(STEPS, 4,5,6,7);
Stepper lift(STEPS, 8,9,10,11);

void setup()
{
  arms.setSpeed(30);
  lift.setSpeed(30);
}

void loop() 
{

}
