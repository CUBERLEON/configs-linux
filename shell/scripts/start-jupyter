#!/bin/sh

echo 1 | sudo tee /proc/sys/net/ipv4/ip_forward > /dev/null

sudo iptables -F
sudo iptables -t nat -F
sudo iptables -X

sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port 8888
sudo iptables -t nat -I OUTPUT -p tcp -d 127.0.0.1 --dport 80 -j REDIRECT --to-ports 8888

ps ax | grep jupyter-notebook | awk '{print $1;}' | sudo xargs kill
export JUPYTER_PATH=$2:$JUPYTER_PATH
export PYTHON_PATH=$2:$PYTHON_PATH
jupyter-notebook --notebook-dir="$1" --ip 0.0.0.0 --port 8888 &
