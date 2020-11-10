# Asus dualwan
DualWan implementation for old models.
This useful for follover second internet connection when first is broken

Inspired by article: https://www.securityforrealpeople.com/2015/08/cron-on-asus.html

# Installation

1. Turn on ssh access in your asus router
2. Connect by SSH to router
3. Copy cron files to your JFFS folder
4. Setup file variables in file check_and_swap_wan.sh
5. Install autocopy cron tab:
5.1 nvram set jffs2_exec="/jffs/autostart.sh"
5.2 nvram commit
6. Enjoy
