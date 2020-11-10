# Check cron execution
echo Start inet check >> /tmp/inet_check.txt

# In my case:
# First WAN is ppp0 - optic lan provider
# Second WAN is eth3 - usb modem

# Gateway for my first WAN
test_server=10.11.51.1
result=`ping $test_server -c 4 | grep "100% packet loss"`
if [ -z "$result"]
then
	echo Turn on First WAN (ppp0), turn off second (eth3)                                                                                                                                        
        ifconfig ppp0 up; ifconfig eth3 down         
else
	echo Turn on Ele2
	ifconfig eth3 up; ifconfig ppp0 down
fi
