#!/bin/bash
firefox ./phone.html
while [ 1 ]; do
	adb shell "screencap /sdcard/screen.png && echo /sdcard/screen.png created"
	adb pull /sdcard/screen.png /tmp/adb-screen.png && echo "/tmp/adb-screen.png pulled"
done
