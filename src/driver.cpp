
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
#include <cstdlib>

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

float pitchOffset,rollOffset;

bool dryrun = false;


float getRoll(RTIMU *imu) {
	RTIMU_DATA imuData = imu->getIMUData();

	return imuData.fusionPose.x() - rollOffset;
}

float getPitch(RTIMU *imu) {
	RTIMU_DATA imuData = imu->getIMUData();

	return imuData.fusionPose.z() - pitchOffset;
}


float getRightwardVelocity(RTIMU *imu) {

	return imu->getAccelResiduals().x();
}

float getForwardVelocity  (RTIMU *imu) {


	return imu->getAccelResiduals().z();

	return 0;
}









void setOffsets(RTIMU* imu) {
	std::cout << "Doing offset calibration, place on flat surface" << std::endl;

	pitchOffset = getPitch(imu);
	rollOffset = getRoll(imu);



}


RTIMU* setup() {



	RTIMUSettings *settings = new RTIMUSettings("RTIMULib");

	imu = RTIMU::createIMU(settings);


	setOffsets(imu);
	if ((imu == NULL) || (imu->IMUType() == RTIMU_TYPE_NULL)) {
		printf("No IMU found\n");
		exit(1);
	}


	imu->IMUInit();
	imu->setSlerpPower(0.02);
	imu->setGyroEnable(true);
	imu->setAccelEnable(true);

	gpioInitialise();
	for(int motor : motors)
		gpioSetMode(motor, PI_OUTPUT);

	return imu;
}






float rollCorrectionAngle(RTIMU *imu) {
	return std::abs(8/getRightwardVelocity(imu));
}

float pitchCorrectionAngle(RTIMU *imu) {
	return std::abs(8/getForwardVelocity(imu));
}


float rollCorrectionWidth(RTIMU *imu) {
	int maxThrottle = 	1750;
	int minThrottle = 	1100;
	int range       =	maxThrottle - minThrottle;
	float onepercent  =	range / 100;

	float percentReductionPerSecond = getRoll(imu) / rollCorrectionAngle(imu);
	return (percentReductionPerSecond * onepercent);
}

float pitchCorrectionWidth(RTIMU *imu) {
	int maxThrottle =       1750;
	int minThrottle =       1100;
	int range       =       maxThrottle - minThrottle;
	float onepercent  =     range / 100;

	float percentReductionPerSecond = getPitch(imu) / pitchCorrectionAngle(imu);
	return (percentReductionPerSecond * onepercent);
}


int pwm1 = 1100;
int pwm2 = 1100;
int pwm3 = 1100;
int pwm4 = 1100;


void loopStable(RTIMU *imu) {

	if(std::abs(getRoll(imu)) >= std::abs(getRightwardVelocity(imu)) + 0.3) {
		while(std::abs(getRoll(imu)) >= rollCorrectionAngle(imu)) {
			pwm1 = pwm1 - rollCorrectionWidth(imu);
			pwm4 = pwm4 - rollCorrectionWidth(imu);
		}
	}
	if(std::abs(getPitch(imu)) >= std::abs(getForwardVelocity(imu)) + 0.3) {
		while(std::abs(getPitch(imu)) >= pitchCorrectionAngle(imu)) {
			pwm1 = pwm1 - pitchCorrectionWidth(imu);
			pwm3 = pwm3 - pitchCorrectionWidth(imu);
		}
	}


	if(!dryrun) { 
		drone::sendPWM(MOTOR_1, pwm1);
		drone::sendPWM(MOTOR_2, pwm2);
		drone::sendPWM(MOTOR_3, pwm3);
		drone::sendPWM(MOTOR_4, pwm4);

	}
	else {
		std::cout << "Motor 1: " << pwm1 << std::endl;
		std::cout << "Motor 2: " << pwm2 << std::endl;
		std::cout << "Motor 3: " << pwm3 << std::endl;
		std::cout << "Motor 4: " << pwm4 << std::endl;
		std::cout << "Roll: " << std::abs(getRoll(imu)) << std::endl;
		std::cout <<  "Rightward velocity + 0.3: " << std::abs(getRightwardVelocity(imu) + 0.3) << std::endl;
		std::cout << "Roll correction width: " << rollCorrectionWidth(imu) << std::endl;




	}





	usleep(imu->IMUGetPollInterval() * 1000);


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




int main ( ) {
	while(true) {
		loopManual();
	}
}



