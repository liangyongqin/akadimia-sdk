# Copyright (c) 2025 liangyq <liangyongqincn@gmail.com>
# 
# SPDX-License-Identifier: Apache-2.0

board_runner_args(jlink "--device=STM32F429IG" "--speed=4000")

include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)