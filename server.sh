#!/data/data/com.termux/files/usr/bin/sh
#colours
R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"
  clear
  printf ${Y}"     __        \n"             
  printf "     | |   (_)_ __  _   ___  __\n"
  printf "     | |   | | '_ \| | | \ \/ / \n"
  printf "     | |___| | | | | |_| |>  <   \n"
  printf "     |_____|_|_| |_|\__,_/_/\_\   \n"
  printf "      Distro    for     Android \n"
printf "    \n"
printf "    \n"
#System info
DEVICE=`getprop ro.product.brand`
MANUFACTURE=`getprop ro.soc.manufacturer`
CPU=`getprop ro.hardware`
GPU=`getprop ro.hardware.egl`
RAM=`grep "MemTotal" /proc/meminfo | cut -f 2 -d ':'`
SERIAL=`getprop ro.serialno`
SDK=`getprop ro.build.version.sdk`
MODEL=`getprop ro.product.model`
PATCH=`getprop ro.build.version.security_patch`
CODE=`getprop ro.product.product.name`
SOC=`getprop ro.soc.model`
sleep 2
echo ${Y}"Device Specs:"
echo "       "
printf ${G}"Device Name    : ${C}$DEVICE\n"
printf ${G}"Model          : ${C}$MODEL\n"
printf ${G}"manufacturer   : ${C}$MANUFACTURE\n"
printf ${G}"Codename       : ${C}$CODE\n"
printf ${G}"CPU            : ${C}$CPU $SOC\n"
printf ${G}"GPU            : ${C}$GPU\n"
printf ${G}"SDK Version    : ${C}$SDK \n"
printf ${G}"Security Patch : ${C}$PATCH\n"
echo "      "
echo "        "
echo "        "
section(){
  echo -e -n "\e[1;96m$DEVICE\e[1;96m@$CODE\e[0m\n"
  sleep 5
  pkg install git -y
  }
  section
