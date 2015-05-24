# WICED for EMW3162

[![Join the chat at https://gitter.im/EMW3162/WICED_for_EMW3162](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/EMW3162/WICED_for_EMW3162?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

Download WICED_SDK_3.1.2.7z.zip from Broadcom. It requires registration on their site.
Place the file in this directory and run `./setup-WICED-for-EMW3162`
This will decompress and patch WICED.
Enter the WICED-SDK-3.1.2 directory and run `./make EMW3162-LwIP-FreeRTOS-snip.apsta download run` to compile and flash via J-Link.

Run `./make EMW3162-LwIP-FreeRTOS-snip.apsta` and then `./flash.sh EMW3162-LwIP-FreeRTOS-snip_apsta` to flash via st-link-v2.
You may want to hold down reset while starting the flashing process while using st-link-v2.

If you want to stop the bootloader from starting the application, hold down the WPS and EASYLINK buttons, while you push RESET.
This allows you to flash the device, even if you have repurposed the default JTAG pins in the application.

Just make sure that the JTAG pins are not initialized to alternative functions in the platform config, but in the application instead.

Join the chat at https://gitter.im/willemwouters/EMW3162_WICED
