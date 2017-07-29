######################################################################
# Automatically generated by qmake (2.01a) Sat Jul 29 09:24:55 2017
######################################################################

TEMPLATE = app
TARGET = 
DEPENDPATH += . \
              src \
              src/pigpio \
              src/blynk/linux \
              src/blynk/src \
              src/RTIMULib/RTIMULib \
              src/blynk/src/Adapters \
              src/blynk/src/Blynk \
              src/blynk/src/utility \
              src/RTIMULib/Linux/python \
              src/RTIMULib/Linux/RTIMULibCal \
              src/RTIMULib/Linux/RTIMULibDemo \
              src/RTIMULib/Linux/RTIMULibDemoGL \
              src/RTIMULib/Linux/RTIMULibDrive \
              src/RTIMULib/Linux/RTIMULibDrive10 \
              src/RTIMULib/Linux/RTIMULibDrive11 \
              src/RTIMULib/Linux/RTIMULibGL \
              src/RTIMULib/Linux/RTIMULibvrpn \
              src/RTIMULib/RTHost/RTArduLinkHost \
              src/RTIMULib/RTHost/RTHostIMU \
              src/RTIMULib/RTHost/RTHostIMUCommon \
              src/RTIMULib/RTHost/RTHostIMUGL \
              src/RTIMULib/RTHost/RTIMULibGL \
              src/RTIMULib/RTIMULib/IMUDrivers \
              src/blynk/examples/Boards_Bluetooth/Adafruit_Bluefruit_LE \
              src/blynk/examples/Boards_Bluetooth/BBC_MicroBit \
              src/blynk/examples/Boards_Bluetooth/nRF8001 \
              src/blynk/examples/Boards_Bluetooth/RedBearLab_BlendMicro \
              src/blynk/examples/Export_Demo/myPlant_ESP8266 \
              src/blynk/examples/Export_Demo/Template_ESP8266 \
              src/blynk/examples/Export_Demo/Template_MKR1000 \
              src/pigpio/EXAMPLES/C/COUNTER_1 \
              src/pigpio/EXAMPLES/C/COUNTER_2 \
              src/pigpio/EXAMPLES/C/HALL_EFFECT_SENSOR \
              src/pigpio/EXAMPLES/C/I2C_SNIFFER \
              src/pigpio/EXAMPLES/C/IR_RECEIVER \
              src/pigpio/EXAMPLES/C/PCF8591_YL-40 \
              src/pigpio/EXAMPLES/C/POT_CAP_RECHARGE \
              src/pigpio/EXAMPLES/C/ROTARY_ENCODER \
              src/pigpio/EXAMPLES/C/WIEGAND_CODE \
              src/pigpio/EXAMPLES/CPP/IR_RECEIVER \
              src/pigpio/EXAMPLES/CPP/ROTARY_ENCODER \
              src/pigpio/EXAMPLES/CPP/WIEGAND_CODE \
              src/RTIMULib/Linux/RTIMULibGL/QtGLLib \
              src/RTIMULib/Linux/RTIMULibGL/VRWidgetLib \
              src/RTIMULib/RTHost/RTIMULibGL/QtGLLib \
              src/RTIMULib/RTHost/RTIMULibGL/VRWidgetLib \
              src/RTIMULib/RTHost/RTSerialPort/src
INCLUDEPATH += . \
               src/pigpio \
               src \
               src/RTIMULib/RTIMULib \
               src/RTIMULib/RTIMULib/IMUDrivers \
               src/blynk/src/Blynk \
               src/blynk/linux \
               src/blynk/src/utility \
               src/blynk/src \
               src/RTIMULib/Linux/python \
               src/RTIMULib/Linux/RTIMULibDemo \
               src/RTIMULib/Linux/RTIMULibDemoGL \
               src/RTIMULib/Linux/RTIMULibGL \
               src/RTIMULib/Linux/RTIMULibGL/QtGLLib \
               src/RTIMULib/Linux/RTIMULibGL/VRWidgetLib \
               src/RTIMULib/Linux/RTIMULibvrpn \
               src/RTIMULib/RTHost/RTArduLinkHost \
               src/RTIMULib/RTHost/RTSerialPort/src \
               src/RTIMULib/RTHost/RTHostIMU \
               src/RTIMULib/RTHost/RTHostIMUCommon \
               src/RTIMULib/RTHost/RTHostIMUGL \
               src/blynk/examples/Boards_Bluetooth/Adafruit_Bluefruit_LE \
               src/pigpio/EXAMPLES/C/IR_RECEIVER \
               src/pigpio/EXAMPLES/C/ROTARY_ENCODER \
               src/pigpio/EXAMPLES/C/WIEGAND_CODE \
               src/pigpio/EXAMPLES/CPP/IR_RECEIVER \
               src/pigpio/EXAMPLES/CPP/ROTARY_ENCODER \
               src/pigpio/EXAMPLES/CPP/WIEGAND_CODE

# Input
HEADERS += src/bitbang.h \
           src/blynk.h \
           src/getch.h \
           src/imuctrl.h \
           src/pigpio/command.h \
           src/pigpio/pigpio.h \
           src/pigpio/pigpiod_if.h \
           src/pigpio/pigpiod_if2.h \
           src/blynk/linux/BlynkApiLinux.h \
           src/blynk/linux/BlynkApiWiringPi.h \
           src/blynk/linux/BlynkOptionsParser.h \
           src/blynk/linux/BlynkSocket.h \
           src/blynk/src/Blynk.h \
           src/blynk/src/BlynkApiArduino.h \
           src/blynk/src/BlynkApiMbed.h \
           src/blynk/src/BlynkApiParticle.h \
           src/blynk/src/BlynkParticle.h \
           src/blynk/src/BlynkSimpleCC3000.h \
           src/blynk/src/BlynkSimpleCurieBLE.h \
           src/blynk/src/BlynkSimpleEnergiaEthernet.h \
           src/blynk/src/BlynkSimpleEnergiaWiFi.h \
           src/blynk/src/BlynkSimpleEsp32.h \
           src/blynk/src/BlynkSimpleEsp8266.h \
           src/blynk/src/BlynkSimpleEsp8266_SSL.h \
           src/blynk/src/BlynkSimpleEthernet.h \
           src/blynk/src/BlynkSimpleEthernet2.h \
           src/blynk/src/BlynkSimpleEthernetV2_0.h \
           src/blynk/src/BlynkSimpleFishino.h \
           src/blynk/src/BlynkSimpleIntelEdisonWiFi.h \
           src/blynk/src/BlynkSimpleLinkItONE.h \
           src/blynk/src/BlynkSimpleMKR1000.h \
           src/blynk/src/BlynkSimpleParticle.h \
           src/blynk/src/BlynkSimpleRedBear_Duo.h \
           src/blynk/src/BlynkSimpleRedBear_Duo_BLE.h \
           src/blynk/src/BlynkSimpleRedBearLab_BLE_Nano.h \
           src/blynk/src/BlynkSimpleRFduinoBLE.h \
           src/blynk/src/BlynkSimpleSerialBLE.h \
           src/blynk/src/BlynkSimpleShieldEsp8266.h \
           src/blynk/src/BlynkSimpleSIM800.h \
           src/blynk/src/BlynkSimpleSimbleeBLE.h \
           src/blynk/src/BlynkSimpleStream.h \
           src/blynk/src/BlynkSimpleTinyDuino.h \
           src/blynk/src/BlynkSimpleUIPEthernet.h \
           src/blynk/src/BlynkSimpleUserDefined.h \
           src/blynk/src/BlynkSimpleWifi.h \
           src/blynk/src/BlynkSimpleWiFiShield101.h \
           src/blynk/src/BlynkSimpleWiFiShield101_SSL.h \
           src/blynk/src/BlynkSimpleWiFly.h \
           src/blynk/src/BlynkSimpleWildFire.h \
           src/blynk/src/BlynkSimpleYun.h \
           src/blynk/src/BlynkWidgets.h \
           src/blynk/src/WidgetBridge.h \
           src/blynk/src/WidgetGPS.h \
           src/blynk/src/WidgetLCD.h \
           src/blynk/src/WidgetLED.h \
           src/blynk/src/WidgetMap.h \
           src/blynk/src/WidgetRTC.h \
           src/blynk/src/WidgetSD.h \
           src/blynk/src/WidgetTable.h \
           src/blynk/src/WidgetTerminal.h \
           src/blynk/src/WidgetTimeInput.h \
           src/RTIMULib/RTIMULib/RTFusion.h \
           src/RTIMULib/RTIMULib/RTFusionKalman4.h \
           src/RTIMULib/RTIMULib/RTFusionRTQF.h \
           src/RTIMULib/RTIMULib/RTIMUAccelCal.h \
           src/RTIMULib/RTIMULib/RTIMUCalDefs.h \
           src/RTIMULib/RTIMULib/RTIMUHal.h \
           src/RTIMULib/RTIMULib/RTIMULib.h \
           src/RTIMULib/RTIMULib/RTIMULibDefs.h \
           src/RTIMULib/RTIMULib/RTIMUMagCal.h \
           src/RTIMULib/RTIMULib/RTIMUSettings.h \
           src/RTIMULib/RTIMULib/RTMath.h \
           src/blynk/src/Adapters/BLEPeripheralSerial.h \
           src/blynk/src/Adapters/BlynkArduinoClient.h \
           src/blynk/src/Adapters/BlynkCC3000.h \
           src/blynk/src/Adapters/BlynkEthernet.h \
           src/blynk/src/Adapters/BlynkGsmClient.h \
           src/blynk/src/Adapters/BlynkSerial.h \
           src/blynk/src/Adapters/BlynkWiFiCommon.h \
           src/blynk/src/Adapters/BlynkWiFly.h \
           src/blynk/src/Adapters/BlynkWildFire.h \
           src/blynk/src/Blynk/BlynkApi.h \
           src/blynk/src/Blynk/BlynkConfig.h \
           src/blynk/src/Blynk/BlynkDebug.h \
           src/blynk/src/Blynk/BlynkDetectDevice.h \
           src/blynk/src/Blynk/BlynkHandlers.h \
           src/blynk/src/Blynk/BlynkParam.h \
           src/blynk/src/Blynk/BlynkProtocol.h \
           src/blynk/src/Blynk/BlynkProtocolDefs.h \
           src/blynk/src/Blynk/BlynkTemplates.h \
           src/blynk/src/Blynk/BlynkTimer.h \
           src/blynk/src/Blynk/BlynkWidgetBase.h \
           src/blynk/src/utility/BlynkDateTime.h \
           src/blynk/src/utility/BlynkFifo.h \
           src/blynk/src/utility/BlynkFifo2.h \
           src/blynk/src/utility/BlynkUtility.h \
           src/RTIMULib/Linux/python/PyRTHumidity.h \
           src/RTIMULib/Linux/python/PyRTIMU.h \
           src/RTIMULib/Linux/python/PyRTPressure.h \
           src/RTIMULib/Linux/RTIMULibDemo/AccelCalDlg.h \
           src/RTIMULib/Linux/RTIMULibDemo/IMUThread.h \
           src/RTIMULib/Linux/RTIMULibDemo/MagCalDlg.h \
           src/RTIMULib/Linux/RTIMULibDemo/RTIMULibDemo.h \
           src/RTIMULib/Linux/RTIMULibDemo/SelectFusionDlg.h \
           src/RTIMULib/Linux/RTIMULibDemo/SelectIMUDlg.h \
           src/RTIMULib/Linux/RTIMULibDemoGL/AccelCalDlg.h \
           src/RTIMULib/Linux/RTIMULibDemoGL/IMUThread.h \
           src/RTIMULib/Linux/RTIMULibDemoGL/MagCalDlg.h \
           src/RTIMULib/Linux/RTIMULibDemoGL/RTIMULibDemoGL.h \
           src/RTIMULib/Linux/RTIMULibDemoGL/SelectFusionDlg.h \
           src/RTIMULib/Linux/RTIMULibDemoGL/SelectIMUDlg.h \
           src/RTIMULib/Linux/RTIMULibGL/IMUView.h \
           src/RTIMULib/Linux/RTIMULibvrpn/vrpnServer.h \
           src/RTIMULib/RTHost/RTArduLinkHost/RTArduLinkDefs.h \
           src/RTIMULib/RTHost/RTArduLinkHost/RTArduLinkDemoDefs.h \
           src/RTIMULib/RTHost/RTArduLinkHost/RTArduLinkHost.h \
           src/RTIMULib/RTHost/RTArduLinkHost/RTArduLinkUtils.h \
           src/RTIMULib/RTHost/RTHostIMU/RTHostIMU.h \
           src/RTIMULib/RTHost/RTHostIMUCommon/AccelCalDlg.h \
           src/RTIMULib/RTHost/RTHostIMUCommon/MagCalDlg.h \
           src/RTIMULib/RTHost/RTHostIMUCommon/RTArduLinkIMUDefs.h \
           src/RTIMULib/RTHost/RTHostIMUCommon/RTHostIMUClient.h \
           src/RTIMULib/RTHost/RTHostIMUCommon/RTHostIMUThread.h \
           src/RTIMULib/RTHost/RTHostIMUCommon/SelectFusionDlg.h \
           src/RTIMULib/RTHost/RTHostIMUGL/RTHostIMUGL.h \
           src/RTIMULib/RTHost/RTIMULibGL/IMUView.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTHumidity.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTHumidityDefs.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTHumidityHTS221.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTHumidityHTU21D.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMU.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMUBMX055.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMUBNO055.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMUDefs.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMUGD20HM303D.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMUGD20HM303DLHC.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMUGD20M303DLHC.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMULSM9DS0.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMULSM9DS1.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMUMPU9150.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMUMPU9250.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMUNull.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTPressure.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTPressureBMP180.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTPressureDefs.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTPressureLPS25H.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTPressureMS5611.h \
           src/RTIMULib/RTIMULib/IMUDrivers/RTPressureMS5637.h \
           src/blynk/examples/Boards_Bluetooth/Adafruit_Bluefruit_LE/BLESerial.h \
           src/blynk/examples/Boards_Bluetooth/BBC_MicroBit/BLESerial.h \
           src/blynk/examples/Boards_Bluetooth/nRF8001/BLESerial.h \
           src/blynk/examples/Boards_Bluetooth/RedBearLab_BlendMicro/BLESerial.h \
           src/blynk/examples/Export_Demo/myPlant_ESP8266/BlynkProvisioning.h \
           src/blynk/examples/Export_Demo/myPlant_ESP8266/BlynkState.h \
           src/blynk/examples/Export_Demo/myPlant_ESP8266/ConfigMode.h \
           src/blynk/examples/Export_Demo/myPlant_ESP8266/ConfigStore.h \
           src/blynk/examples/Export_Demo/myPlant_ESP8266/Indicator.h \
           src/blynk/examples/Export_Demo/myPlant_ESP8266/OTA.h \
           src/blynk/examples/Export_Demo/myPlant_ESP8266/ResetButton.h \
           src/blynk/examples/Export_Demo/myPlant_ESP8266/Settings.h \
           src/blynk/examples/Export_Demo/Template_ESP8266/BlynkProvisioning.h \
           src/blynk/examples/Export_Demo/Template_ESP8266/BlynkState.h \
           src/blynk/examples/Export_Demo/Template_ESP8266/ConfigMode.h \
           src/blynk/examples/Export_Demo/Template_ESP8266/ConfigStore.h \
           src/blynk/examples/Export_Demo/Template_ESP8266/Indicator.h \
           src/blynk/examples/Export_Demo/Template_ESP8266/OTA.h \
           src/blynk/examples/Export_Demo/Template_ESP8266/ResetButton.h \
           src/blynk/examples/Export_Demo/Template_ESP8266/Settings.h \
           src/blynk/examples/Export_Demo/Template_MKR1000/BlynkProvisioning.h \
           src/blynk/examples/Export_Demo/Template_MKR1000/BlynkState.h \
           src/blynk/examples/Export_Demo/Template_MKR1000/ConfigMode.h \
           src/blynk/examples/Export_Demo/Template_MKR1000/ConfigStore.h \
           src/blynk/examples/Export_Demo/Template_MKR1000/Indicator.h \
           src/blynk/examples/Export_Demo/Template_MKR1000/OTA.h \
           src/blynk/examples/Export_Demo/Template_MKR1000/ResetButton.h \
           src/blynk/examples/Export_Demo/Template_MKR1000/Settings.h \
           src/pigpio/EXAMPLES/C/IR_RECEIVER/ir_hasher.h \
           src/pigpio/EXAMPLES/C/ROTARY_ENCODER/rotary_encoder.h \
           src/pigpio/EXAMPLES/C/WIEGAND_CODE/wiegand.h \
           src/pigpio/EXAMPLES/CPP/IR_RECEIVER/ir_hasher.hpp \
           src/pigpio/EXAMPLES/CPP/ROTARY_ENCODER/rotary_encoder.hpp \
           src/pigpio/EXAMPLES/CPP/WIEGAND_CODE/wiegand.hpp \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGL.h \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLADSShader.h \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLADSTextureShader.h \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLComponent.h \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLCylinderComponent.h \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLDiskComponent.h \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLFlatShader.h \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLPlaneComponent.h \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLShader.h \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLSphereComponent.h \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLTextureShader.h \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLWireCubeComponent.h \
           src/RTIMULib/Linux/RTIMULibGL/VRWidgetLib/VRIMUWidget.h \
           src/RTIMULib/Linux/RTIMULibGL/VRWidgetLib/VRWidget.h \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGL.h \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLADSShader.h \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLADSTextureShader.h \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLComponent.h \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLCylinderComponent.h \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLDiskComponent.h \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLFlatShader.h \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLPlaneComponent.h \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLShader.h \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLSphereComponent.h \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLTextureShader.h \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLWireCubeComponent.h \
           src/RTIMULib/RTHost/RTIMULibGL/VRWidgetLib/VRIMUWidget.h \
           src/RTIMULib/RTHost/RTIMULibGL/VRWidgetLib/VRWidget.h \
           src/RTIMULib/RTHost/RTSerialPort/src/qextserialenumerator.h \
           src/RTIMULib/RTHost/RTSerialPort/src/qextserialenumerator_p.h \
           src/RTIMULib/RTHost/RTSerialPort/src/qextserialport.h \
           src/RTIMULib/RTHost/RTSerialPort/src/qextserialport_global.h \
           src/RTIMULib/RTHost/RTSerialPort/src/qextserialport_p.h \
           src/RTIMULib/RTHost/RTSerialPort/src/qextwineventnotifier_p.h \
           src/pigpio/custom.cext
FORMS += src/RTIMULib/Linux/RTIMULibDemo/RTIMULibDemo.ui \
         src/RTIMULib/Linux/RTIMULibDemoGL/RTIMULibDemoGL.ui \
         src/RTIMULib/RTHost/RTHostIMU/RTHostIMU.ui \
         src/RTIMULib/RTHost/RTHostIMUGL/RTHostIMUGL.ui
SOURCES += src/bitbang.cpp \
           src/driver.cpp \
           src/drivertest.cpp \
           src/pigpio/command.c \
           src/pigpio/pig2vcd.c \
           src/pigpio/pigpio.c \
           src/pigpio/pigpiod.c \
           src/pigpio/pigpiod_if.c \
           src/pigpio/pigpiod_if2.c \
           src/pigpio/pigs.c \
           src/pigpio/x_pigpio.c \
           src/pigpio/x_pigpiod_if.c \
           src/pigpio/x_pigpiod_if2.c \
           src/blynk/linux/BlynkDebug.cpp \
           src/blynk/linux/main.cpp \
           src/RTIMULib/RTIMULib/RTFusion.cpp \
           src/RTIMULib/RTIMULib/RTFusionKalman4.cpp \
           src/RTIMULib/RTIMULib/RTFusionRTQF.cpp \
           src/RTIMULib/RTIMULib/RTIMUAccelCal.cpp \
           src/RTIMULib/RTIMULib/RTIMUHal.cpp \
           src/RTIMULib/RTIMULib/RTIMUMagCal.cpp \
           src/RTIMULib/RTIMULib/RTIMUSettings.cpp \
           src/RTIMULib/RTIMULib/RTMath.cpp \
           src/blynk/src/utility/BlynkDebug.cpp \
           src/blynk/src/utility/BlynkHandlers.cpp \
           src/blynk/src/utility/BlynkTimer.cpp \
           src/blynk/src/utility/utility.cpp \
           src/RTIMULib/Linux/python/PyRTIMU.cpp \
           src/RTIMULib/Linux/python/PyRTIMU_RTHumidity.cpp \
           src/RTIMULib/Linux/python/PyRTIMU_RTIMU.cpp \
           src/RTIMULib/Linux/python/PyRTIMU_RTPressure.cpp \
           src/RTIMULib/Linux/python/PyRTIMU_Settings.cpp \
           src/RTIMULib/Linux/RTIMULibCal/RTIMULibCal.cpp \
           src/RTIMULib/Linux/RTIMULibDemo/AccelCalDlg.cpp \
           src/RTIMULib/Linux/RTIMULibDemo/IMUThread.cpp \
           src/RTIMULib/Linux/RTIMULibDemo/MagCalDlg.cpp \
           src/RTIMULib/Linux/RTIMULibDemo/main.cpp \
           src/RTIMULib/Linux/RTIMULibDemo/RTIMULibDemo.cpp \
           src/RTIMULib/Linux/RTIMULibDemo/SelectFusionDlg.cpp \
           src/RTIMULib/Linux/RTIMULibDemo/SelectIMUDlg.cpp \
           src/RTIMULib/Linux/RTIMULibDemoGL/AccelCalDlg.cpp \
           src/RTIMULib/Linux/RTIMULibDemoGL/IMUThread.cpp \
           src/RTIMULib/Linux/RTIMULibDemoGL/MagCalDlg.cpp \
           src/RTIMULib/Linux/RTIMULibDemoGL/main.cpp \
           src/RTIMULib/Linux/RTIMULibDemoGL/RTIMULibDemoGL.cpp \
           src/RTIMULib/Linux/RTIMULibDemoGL/SelectFusionDlg.cpp \
           src/RTIMULib/Linux/RTIMULibDemoGL/SelectIMUDlg.cpp \
           src/RTIMULib/Linux/RTIMULibDrive/RTIMULibDrive.cpp \
           src/RTIMULib/Linux/RTIMULibDrive10/RTIMULibDrive10.cpp \
           src/RTIMULib/Linux/RTIMULibDrive11/RTIMULibDrive11.cpp \
           src/RTIMULib/Linux/RTIMULibGL/IMUView.cpp \
           src/RTIMULib/Linux/RTIMULibvrpn/RTIMULibvrpn.cpp \
           src/RTIMULib/Linux/RTIMULibvrpn/vrpnServer.cpp \
           src/RTIMULib/RTHost/RTArduLinkHost/RTArduLinkHost.cpp \
           src/RTIMULib/RTHost/RTArduLinkHost/RTArduLinkUtils.cpp \
           src/RTIMULib/RTHost/RTHostIMU/main.cpp \
           src/RTIMULib/RTHost/RTHostIMU/RTHostIMU.cpp \
           src/RTIMULib/RTHost/RTHostIMUCommon/AccelCalDlg.cpp \
           src/RTIMULib/RTHost/RTHostIMUCommon/MagCalDlg.cpp \
           src/RTIMULib/RTHost/RTHostIMUCommon/RTHostIMUClient.cpp \
           src/RTIMULib/RTHost/RTHostIMUCommon/RTHostIMUThread.cpp \
           src/RTIMULib/RTHost/RTHostIMUCommon/SelectFusionDlg.cpp \
           src/RTIMULib/RTHost/RTHostIMUGL/main.cpp \
           src/RTIMULib/RTHost/RTHostIMUGL/RTHostIMUGL.cpp \
           src/RTIMULib/RTHost/RTIMULibGL/IMUView.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTHumidity.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTHumidityHTS221.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTHumidityHTU21D.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMU.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMUBMX055.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMUBNO055.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMUGD20HM303D.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMUGD20HM303DLHC.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMUGD20M303DLHC.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMULSM9DS0.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMULSM9DS1.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMUMPU9150.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMUMPU9250.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTIMUNull.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTPressure.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTPressureBMP180.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTPressureLPS25H.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTPressureMS5611.cpp \
           src/RTIMULib/RTIMULib/IMUDrivers/RTPressureMS5637.cpp \
           src/blynk/examples/Boards_Bluetooth/Adafruit_Bluefruit_LE/BLESerial.cpp \
           src/blynk/examples/Boards_Bluetooth/BBC_MicroBit/BLESerial.cpp \
           src/blynk/examples/Boards_Bluetooth/nRF8001/BLESerial.cpp \
           src/blynk/examples/Boards_Bluetooth/RedBearLab_BlendMicro/BLESerial.cpp \
           src/pigpio/EXAMPLES/C/COUNTER_1/freq_count_1.c \
           src/pigpio/EXAMPLES/C/COUNTER_2/freq_count_2.c \
           src/pigpio/EXAMPLES/C/HALL_EFFECT_SENSOR/hall.c \
           src/pigpio/EXAMPLES/C/I2C_SNIFFER/pig2i2c.c \
           src/pigpio/EXAMPLES/C/IR_RECEIVER/ir_hasher.c \
           src/pigpio/EXAMPLES/C/IR_RECEIVER/test_ir_hasher.c \
           src/pigpio/EXAMPLES/C/PCF8591_YL-40/PCF8591.c \
           src/pigpio/EXAMPLES/C/POT_CAP_RECHARGE/pot_cap_charge.c \
           src/pigpio/EXAMPLES/C/ROTARY_ENCODER/rotary_encoder.c \
           src/pigpio/EXAMPLES/C/ROTARY_ENCODER/test_rotary_encoder.c \
           src/pigpio/EXAMPLES/C/WIEGAND_CODE/test_wiegand.c \
           src/pigpio/EXAMPLES/C/WIEGAND_CODE/wiegand.c \
           src/pigpio/EXAMPLES/CPP/IR_RECEIVER/ir_hasher.cpp \
           src/pigpio/EXAMPLES/CPP/IR_RECEIVER/test_ir_hasher.cpp \
           src/pigpio/EXAMPLES/CPP/ROTARY_ENCODER/rotary_encoder.cpp \
           src/pigpio/EXAMPLES/CPP/ROTARY_ENCODER/test_rotary_encoder.cpp \
           src/pigpio/EXAMPLES/CPP/WIEGAND_CODE/test_wiegand.cpp \
           src/pigpio/EXAMPLES/CPP/WIEGAND_CODE/wiegand.cpp \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGL.cpp \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLADSShader.cpp \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLADSTextureShader.cpp \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLComponent.cpp \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLCylinderComponent.cpp \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLDiskComponent.cpp \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLFlatShader.cpp \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLPlaneComponent.cpp \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLSphereComponent.cpp \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLTextureShader.cpp \
           src/RTIMULib/Linux/RTIMULibGL/QtGLLib/QtGLWireCubeComponent.cpp \
           src/RTIMULib/Linux/RTIMULibGL/VRWidgetLib/VRIMUWidget.cpp \
           src/RTIMULib/Linux/RTIMULibGL/VRWidgetLib/VRWidget.cpp \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGL.cpp \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLADSShader.cpp \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLADSTextureShader.cpp \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLComponent.cpp \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLCylinderComponent.cpp \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLDiskComponent.cpp \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLFlatShader.cpp \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLPlaneComponent.cpp \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLSphereComponent.cpp \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLTextureShader.cpp \
           src/RTIMULib/RTHost/RTIMULibGL/QtGLLib/QtGLWireCubeComponent.cpp \
           src/RTIMULib/RTHost/RTIMULibGL/VRWidgetLib/VRIMUWidget.cpp \
           src/RTIMULib/RTHost/RTIMULibGL/VRWidgetLib/VRWidget.cpp \
           src/RTIMULib/RTHost/RTSerialPort/src/qextserialenumerator.cpp \
           src/RTIMULib/RTHost/RTSerialPort/src/qextserialenumerator_osx.cpp \
           src/RTIMULib/RTHost/RTSerialPort/src/qextserialenumerator_unix.cpp \
           src/RTIMULib/RTHost/RTSerialPort/src/qextserialenumerator_win.cpp \
           src/RTIMULib/RTHost/RTSerialPort/src/qextserialport.cpp \
           src/RTIMULib/RTHost/RTSerialPort/src/qextserialport_unix.cpp \
           src/RTIMULib/RTHost/RTSerialPort/src/qextserialport_win.cpp \
           src/RTIMULib/RTHost/RTSerialPort/src/qextwineventnotifier_p.cpp
RESOURCES += src/RTIMULib/Linux/RTIMULibGL/VRWidgetLib/VRWidgetLib.qrc \
             src/RTIMULib/RTHost/RTIMULibGL/VRWidgetLib/VRWidgetLib.qrc
