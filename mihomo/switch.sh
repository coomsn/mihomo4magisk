#!/system/bin/sh
clear
cd ${0%/*}

. ./mihomo.ini

echo "请选择一个选项："
select choice in "start mihomo" "stop mihomo" "退出"
 do
    case $choice in
        "start mihomo")
            echo "您选择了 start mihomo"
            run
            ;;
        "stop mihomo")
            echo "您选择了 stop mihomo"
            stop
            ;;
        "退出")
            exit 0
            ;;
        *)
            echo "无效选择，请再次选择。"
            ;;
    esac
 done