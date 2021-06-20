#!/bin/bash


brightness=`xrandr --verbose | grep -m 1 -i brightness | cut -f2 -d ' '`


if [ "$brightness" = "1.0" ]; then
	xrandr --output eDP-1 --brightness 0.5
	xrandr --output eDP-1 --mode 1368x768


	for n in {0..3}
	do
		sudo cpufreq-set -g powersave -c $n
	done
else
	echo "init-i3: You sure you wanna run me?"
fi
