How to install
===============================
1. Download and compile:
```git clone --recursive https://github.com/chop0/dugong-chopcopter/
cd dugong-chopcopter
make
cd src/blynk/linux
make
cd ../../..
```
2. Run like this:
```
bin/blynk -t <your auth token> -s <your server, public cloud one is too slow> | sudo bin/drone
```