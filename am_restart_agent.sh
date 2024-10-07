#!/bin/bash

# 检查进程是否在运行
pgrep -x "nezha-agent" > /dev/null

# 如果没有运行，则启动 agent
if [ $? -ne 0 ]; then
    nohup /home/${USER}/.nezha-agent/start.sh >/dev/null 2>&1 &
fi


