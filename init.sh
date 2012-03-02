PATH=/system/bin:/system/xbin

alsa_amixer set Master on
alsa_amixer set Master 100
alsa_amixer set Headphone 100
alsa_amixer set Speaker 100

# disable cursor blinking
#echo -e '\033[?17;0;0c' > /dev/tty0

/system/bin/ifconfig eth0 up
#netcfg eth0 dhcp
/system/bin/ifconfig eth0 172.16.1.87
/system/bin/route add default gw 172.16.1.254 dev eth0
setprop net.dns1 61.177.7.1
setprop net.dns2 8.8.8.8
