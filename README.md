# mihomo4magisk

## #!/system/bin/sh
  clear; cd "${0%/*}"
## define color
  normal=$(printf '\033[0m'); green=$(printf '\033[0;32m'); red=$(printf '\033[91m')
  export PATH="/data/adb/magisk:/data/adb/ksu/bin:$PATH:/system/bin"
## bin files 🔴
  kernel="../binary_files/mihomo"
## config files 🔴
  config_file="../config_files/air.yaml" # can modify(⁠ ͡⁠°⁠ᴥ⁠ ͡⁠°⁠ ⁠ʋ⁠)
## directory 
  work_dir="../data_files/" # providerd & rules & geo and so on .
## mode 🔴
  mode="tun" # tun or tproxy
