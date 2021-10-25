#!/bin/bash
mount-ext4() {
  if [[ ! -z "$1" && ! -z "$2" ]]; then
          mkdir /mnt/${2} && echo "Created /mnt/${2}"
          mkfs.ext4 ${1}
          mount ${1} /mnt/${2} && echo "Mounted ${1}."
  else
          echo "Use: m-ext4 <drive> <label>"
  fi
}


sudo mkdir /mnt/<label>
mkfs.ext4 <drive>
sudo mount <drive> /mnt/<label>
