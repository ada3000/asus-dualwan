# asus-dualwan
DualWan implementation for old models

Inspired by article: https://www.securityforrealpeople.com/2015/08/cron-on-asus.html

# Installation

1. Turn on ssh access in your asus router
2. Connect by SSH to router
3. Copy cron files to your JSSF folder
4. Setup file variables in file check_and_swap_wan.sh
5. Install autocopy cron tab:
nvram set script_usbmount="/jffs/autostart.sh"
nvram commit
6. Enjoy
