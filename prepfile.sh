#!/bin/bash
# Make a file executable for testing.
dependsCheck() {
    if dpkg -l dos2unix >/dev/null; then
        return
    else
        sudo apt install -y dos2unix
    fi
}
dependsCheck()

dos2unix ${1}
sudo chmod u+x ${1}
echo -e "\e[32m${1} Prepared!\e[0m"
