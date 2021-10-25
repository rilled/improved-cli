#!/bin/bash
sys_name=$(uname -n)
sys_release=$(uname -s)
sys_kernel=$(uname -r)
sys_type=$(uname -i)
sys_os=$(uname -o)

function baseInfo() {
  echo -e "[==------ System Information ------==]"
  echo -e "User:        ${sys_name}"
  echo -e "OS:          ${sys_release} (${sys_os})"
  echo -e "Kernel:      ${sys_kernel}"
  echo -e "Architecture:${sys_type}${R}"
}

function advancedInfo() {
  sudo apt-get install inxi
  echo -e "[==------ Advanced Information ------==]"
  inxi -b
}

baseInfo
advancedInfo
