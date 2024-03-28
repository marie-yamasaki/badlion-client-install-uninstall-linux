#start
clear
echo -e "Starting uninstall. Do you wish to proceed? (yes/no)"
#check if the user actually wants to uninstall
read consent
if [ "$consent" != "yes" ]; then 
    echo -e "\n You did not provide consent to proceed with the uninstall. \n The program will not uninstall Badlion Client."
    exit
fi

#check if badlion is running - hopefully you have pgrep installed
if pgrep BadlionClient > /dev/null; then
    echo "BadlionClient is running (possibly in the background). Please kill this process and run the program again."
    exit
fi

#actually run the uninstall script
echo -e "\n Proceeding with uninstall."

#delete executable in /usr/bin
sudo rm /usr/bin/BadlionClient
echo -e "\n Removed BadlionClient executable"

#delete the icon in /usr/share/icons/Badlion
sudo rm -rf /usr/share/icons/Badlion
echo -e "Deleted Badlion icon"

#delete desktop file in /usr/share/applications/badlion.desktop
sudo rm /usr/share/applications/badlion.desktop
echo "Deleted .desktop file"

#delete badlion files in /home/$USER/.minecraft folder
#should use a variable and a loop, but whatever ist mir egal, solange es funktioniert

#delete BLClient-Cosmetic-Outfits
rm -rf /home/$USER/.minecraft/BLClient-Cosmetic-Outfits
echo "Deleted BLClient-Cosmetic-Outfits"

#delete BLClient-HyStats
rm -rf /home/$USER/.minecraft/BLClient-HyStats
echo "Deleted BLClient-HyStats"

#del BLClient-Menu-Styles
rm -rf /home/$USER/.minecraft/BLClient-Menu-Styles
echo "Deleted BLClient-Menu-Styles"

#del BLClient-Mod-Profiles
rm -rf /home/$USER/.minecraft/BLClient-Mod-Profiles
echo "Deleted BLClient-Mod-Profiles"

#delete badlion_settings.json
#"/home/$USER/.minecraft/badlion_settings.json"
rm /home/$USER/.minecraft/badlion_settings.json
echo "Deleted badlion_settings.json"

#delete badlion_quick_launch_worlds.json
rm /home/$USER/.minecraft/badlion_quick_launch_worlds.json
echo "Deleted badlion_quick_launch_worlds.json"

#delete config files
sudo rm -rf "/home/$USER/.config/Badlion Client"
sudo rm -rf "/home/$USER/.config/BadlionClient" #I don't know why it makes two of these. I just know that it does.
echo "Deleted config files"

echo -e "\n\n Deletion completed. Should probably double check, but ¯\_(ツ)_/¯"
