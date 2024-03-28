# Badlion install-uninstall script for Linux
A couple of simple scripts to semi-automate the Badlion Client installation and uninstallation on Linux. These scripts assumes that you use some sort of Desktop entry specification compliant environment, which most Linux systems do. These scripts have been tested on Fedora 39 and appear to work at the time of writing.
## How to install:
1. Clone this repo using git:
````
git clone https://github.com/marie-yamasaki/badlion-client-install-uninstall-linux.git badlion
````
2. Go into the newly created folder and download the badlion client executable file from [here](https://www.badlion.net/download/client/latest/linux)
3. Name the executable `BadlionClient`
4. Change the logo.png file to whatever you'd like, as long as the filename remains the same.
5. Run this command in the console in the same directory as you moved the executable into
````
bash install.sh
````
6. Follow the instructions onscreen

## How to uninstall:
1. Download the repo with this command 
````
git clone https://github.com/marie-yamasaki/badlion-client-install-uninstall-linux.git badlion
````
2. Run the `uninstall.sh` file in the terminal using this command in the installed directory using 
````
bash uninstall.sh
````
3. Follow the instructions onscreen

## Acknowledgments 
- This repo is not affilation with Badlion Client, ESL Gmbh. or ESL FACEIT Group in any way, shape or form.
- There is probably a million different ways to do this better. If you find any better ways of doing things, or see some files that I overlooked in the uninstall process, please notify me or create a pull request.