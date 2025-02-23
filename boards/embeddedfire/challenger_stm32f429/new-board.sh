#!/bin/bash

# 获取输入参数
board_name=$1

# 检查是否提供了输入参数
if [ -z "$board_name" ]; then
  echo "请提供一个板卡名称作为参数"
  exit 1
fi

# 定义生成的文件名
board_cmake="board.cmake"
board_yml="board.yml"
kconfig_defconfig="Kconfig.defconfig"
kconfig_board="Kconfig.${board_name}"
board_defconfig="${board_name}_defconfig"
board_dts="${board_name}.dts"
board_yaml="${board_name}.yaml"

mkdir ./doc
mkdir ./support

# 生成 board.cmake 文件
touch $board_cmake
echo "$board_cmake 生成完成"

# 生成 board.yml 文件
cat <<EOL > "$board_yml"
board:
  name: ${board_name}
  full_name: 
  vendor: 
  socs:
    - name: 
EOL
echo "$board_yml 生成完成"

# 生成 Kconfig.defconfig 文件
touch $kconfig_defconfig
echo "$kconfig_defconfig 生成完成"

# 生成 Kconfig.stm32f429i_disc1_defconfig 文件
touch $kconfig_board
echo "$kconfig_board 生成完成"

# 生成 stm32f429i_disc1.dts 文件
touch $board_defconfig
echo "$board_defconfig 生成完成"

# 生成 stm32f429i_disc1.dts 文件
touch $board_dts
echo "$board_dts 生成完成"

# 生成 stm32f429i_disc1.yaml 文件
touch $board_yaml
echo "$board_yaml 生成完成"
