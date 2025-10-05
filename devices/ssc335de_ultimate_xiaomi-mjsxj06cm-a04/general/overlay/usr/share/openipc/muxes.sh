gpio set 77
gpio set 14
gpio set 62
gpio clear 64
sleep 1
gpio set 64
gpio set 63

gpio set 67
gpio set 68
echo 1200000 > /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq
echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
