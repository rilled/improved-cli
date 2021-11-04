#!/bin/bash
# ex: mm /dev/sda1 test ext4 /mnt
run() {
  if [[ ! -z "$1" && ! -z "$2" && ! -z "$3" && ! -z "$4" ]]; then
          FILESYSTEM="mkfs.${3}"
          mkdir "${4}/${2}" && echo "Created ${4}/${2}"
          mkfs."${1}" # create filesystem
          mount ${1} "${4}/${2}" && echo "Mounted ${1} to ${4}/${2}."
  else
          echo "Use: mm <drive> <label> <fs> <location>"
  fi
}
run
