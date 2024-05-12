#!/system/bin/sh

normal="\033[0m"
red="\033[91m"

source ./mihomo.scripts

stop_proxy > /dev/null 2>&1
echo "${red}代理已关闭。${normal}"