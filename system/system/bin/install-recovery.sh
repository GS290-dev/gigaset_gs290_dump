#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:cc85ff399db83ace6d1171bab184c98d770748b5; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/bootdevice/by-name/boot:9801728:0df2dd7be9955312b1b5c6d10310dfb91ad08b89 \
          --target EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:cc85ff399db83ace6d1171bab184c98d770748b5 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
