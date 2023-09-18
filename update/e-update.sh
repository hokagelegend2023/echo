#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Hapus File Sebelum Nya..."
cd /usr/bin/
rm menu
rm e-update

echo -e " [INFO] Downloading Update File"
sleep 2
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/hokagelegend2023/echo/main/menu/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /root/log-install.txt https://raw.githubusercontent.com/hokagelegend2023/vpnpremium/main/update/log-install.txt
wget -q -O /usr/bin/e-update "https://raw.githubusercontent.com/hokagelegend2023/echo/main/update/e-update.sh" && chmod +x /usr/bin/e-update
echo -e " [INFO] Update Successfully"
sleep 2
exit
