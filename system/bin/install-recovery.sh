#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:28194126:29d378b0eb585d8a396952b5f09d34f8d3cfc1ed; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:24610122:66d4e58fd640e2a455516a85039ddeab0d774cb5 EMMC:/dev/block/bootdevice/by-name/recovery 29d378b0eb585d8a396952b5f09d34f8d3cfc1ed 28194126 66d4e58fd640e2a455516a85039ddeab0d774cb5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
