#!/bin/sh
./bgp_simple.pl -myas 65000 -myip `/sbin/ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1 }'` -peerip 172.17.0.1 -peeras 65001 -p /root/routes -holdtime 6000 -m 2000 -n
