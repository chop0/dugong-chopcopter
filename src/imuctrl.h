/* Please not we do not need the RTIMU includes because the imu.h already has them */

#include "RTIMULib.h"
#include "RTIMUMagCal.h"
#include "RTIMUAccelCal.h"



namespace imuctrl {

static RTIMUSettings *settings;
static RTIMU_DATA imuData;
static RTIMU *imu;
static RTIMUMagCal *magCal;
static RTIMUAccelCal *accelCal;
static bool magMinMaxDone;
static bool accelEnables[3];
static int accelCurrentAxis;
bool mustExit;

void doMagMinMaxCal();
void doMagEllipsoidCal();
void processEllipsoid();
void doAccelCal();
void newIMU();
bool pollIMU();
char getUserChar();
void displayMenu();
void displayMagMinMax();
void displayMagEllipsoid();
void displayAccelMinMax();


void init() {
	char *settingsFile;

	settingsFile = (char *)"RTIMULib";;
	printf("init() - using %s.ini\n", settingsFile);

        settings = new RTIMUSettings(settingsFile);

        mustExit = false;
        imu = NULL;
        newIMU();
}

void init(char *settingsFile) {
        printf("imuInterface() - using %s.ini\n", settingsFile);

	settings = new RTIMUSettings(settingsFile);

       	mustExit = false;
        imu = NULL;
        newIMU();
}


void newIMU()
{
    if (imu != NULL)
        delete imu;

    imu = RTIMU::createIMU(settings);

    if ((imu == NULL) || (imu->IMUType() == RTIMU_TYPE_NULL)) {
        printf("No IMU found\n");
        exit(1);
    }

    //  set up IMU

    imu->IMUInit();
}

}

