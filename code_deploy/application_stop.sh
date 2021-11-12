#!/bin/bash
# 만약 실행되고있는 노드 서버가 있다면 종료시킨다.

echo "Stopping any existing node servers"
cd /home/ubuntu/app
npm uninstall -g pm2
pkill node