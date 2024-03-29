#!/bin/bash
#
# Description: Backup VyOS configuration to a USB device
#
dest="/media/usb-backup"
disk="/dev/disk/by-id/usb-SanDisk__Cruzer_Fit_02000904062321085848-0:0-part1"
user="vyos"

# Mount formatted usb drive
if ! findmnt -M "${dest}"; then
  sudo mkdir -p "${dest}"
  sudo mount.exfat-fuse -o "rw,uid=${user},gid=vyattacfg" "${disk}" "${dest}"
fi

# Backup
if findmnt -M "${dest}"; then
  timestamp="$(date +%Y%m%d%H%M%S)"

  # VYOS Command
  mkdir -p "${dest}/vyos/"
  /opt/vyatta/bin/vyatta-op-cmd-wrapper show configuration commands | gzip -3 -c > "${dest}/vyos/vyos-commands.${timestamp}.gz"

  # VYOS Config
  tar --exclude="overlay*" --exclude="omada*" -zvcf "${dest}/vyos/vyos-config.${timestamp}.tar.gz" /config

  # Omada controller backups
  mkdir -p "${dest}/omada/"
  rsync -r /config/containers/omada/data/autobackup/ "${dest}/omada/"

  # Delete backups older than 10 days
  find "${dest}" -type f -mtime +30 -delete
else
  echo "${dest} is not a mount point."
fi
