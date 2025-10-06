#!/bin/sh
#
# Perform basic settings on a known IP camera
#
#
# Set custom upgrade url
#
fw_setenv upgrade 'https://github.com/kirill9617/builder/releases/download/latest/ssc335de_ultimate_xiaomi-mjsxj06cm-a04-nor.tgz'
#
#
# Set sensor config
fw_setenv sensor sc3338
cli -s .isp.sensorConfig /etc/sensors/sc3338.bin

# Set custom majestic settings
#
cli -s .system.plugins true
#cli -s .video0.codec h264
cli -s .image.mirror true
cli -s .image.flip true

cli -s .nightMode.irCutPin1 79
cli -s .nightMode.irCutPin2 78
cli -s .nightMode.backlightPin 52
cli -s .nightMode.colorToGray true
cli -s .nightMode.minThreshold 2000
cli -s .nightMode.minThreshold 9000
cli -s .nightMode.monitorDelay 0


cli -s .audio.enabled true
cli -s .audio.volume 60
cli -s .audio.srate 48000

cli -s .audio.outputEnabled true
cli -s .audio.outputVolume 100
cli -s .audio.speakerPin 63
cli -s .audio.speakerPinInvert false
#
#
# Set wlan device and credentials if need
#
fw_setenv wlandev rtl8811cu-generic
#fw_setenv wlanssid Router
#fw_setenv wlanpass 12345678

fw_setenv gpio_motors '1 2 3 4 5 6 7 8'

exit 0
