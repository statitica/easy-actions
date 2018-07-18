#!/bin/bash

echo "Choose a user to install the scripts for"
echo "or hold CTRL-C to cancel and exit"
select you in "$(ls /home)"
do
  mkdir -p /home/$you/.easy-actions/scripts
  mkdir -p /home/$you/.local/share/file-manager/actions
  cp -Rv ./scripts/* /home/$you/.easy-actions/scripts
  for file in $(ls ./launchers)
    do
      sed "s/username/$you/" ./launchers/$file > /home/$you/.local/share/file-manager/actions/$file
    done
    notify-send 'easy-actions installed and ready for use'
  break
done
