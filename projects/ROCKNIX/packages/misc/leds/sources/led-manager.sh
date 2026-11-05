#!/bin/sh
# LED manager for ROG Ally joystick rings (multicolor LED)
LED=/sys/class/leds/ally:rgb:joystick_rings
[ -d "$LED" ] || exit 0

R=${LED_R:-0}
G=${LED_G:-255}
B=${LED_B:-0}

echo "$R $G $B" > "$LED/multi_intensity" 2>/dev/null
echo 255 > "$LED/brightness" 2>/dev/null
