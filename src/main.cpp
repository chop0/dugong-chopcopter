#include <string>
#include <pigpio.h>
#include "bitbang.h"
#include <iostream>
#include <sstream>
#include <unistd.h>
#include <conio.h>


#define MOTOR_1 23
#define MOTOR_2 24
#define MOTOR_3 17
#define MOTOR_4 18

#define SSTR( x ) static_cast< std::ostringstream & >( \
        ( std::ostringstream() << std::dec << x ) ).str()



void setup() {
	gpioInitialise();
}

void loop() {
while(kbhit() == 0) {}

switch(getch()) {
	case "1":
		drone::sendPWM ( MOTOR_1, 1500 );
		break;
	case "2":
		drone::sendPWM ( MOTOR_2, 1500 );
		break;
	case "3":
		drone::sendPWM ( MOTOR_3, 1500 );
		break;
	case "4":
		drone::sendPWM ( MOTOR_4, 1500 );
		break;
}
}


int main ( ) {
	setup();
	while (true) {
	     loop();
	}

/*
        gpioInitialise();
        gpioSetMode(23, PI_OUTPUT);
        drone::sendPWM ( 23, 1500);
        while (true); // Keep running until terminated
*/
}


