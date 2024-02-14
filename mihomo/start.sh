#!/system/bin/sh
MODDIR="/data/adb/modules/mihomo-module"
SCRIPTS_DIR="/data/adb/mihomo"
busybox="/data/adb/magisk/busybox"
normal="\033[0m"
green="\033[0;32m"
red="\033[91m"
cd ${0%/*}
source ./mihomo.ini
if [ ! -f ${MODDIR}/disable ]; then
	run
fi
if pgrep inotifyd > /dev/null 2>&1 ; then
  pkill -g 20332
fi
${busybox} setuidgid 0:20332 inotifyd "${SCRIPTS_DIR}/mihomo.inotify" "${MODDIR}" > /dev/null 2>&1 &
echo -e "${green}now,mihomo.inotify is running with PID ${red}$(pgrep inotifyd)${green}.${normal}"