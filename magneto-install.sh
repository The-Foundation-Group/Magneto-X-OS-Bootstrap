#/bin/bash
cd ~
git clone https://github.com/The-Foundation-Group/Magneto-X-OS-Bootstrap.git .
git clone https://github.com/Arsoth/magneto-x-klipper-config.git ./configs

apt install -y python3-flask

chmod +x ./Peopoly\ Utilities/magneto-run.sh
chmod +x ./Peopoly\ Utilities/rotate-touch.sh

systemctl enable megneto.service
systemctl enable rotate-touch.service
systemctl start magneto.service
systemctl start rotate-touch.service

cp -r ./services/. /etc/systemd/system/
cp -r ./extras/. klipper/klippy/extras/
cd cp -r ./configs/config/. ~/printer_data/config/

rm ./extras
rm ./services
rm -r ./configs