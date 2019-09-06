#!/bin/bash -xve
#Written by name


exec 2> /tmp/setup.log

cd /home/ubuntu/RaspberryPiMouse/src/drivers/
/sbin/insmod rtmouse.ko

#not nowtime wait make devicefile
sleep 1
chmod 666 /dev/rt*

#safety
echo 0 > /dev/rtmotoren0
