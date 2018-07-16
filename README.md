# easy-actions
Actions for file explorers in Linux

While these scripts are compatible with multiple file explorers, for now the 
installer will only work with caja and caja-actions. 

### Requirements:
* caja-actions
* libreoffice
* poppler-utils
* Thunderbird

To install these, there are two options: 

The easiest way is to extract the files, and then open the folder where you 
extracted them. Then, right click, and select "Open Terminal Here"
In the terminal, type ```sudo bash install.sh``` and let the script do all of the work for you.
In time, further options will be added to the install script.

The second, more difficult option is to extract the scripts folders to 
```/home/<your_username>/.config/caja/scripts```, and then give it permission to execute 
with the command ```sudo chmod 755 /path/to/script```

Script requests are more than welcome, as are contributions from the community.
