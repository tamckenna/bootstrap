#!/bin/bash

name=macos
version=Monterey
disk=/dev/disk0

caffeinate &
diskutil eraseDisk APFS ${name} ${disk}
/Install\ macOS\ ${version}.app/Contents/Resources/startosinstall --agreetolicense --nointeraction --volume /Volumes/${name}
echo ""
echo "Copy out system .img file now"
echo ""
read -p "Press Enter to Shutdown"
shutdown -h now
