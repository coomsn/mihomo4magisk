#!/system/bin/sh
MODDIR="/data/adb/modules/mihomo-module"
SCRIPTS_DIR="/data/adb/mihomo/scripts" #####
busybox="/data/adb/magisk/busybox"
normal="\033[0m"
green="\033[0;32m"
red="\033[91m"
cd ${0%/*}
source ./mihomo.scripts

if [ ! -f ${MODDIR}/disable ]; then
	run_proxy
fi
if pgrep inotifyd > /dev/null 2>&1 ; then
  pkill -g 20000
fi
${busybox} setuidgid 0:20000 inotifyd "${SCRIPTS_DIR}/mihomo.inotify" "${MODDIR}" > /dev/null 2>&1 &
echo -e "${green}now,mihomo.inotify is running with PID ${red}$(pgrep inotifyd)${green}.${normal}"
