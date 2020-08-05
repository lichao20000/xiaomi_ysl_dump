#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32791886:928e9021cda5fefe9f9cc011c4240ad7170671e8; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27925834:db41ed901ab38ebe43060dc864e6af7cd9886244 EMMC:/dev/block/bootdevice/by-name/recovery 928e9021cda5fefe9f9cc011c4240ad7170671e8 32791886 db41ed901ab38ebe43060dc864e6af7cd9886244:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
