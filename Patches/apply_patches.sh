#!/bin/bash

for fl in 01-NewLine.patch \
    02-string.patch \
    03-EnableRegisteredParameters.patch \
    04-SplitLoggingLevels.patch \
    05-FirmwareLocation.patch \
    06-AVOutputCallback.patch \
    07-ThreadName.patch \
    08-AudioCS8416.patch
do
    echo "Applying patch ${fl}"
    patch --verbose -p1 "../HauppaugeUSB/Patches/${fl}"
done
