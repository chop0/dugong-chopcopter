#include <string>
#include <pigpio.h>
#include "bitbang.h"
#include <iostream>
#include <sstream>
#include <unistd.h>
#include "getch.h"
#include <string>
#include <list>
#include "imuctrl.h"

using namespace imuctrl;

#define MOTOR_1 23
#define MOTOR_2 24
#define MOTOR_3 17
#define MOTOR_4 18
std::list<int> motors = {MOTOR_1, MOTOR_2, MOTOR_3, MOTOR_4};

#define SSTR( x ) static_cast< std::ostringstream & >( \
        ( std::ostringstream() << std::dec << x ) ).str()

void testIMU() {
    int sampleCount = 0;
    int sampleRate = 0;
    uint64_t rateTimer;
    uint64_t displayTimer;
    uint64_t now;

    while (1) {
        //  poll at the rate recommended by the IMU

        usleep(imu->IMUGetPollInterval() * 1000);

        while (imu->IMURead()) {
            RTIMU_DATA imuData = imu->getIMUData();
            sampleCount++;

            now = RTMath::currentUSecsSinceEpoch();

            //  display 10 times per second

            if ((now - displayTimer) > 100000) {
                printf("Sample rate %d: %s\r", sampleRate, RTMath::displayDegrees("", imuData.fusionPose));
                fflush(stdout);
                displayTimer = now;
            }

            //  update rate every second

            if ((now - rateTimer) > 1000000) {
                sampleRate = sampleCount;
                sampleCount = 0;
                rateTimer = now;
            }
        }
    }
}

void setup() {
        imu->IMUInit();
        imu->setSlerpPower(0.02);
        imu->setGyroEnable(true);
        imu->setAccelEnable(true);

    RTIMUSettings *settings = new RTIMUSettings("RTIMULib");

    RTIMU *imu = RTIMU::createIMU(settings);

    if ((imu == NULL) || (imu->IMUType() == RTIMU_TYPE_NULL)) {
        printf("No IMU found\n");
        exit(1);
    }

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


