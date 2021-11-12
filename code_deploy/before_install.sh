#!/bin/bash

# EC2 서버에 node와 nvm 설치하기
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node


# 80, 443 포트로 들어오는 사용자들을 8080 포트로 우회하기
sudo iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080
sudo iptables -t nat -A PREROUTING -i eth0 -p tcp --dport 443 -j REDIRECT --to-port 8080


# EC2 서버 작업 폴더 확인
DIR="/home/ubuntu/app"
if [ -d "$DIR" ]; then
  echo folder exists
else 
  mkdir ${DIR}
fi