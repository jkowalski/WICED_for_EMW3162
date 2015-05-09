# WICED for EMW3162

If you want to stop the bootloader from starting the application, hold down the WPS and EASYLINK buttons, while you push RESET.
This allows you to flash the device, even if you have repurposed the default JTAG pins in the application.

Just make sure that the JTAG pins are not initialized to alternative functions in the platform config, but in the application instead.