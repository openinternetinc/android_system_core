#!/system/bin/sh

echo "running force_ttl script";
iptables -t mangle -D POSTROUTING -j TTL --ttl-set 64;
iptables -t mangle -A POSTROUTING -j TTL --ttl-set 64;
