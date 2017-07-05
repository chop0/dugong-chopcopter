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
#include <cmath>
#include <chrono>
#include <thread>


using namespace std::this_thread;
using namespace std::chrono;

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

float getRoll(RTIMU *imu) {
	return 0;
}

float getPitch(RTIMU *imu) {
	return 0;
}


float getRightwardVelocity(RTIMU *imu) {
	return 0;
}

void setup() {

	RTIMUSettings *settings = new RTIMUSettings("RTIMULib");

	RTIMU *imu = RTIMU::createIMU(settings);



	if ((imu == NULL) || (imu->IMUType() == RTIMU_TYPE_NULL)) {
		printf("No IMU found\n");
		exit(1);
	}


        imu->IMUInit();
        imu->setSlerpPower(0.02);
        imu->setGyroEnable(true);
        imu->setAccelEnable(true);

	gpioInitialise();
	for(const auto& motor : motors) {
		gpioSetMode(motor, PI_OUTPUT);
		drone::sendPWM(motor, 1100);
	}
}

void loopManual() {

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


float rollCorrectionAngle(RTIMU *imu) {
	return std::abs(8/getRightwardVelocity(imu));
}

float rollCorrectionWidth(RTIMU *imu) {
	int maxThrottle = 	1750;
	int minThrottle = 	1100;
	int range       =	maxThrottle - minThrottle;
	float onepercent  =	range / 100;

	float percentReductionPerSecond = getRoll(imu) / rollCorrectionAngle(imu);
	return (percentReductionPerSecond * onepercent);
}

void loopStable(RTIMU *imu) {
	/* Stabalize roll */
	if(std::abs(getRoll(imu)) >= std::abs(8/getRightwardVelocity(imu))) {
		while(std::abs(getRoll(imu)) >= rollCorrectionAngle(imu)) {
			drone::sendPWM ( MOTOR_1, drone::getPWM(MOTOR_1) - rollCorrectionWidth(imu));
			drone::sendPWM ( MOTOR_3, drone::getPWM(MOTOR_3) - rollCorrectionWidth(imu));
			sleep_for(seconds(1));
		}
	}
}





int main ( ) {
	setup();
	testIMU();
	while (true) {
	//	loopManual();
	}

/*
	   gpioInitialise();
	   gpioSetMode(18, PI_OUTPUT);
	   drone::sendPWM ( 18, 1500);
	   while (true); // Keep running until terminated
*/
}


