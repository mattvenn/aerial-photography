# Payload Manual

## Hydrogen Filling

Fill the small balloon with enough hydrogen to blow it up fully. Low pressure results in unreliable performance.

## Startup

* Attach the fuel cell.
* Connect the balloon to the fuel cell inlet.
* Check the Raspberry Pi switch is off.
* Unclip the gas clip.
* Press the purge valve momentarily.
* At this point you should see the red fuel cell status light begin flashing. If not then try:
    * check the gas clip,
    * try another purge,
    * replace the fuel cell.
* Wait until the status light starts flashing slower, and then wait for the first short circuit light to flash.
* Turn on the Raspberry Pi.
* The blue light should turn on and start flickering.
* After the Pi has booted, the blue light will flash rapidly 3 times and turn off. This means the Pi has started successfully and will now load the camera software.
* After a few seconds, the blue light will come on, followed by the red camera light. Then both will switch off. This indicates a photo has been taken.

## Shutdown

* Press the reset button. The blue light should flash rapidly 3 times. Wait until all the lights are off on the Pi.
* Turn off the Pi's power switch
* Disconnect the balloon and empty it.
* Remove the fuel cell and place in its air tight bag.
