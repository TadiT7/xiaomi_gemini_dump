#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:28202318:482a00ba61f96c62a1aa97637fa6326c1908c986; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:24610122:c2b0c19312c8e418fff96a862c7a86f2ad5f0093 EMMC:/dev/block/bootdevice/by-name/recovery 482a00ba61f96c62a1aa97637fa6326c1908c986 28202318 c2b0c19312c8e418fff96a862c7a86f2ad5f0093:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
