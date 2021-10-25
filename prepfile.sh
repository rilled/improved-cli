#!/bin/bash
prepfile() {
        dos2unix ${1}
        sudo chmod u+x ${1}
        echo -e "\e[32m${1} Prepared!\e[0m"
}
