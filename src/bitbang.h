/*
 * Copyright © 2017 Alec Petridis.
 * All content under the MIT License.
*/

namespace drone {
     void appendPWM(int pin, int width);
     void sendPWM(int pin, int width); // Function assumes that expected frequency is 50 Hertz.
     float getPWM(int pin);
     float getPWMPercent(int min, int max, int pin);
}

