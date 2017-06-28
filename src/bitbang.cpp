#include <pigpio.h>
#include "bitbang.h"


void drone::appendPWM ( int pin, int width )  {
	drone::sendPWM(pin, gpioGetServoPulsewidth(pin) + width); // Adds to current width to increase or decrease rather than set
}

void drone::sendPWM ( int pin, int width ) { // Function assumes that expected frequency is 50 Hertz. Also we are bit-banging no matter what.
	gpioServo(pin, width);
}


float drone::getPWM(int pin) {
	gpioGetServoPulsewidth(pin);
}
