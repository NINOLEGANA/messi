#!/bin/sh
# Script ejecutable de reinicio de iptables

# Eliminar todas las reglas previas de la tabla FILTER, que puedan existir 
iptables -F

# Eliminar todas las reglas previas de la tabla NAT, que puedan existir 
iptables -t nat -F

# Activar el enrutamiento, para que funcione PREROUTING, FORWARD, POSTROUTING...
echo "1" > /proc/sys/net/ipv4/ip_forward

# Listar todas las reglas configuradas de la tabla FILTER
iptables -nL --line-numbers

# Listar todas las reglas configuradas de la tabla NAT
iptables -t nat -nL --line-numbers
 