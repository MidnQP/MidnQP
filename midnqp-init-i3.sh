#!/bin/bash


blu="\033[34m"
grn="\033[32m"
red="\033[31m"
res="\033[0m"
input="$blu[input]$res"
info="$grn[info]$res"


sudo brightnessctl set 400 intel_backlight

# String="String"
# echo $String | tail -c +2 | head -c -2
# Output: trin
# tail removed S, head removed g.


#xrandr --output eDP-1 --brightness 0.15
#xrandr --output eDP-1 --mode 1368x768
#xrandr --output eDP-1 --mode 1920x1080 --rate 48.00

for n in {0..3}
do
	echo ""
	sudo cpufreq-set -g powersave -c $n
done
