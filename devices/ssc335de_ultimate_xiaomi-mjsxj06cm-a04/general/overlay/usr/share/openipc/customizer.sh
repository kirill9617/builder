#!/bin/sh
#
# Perform basic settings on a known IP camera
#
#
# Set custom upgrade url
#
fw_setenv upgrade 'https://github.com/kirill9617/builder/releases/download/latest/ssc335de_ultimate-xiaomi-mjsxj06cm-a04-nor.tgz'
#
#
# Set custom majestic settings
#
#cli -s .video0.codec h264
#cli -s .image.mirror false
#cli -s .image.flip false
#cli -s .nightMode.irCutPin1 79
#cli -s .nightMode.irCutPin2 78
#cli -s .nightMode.backlightPin 52
#cli -s .nightMode.colorToGray true
#cli -s .audio.inputChannel 1
#cli -s .audio.outputEnabled true
#cli -s .audio.outputVolume 80
#cli -s .audio.speakerPin 15
#cli -s .audio.speakerPinInvert true
#cli -s .audio.srate 48000
#
#
# Set wlan device and credentials if need
#
fw_setenv wlandev rtl8811cu-generic
#fw_setenv wlanssid Router
#fw_setenv wlanpass 12345678

exit 0
