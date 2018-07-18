# easy-actions
Actions for file explorers in Linux

### Requirements:
* file-manager-actions (e.g. caja-actions, nautilus-actions, etc)
* scanimage
* libreoffice
* poppler-utils
* Thunderbird
* zenity
* imagemagick

To install these, there are two options:

The easiest way is to extract the files, and then open the folder where you extracted them. Then, right click, and select "Open Terminal Here" In the terminal, type ```bash install.sh``` and let the script do all of the work for you. In time, further options will be added to the install script.

To install these for another user, you need to have access to elevated privileges. If you know what that means, use the `sudo bash install.sh` command, and select the user from the list. Run the script multiple times to install for multiple users.

The second, more difficult option is to extract the scripts folders to any folder of your choice, copy the launcher(s) you require to `/home/<user_name>/.local/share/file-manager/actions`, edit the `.desktop` file to point the launcher at the script and then restart the file manager.

#### Troubleshooting
The actions may not appear in your file manager right away. On my system they did, on another I had to restart the session manager (log out and then log in again).

PDF to text conversion may not be completely accurate. This is dependent on the poppler-utils app, which has varying success rates.

Script requests are more than welcome, as are contributions from the community.
