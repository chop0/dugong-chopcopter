#include <string>
#include <pigpio.h>
#include "bitbang.h"
#include <iostream>
#include <sstream>
#include <unistd.h>
#include "getch.h"
#include <string>
#include <list>

#define MOTOR_1 23
#define MOTOR_2 24
#define MOTOR_3 17
#define MOTOR_4 18
std::list<int> motors = {MOTOR_1, MOTOR_2, MOTOR_3, MOTOR_4};

#define SSTR( x ) static_cast< std::ostringstream & >( \
        ( std::ostringstream() << std::dec << x ) ).str()



void setup() {
	gpioInitialise();
	for(const auto& motor : motors) {
		gpioSetMode(motor, PI_OUTPUT);
		drone::sendPWM(motor, 1100);
	}
}

void loop() {

std::string line;

std::getline(std::cin, line); // Blocks until something interesting comes into stdin.


//switch(getch()) { // Using newer, less obsolete method which doesn't require system calls now
if(line[0] > -1) {

switch(line[0]) {
	case '1':
		std::getline(std::cin, line);
		drone::sendPWM ( MOTOR_1, std::stoi(line) );
		break;
	case '2':
                std::getline(std::cin, line);
		drone::sendPWM ( MOTOR_2, std::stoi(line) );
		break;
	case '3':
                std::getline(std::cin, line );
		drone::sendPWM ( MOTOR_3, std::stoi(line) );
		break;
	case '4':
                std::getline(std::cin, line);
		drone::sendPWM ( MOTOR_4, std::stoi(line) );
		break;
	default:
		if(line == "leftright") {
		std::getline(std::cin, line);
		drone::appendPWM(MOTOR_2, std::stoi(line));
		drone::appendPWM(MOTOR_3, std::stoi(line));
		}
		break;
}
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


