/**
 * @file       main.cpp
 * @author     Alec Petridis
 * @license    This project is released under the MIT License (MIT)
 * @copyright  Copyright (c) 2017 Alec Petridis
 * @date       May 2017
 * @brief
 */

//#define BLYNK_DEBUG
#define BLYNK_PRINT stdout
#ifdef RASPBERRY
  #include <BlynkApiWiringPi.h>
#else
  #include <BlynkApiLinux.h>
#endif
#include <BlynkSocket.h>
#include <BlynkOptionsParser.h>

#include <list>
#define MOTOR_1 1 // We are higher level, so not dealing with pin numbers.
#define MOTOR_2 2
#define MOTOR_3 3
#define MOTOR_4 4
std::list<int> motors = { MOTOR_1, MOTOR_2, MOTOR_3, MOTOR_4 };

static BlynkTransportSocket _blynkTransport;
BlynkSocket Blynk(_blynkTransport);

#include <BlynkWidgets.h>
#include <iostream>




BLYNK_WRITE(V5) // All motors on V5
{

for (const auto& motor : motors)
	std::cout << motor << std::endl << param[0].asStr() << std::endl;

}


BLYNK_WRITE(V1)
{
std::cout << MOTOR_1 << std::endl << param[0].asStr() << std::endl;
}

BLYNK_WRITE(V2)
{
std::cout << MOTOR_2 << std::endl << param[0].asStr() << std::endl;
}

BLYNK_WRITE(V3)
{
std::cout << MOTOR_3 << std::endl << param[0].asStr() << std::endl;
}

BLYNK_WRITE(V4)
{
std::cout << MOTOR_4 << std::endl << param[0].asStr() << std::endl;
}



void setup()
{

}

void loop()
{
  Blynk.run();
}


int main(int argc, char* argv[])
{
    const char *auth, *serv;
    uint16_t port;
    parse_options(argc, argv, auth, serv, port);

    Blynk.begin(auth, serv, port);

    setup();
    while(true) {
        loop();
    }

    return 0;
}

