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
#define MOTOR_1 23
#define MOTOR_2 24
#define MOTOR_3 17
#define MOTOR_4 18
std::list<int> motors = {MOTOR_1, MOTOR_2, MOTOR_3, MOTOR_4};

static BlynkTransportSocket _blynkTransport;
BlynkSocket Blynk(_blynkTransport);

#include <BlynkWidgets.h>
#include <iostream>

BLYNK_WRITE(V1)
{
  for(const auto& motor : motors)
  	std::cout << motor << std::endl << param[0].asStr() << std::endl;
}

//BLYNK_WRITE(V1)

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

