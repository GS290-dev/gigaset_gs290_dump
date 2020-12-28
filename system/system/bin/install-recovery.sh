#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:5f4e0979ccc75df86575a9829e736e28a38e3b88; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/bootdevice/by-name/boot:9795584:0ef9e87a8d21a691894eaff5e5f0ed875235a0fe \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:5f4e0979ccc75df86575a9829e736e28a38e3b88 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
