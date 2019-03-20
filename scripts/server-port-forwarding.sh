#!/bin/sh

echo 1 > /proc/sys/net/ipv4/ip_forward 

iptables -F
iptables -t nat -F
iptables -X

# http (port 80)
iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination 10.0.0.2:80
iptables -t nat -A POSTROUTING -p tcp -d 10.0.0.2 --dport 80 -j SNAT --to-source 10.0.0.1

# ssh (port 22, but public port 123)
iptables -t nat -A PREROUTING -p tcp --dport 123 -j DNAT --to-destination 10.0.0.2:22
iptables -t nat -A POSTROUTING -p tcp -d 10.0.0.2 --dport 22 -j SNAT --to-source 10.0.0.1

iptables -t nat -A PREROUTING -p tcp --dport 8888 -j DNAT --to-destination 10.0.0.2:8888
