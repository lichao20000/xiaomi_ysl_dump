#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:31051086:56bee9ad05384a0d8bbec7ed16252f33f9c96195; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26944842:321e742157a568bfe7573f7874a6a29d5db54b33 EMMC:/dev/block/bootdevice/by-name/recovery 56bee9ad05384a0d8bbec7ed16252f33f9c96195 31051086 321e742157a568bfe7573f7874a6a29d5db54b33:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
