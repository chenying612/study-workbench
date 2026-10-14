#!/bin/bash
# 学习工作台 - 一键启动脚本
cd "/Users/summer/Library/Application Support/TRAE SOLO CN/ModularData/ai-agent/work-mode-projects/6a9425bf2bdc4bffbfdc421a"

# 检查 8899 端口是否已被占用
if lsof -i :8899 -sTCP:LISTEN >/dev/null 2>&1; then
  echo "服务已在运行，直接打开页面..."
else
  echo "启动本地服务器..."
  python3 -m http.server 8899 >/tmp/study-workbench.log 2>&1 &
  sleep 1
fi

# 打开浏览器
open "http://localhost:8899/学习工作台.html"
