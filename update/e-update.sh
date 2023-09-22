#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Hapus File Sebelum Nya..."
cd /usr/bin/
rm menu
rm e-update
rm info

cd /root
rm log-install.txt

echo -e " [INFO] Downloading Update File"
sleep 2
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/hokagelegend2023/echo/main/menu/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /root/log-install.txt "https://raw.githubusercontent.com/hokagelegend2023/echo/main/update/log-install.txt"
wget -q -O /usr/bin/e-update "https://raw.githubusercontent.com/hokagelegend2023/echo/main/update/e-update.sh" && chmod +x /usr/bin/e-update
wget -q -O /usr/bin/info "https://raw.githubusercontent.com/hokagelegend2023/echo/main/update/info.sh" && chmod +x /usr/bin/info
wget -q -O /usr/bin/menu-backup "https://raw.githubusercontent.com/hokagelegend2023/echo/main/update/menu-backup.sh" && chmod +x /usr/bin/menu-backup
wget -q -O /usr/bin/menu-theme "https://raw.githubusercontent.com/hokagelegend2023/echo/main/update/menu-theme.sh" && chmod +x /usr/bin/menu-theme
wget -q -O /usr/bin/menu-ip "https://raw.githubusercontent.com/hokagelegend2023/echo/main/menu/menu-ip.sh" && chmod +x /usr/bin/menu-ip
wget -q -O /usr/bin/menu-bot "https://raw.githubusercontent.com/hokagelegend2023/echo/main/menu/menu-bot.sh" && chmod +x /usr/bin/menu-bot
sleep 2
echo -e " [INFO] Downloading Update System"
sleep 2
echo -e " [INFO] Update Successfully"
sleep 2
exit
