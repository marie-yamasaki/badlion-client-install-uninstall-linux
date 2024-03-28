#start
clear
echo -e "Starting the installation process."
#assumes the user has downloaded the file from https://www.badlion.net/download/client/latest/linux

#checks if the files exists
filepaths=(
    "BadlionClient"
    "logo.png"
    "badlion.desktop"
)
for file in "${filepaths[@]}"; do
if ! [ -f "$file" ]; then
    echo -e "It does not appear that you have installed every file required for installation. Please make sure the cloned the entire repository from https://github.com/marie-yamasaki/badlion-client-install-uninstall-linux.git and downloaded the BadlionClient file from https://www.badlion.net/download/client/latest/linux.\n Also make sure to place the BadlionClient file in this directory and name it BadlionClient!"
    #exit
fi
done

#check if it is already installed
if [ -f "/usr/bin/BadlionClient" ]; then
    echo "It appears that BadlionClient is already installed on this system. Do you wish to overwrite that install? (yes/no)"
    read consent
    if [ "$consent" != "yes" ]; then
        echo "Overwriting previous install"
        sudo rm /usr/bin/BadlionClient
    else
        echo "Will not overwrite previous install. This script might produce an error, but it should be fine."
    fi
fi

#move the file from current dir to /usr/bin/
chmod a+x BadlionClient
sudo cp BadlionClient /usr/bin/
echo "Moving the BadlionClient file"

#move the "custom icon"
echo "Moving the logo file"
sudo mkdir /usr/share/icons/badlion
sudo cp logo.png /usr/share/icons/badlion/

#move the desktop file
echo "Moving the desktop file"
sudo cp badlion.desktop /usr/share/applications/

#run the Client
echo "Installation finished. Running the client. To close this window, close the client."
/usr/bin/BadlionClient