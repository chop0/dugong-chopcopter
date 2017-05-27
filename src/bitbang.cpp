#include <pigpio.h>
#include "bitbang.h"



void drone::sendPWM ( int pin, int width ) { // Function assumes that expected frequency is 50 Hertz. Also we are bit-banging no matter what.
     gpioServo(pin, width);
}


