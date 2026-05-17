#!/bin/sh
cd $(dirname "$0")
a=`ps | grep screenshot | grep -v grep`
if [ "$a" == "" ] ; then
    ./screenshot &
    ./printstr "L2+R2 Screenshot Ready"
    sleep 0.7
else
    killall screenshot
    ./printstr "    Screenshot Released    "
    sleep 0.7
fi
