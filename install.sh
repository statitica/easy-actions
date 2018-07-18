#!/bin/bash

echo "Choose a user to install the scripts for"
echo "or hold CTRL-C to cancel and exit"
select you in "$(ls /home)"
do
  mkdir -p /home/$you/.easy-actions/scripts
  mkdir -p /home/$you/.local/share/file-manager/actions
  cp -Rv ./scripts/Email /home/$you/.easy-actions/scripts
  cp -Rv ./scripts/PDF /home/$you/.easy-actions/scripts
  cp -Rv ./scripts/Printing /home/$you/.easy-actions/scripts
  cp -Rv ./scripts/Scanning /home/$you/.config/caja/scripts
  chmod 755 ./scripts/Scanning /home/$you/.config/caja/scripts/Scanning/Scan_Here
  chmod 755 ./scripts/Scanning /home/$you/.config/caja/scripts/Scanning/Scan_For_Email
  for file in $(ls ./launchers)
    do
      sed "s/username/$you/" ./launchers/$file > /home/$you/.local/share/file-manager/actions/$file
      echo "$file"
    done
    notify-send 'easy-actions installed and ready for use'
  break
done
