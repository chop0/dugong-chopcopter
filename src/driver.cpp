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

float pitchOffset,rollOffset;


float getRoll(RTIMU *imu) {
	RTIMU_DATA imuData = imu->getIMUData();

	return imuData.fusionPose.x() - rollOffset;
}

float getPitch(RTIMU *imu) {
	RTIMU_DATA imuData = imu->getIMUData();

	return imuData.fusionPose.z() - pitchOffset;
}


float getRightwardVelocity(RTIMU *imu) {
	RTIMU_DATA imuData = imu->getIMUData();

	return imuData.accel.x();
}

float getForwardVelocity  (RTIMU *imu) {

	RTIMU_DATA imuData = imu->getIMUData();

	return imuData.accel.z();

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


void loopStable(RTIMU *imu) {
	/* Stabalize roll */
	if(std::abs(getRoll(imu)) >= std::abs(8/getRightwardVelocity(imu))) {
		while(std::abs(getRoll(imu)) >= rollCorrectionAngle(imu)) {
			drone::sendPWM ( MOTOR_1, drone::getPWM(MOTOR_1) - rollCorrectionWidth(imu));
			drone::sendPWM ( MOTOR_4, drone::getPWM(MOTOR_4) - rollCorrectionWidth(imu));
			sleep_for(seconds(1));
		}
	}

	if(std::abs(getPitch(imu)) >= std::abs(8/getForwardVelocity(imu))) {
		while(std::abs(getPitch(imu)) >= pitchCorrectionAngle(imu)) {
			drone::sendPWM ( MOTOR_1, drone::getPWM( MOTOR_1 ) - pitchCorrectionWidth(imu));
			drone::sendPWM ( MOTOR_3, drone::getPWM( MOTOR_3 ) - pitchCorrectionWidth(imu));
			sleep_for(seconds(1));
		}
	}
	usleep(imu->IMUGetPollInterval() * 1000);


}





int main ( ) {
	RTIMU* imu = setup();

	while (true) {}
}



