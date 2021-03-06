# WICED for EMW3162

[![Join the chat at https://gitter.im/EMW3162/WICED_for_EMW3162](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/EMW3162/WICED_for_EMW3162?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Download WICED_SDK_3.1.2.7z.zip from Broadcom. It requires registration on their site.
Place the file in this directory and run `./setup-WICED-for-EMW3162`
This will decompress and patch WICED.
Enter the WICED-SDK-3.1.2 directory and run `./make EMW3162-LwIP-FreeRTOS-snip.apsta download run` to compile and flash via the green development board or add `JTAG=jlink` for Segger J-Link.

Run `./make EMW3162-LwIP-FreeRTOS-snip.apsta` and then `./flash.sh EMW3162-LwIP-FreeRTOS-snip_apsta` to flash via st-link-v2.
You may need to hold down reset while starting the flashing process while using st-link-v2.

If you want to stop the bootloader from starting the application, hold down the WPS and EASYLINK buttons, while you push RESET.
This allows you to flash the device, even if you have repurposed the default JTAG pins in the application.

Just make sure that the JTAG pins are not initialized to alternative functions in the platform config, but in the application instead.

Documentation, schematics, libraries and datasheets, among other related things, can be found in the *docs_and_libraries* directory, in this repository.

There is also a gitter channel for EMW3162 at https://gitter.im/willemwouters/EMW3162_WICED and the original work for WICED for EMW3162 [here](https://github.com/EMW3162/EMW3162_WICED)

You can get an EMW3162 at Seeedstudio
* [EMW3162 WiFi Module](http://www.seeedstudio.com/depot/EMW3162-WiFi-Module-p-2122.html)
* [EMW3162 WiFi Module (External IPEX antenna)](http://www.seeedstudio.com/depot/EMW3162-WiFi-Module-External-IPEX-antenna-p-2235.html)
* [EMB-WICED-S EMW3162 Development Board for WICED (aka. green board) _(Recommended due to the built-in WICED compatible JTAG)_](http://www.seeedstudio.com/depot/EMBWICEDS-EMW3162-Development-Board-for-WICED-p-2335.html)
* [EMB-380-S2 Development Board (aka. black board) _(Requires external JTAG adapter like Segger J-Link (or equivalent) or ST-Link V2)_](http://www.seeedstudio.com/depot/EMB380S2-Development-Board-p-2146.html)
* [ST-Link V2 for STM8 STM32 interface programmer](http://www.seeedstudio.com/depot/STLink-V2-for-STM8-STM32-interface-programmer-p-2297.html)

Both development boards come with headers to solder on to an EMW3162. If you plan on using more than one EMW3162 with a development board, you need to source 2mm headers. The most common type of header is 1 mil or 2.54mm and those don't fit.
SeeedStudio did not carry those headers when I last ordered a dev board.
You will also require a couple of strips of regular headers to solder onto the development board as breakouts for the EMW3162 pins.

![Sample setup](https://raw.githubusercontent.com/EMW3162/WICED_for_EMW3162/master/docs_and_libraries/green-dev-board-with-annotations.png)
