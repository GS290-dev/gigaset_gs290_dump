#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:16964512:212aafb887d510b7371959d9279ef46fe12cea56; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9167776:0fb51faaf3667d723356b3f8a0de545a18ece0b3 EMMC:/dev/block/platform/bootdevice/by-name/recovery 212aafb887d510b7371959d9279ef46fe12cea56 16964512 0fb51faaf3667d723356b3f8a0de545a18ece0b3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
