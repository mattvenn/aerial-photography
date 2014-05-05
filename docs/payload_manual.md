# Payload Manual

## Pre-flight check

* Check that the system starts up as expected (see Startup section below)

## Hydrogen Filling

Fill the small balloon with enough hydrogen to blow it up fully. Low pressure results in unreliable performance.

## Startup

* Attach the fuel cell, ensure positive and negative are correct.
* Connect the balloon to the fuel cell inlet.
* Check the Raspberry Pi switch is off.
* Unclip the gas clip.
* Press the purge valve momentarily.
* At this point you should see the red fuel cell status LED begin flashing once per second. If not then try:
    * check the gas clip,
    * try another purge,
    * replace the fuel cell.
* Wait until the status LED starts flashing once per 2 seconds, and then wait for the first short circuit LED to flash.
* Turn on the Raspberry Pi.
* The blue LED should turn on and start flickering, followed by the Pi's ACT LED.
* After the Pi has booted, the blue LED will flash rapidly 3 times and turn off. This means the Pi has started successfully and will now load the camera software. While the Pi is running its yellow ACT LED should flash in a heartbeat pattern.
* After a few seconds, the blue LED will come on, followed by the red camera LED. Then both will switch off. This indicates a photo has been taken.

## Shutdown

* Press the reset button. The blue LED should flash rapidly 3 times. Wait until all the LEDs are off on the Pi.
* Turn off the Pi's power switch
* Disconnect the balloon and empty it.
* Remove the fuel cell and place in its air tight bag.

## Problems

### The Pi starts up, the heartbeat is flashing on the ACT LED, but no photos are taken.

This is probably because the SD card is out of space. Delete the photos from the /home/pi/photos directory and try again.
