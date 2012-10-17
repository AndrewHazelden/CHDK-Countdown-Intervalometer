Countdown Intervalometer v1.1

A CHDK intervalometer script that will take a specific number of photos.

In the CHDK Script menu there are two parameters you can change. The first is Interval in Sec and the second is Number of Shots.

If the Number of Shots is set to zero the intervalometer switches from a countdown intervalometer mode over to a perpetual intervalometer mode that will continue to take photos until your memory card is full or your camera's battery runs out of power.

--------------------------------------------------------------------------------
VERSION HISTORY

Version 1.1 updated Sept 19, 2010.
Added the perpetual intervalometer mode.
 
Version 1.0 Created by Andrew Hazelden on Sept 16, 2010.

Contact:
E-mail: andrewhazelden@gmail.com   
Blog: www.andrewhazelden.com

To download the latest version check out this blog post:
http://www.andrewhazelden.com/blog/2010/09/ubasic-countdown-intervalometer-script-for-canon-powershots-running-chdk/

Here is a sample of a time-lapse created with this script:

A Forest in Shadows Time-lapse:
http://www.youtube.com/watch?v=KtaqYw2AyUs

Canon Powershot with CHDK live view of Time-lapse creation:
http://www.youtube.com/watch?v=a6t58KCgzkM
--------------------------------------------------------------------------------
HOW TO LOAD THE SCRIPT

1. Copy the file count.bas to your CHDK/SCRIPTS folder on your SD memory card.

2. Turn on your camera.

3. Load up the CHDK menu and then select “Scripting parameters”.

4. In the Script Menu open the uBASIC script count.bas by selecting “Load script from file…”.

5. Set the parameters for your time-lapse in the script menu.

6. Close the CHDK menus. With ALT mode active press the shutter button to start running the script. After the first photo is taken, the estimated time remaining will be displayed.

7. To stop running the script press the shutter button again then turn off ALT mode.
    
As the script runs it will give you an estimated time remaining that is updated after every photo is taken. If you want to take perpetual photos, you can do that by setting the number of shots to zero and the script will run until your memory card is full.

When the script finishes you will see the following printed on the display:

    Sequence Completed
    10 Shots Taken in:
    00:01:07 HH:MM:SS
    *** FINISHED ***
    Countdown Intervalometer>


In the CHDK Script menu there are two parameters you can change. The first is Interval in Sec and the second is Number of Shots. If you want to take pictures forever, or until your memory card is full set Number of Shots to zero.

Make sure the "Save params" option is enabled in the Script Parameters window. This option has to be turned on to remember the Countdown Intervalometer settings between camera reboots.

You can save your own intervalometer presets using the "Parameters set" feature in the Script Parameters window. This feature will allow you to save and recall previous Interval in Sec and Number of Shots settings. To move between the different parameter sets press the left / right navigation buttons on your camera.

If you are planning on recording a long duration time-lapse sequence you may find the Canon Powershot Accessory ACK-DC10 interesting. It is an AC power adapter that powers the camera. The way it works is that you install what looks like a dummy battery in your camera. This dummy battery module has a female barrel connector. You then plug in a male barrel connector from the wall power supply into the dummy battery through the flap in your camera battery door. Canon makes a variety of different wall power adapters for different Powershot Cameras. Stay away from the eBay clones of the ACK-DC10 as they are really low quality and the dummy battery module can have the internal barrel connector break off very easily!

