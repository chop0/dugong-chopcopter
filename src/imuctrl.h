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
static bool mustExit;

static void doMagMinMaxCal();
static void doMagEllipsoidCal();
static void processEllipsoid();
static void doAccelCal();
static void newIMU();
static bool pollIMU();
static char getUserChar();
static void displayMenu();
static void displayMagMinMax();
static void displayMagEllipsoid();
static void displayAccelMinMax();


static void init() {
	char *settingsFile;

	settingsFile = (char *)"RTIMULib";;
	printf("init() - using %s.ini\n", settingsFile);

        settings = new RTIMUSettings(settingsFile);

        mustExit = false;
        imu = NULL;
        newIMU();
}

static void init(char *settingsFile) {
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

