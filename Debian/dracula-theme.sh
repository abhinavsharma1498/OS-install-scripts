#!/bin/bash

echo "Installing starship"
sudo snap install starship
echo "
# Starship
eval \"\$(starship init bash)\"" >> .bashrc

echo "Installing Dracula theeme for tilix"
git clone https://github.com/dracula/tilix.git  /tmp/tilix
mkdir -p ~/.config/tilix/schemes
cp /tmp/tilix/Dracula.json ~/.config/tilix/schemes/
rm -rf /tmp/tilix
echo "To select dracula theme
1. Go to Preferences and select your Tilix profile
2. Select Colors tab
3. Select Dracula from dropdown"

echo "Installing Dracula theeme for vim"
mkdir -p ~/.vim/pack/themes/start
git clone https://github.com/dracula/vim.git ~/.vim/pack/themes/start

echo "Installing Dracula theeme for gedit"
mkdir -p ~/.local/share/gedit/styles/
wget https://raw.githubusercontent.com/dracula/gedit/master/dracula.xml -O ~/.local/share/gedit/styles/
echo "Now, activate in Gedit's preferences dialog"

echo "Installing Dracula theeme for visual studio code"
echo "For vs code:
1. Go to View -> Command Palette or press Ctrl+Shift+P
2. Then enter Install Extension
3. Write Dracula Official
4. Select it or press Enter to install"

echo "Installing Dracula theeme for firefox"
echo "Open firefox addons: https://addons.mozilla.org/en-US/firefox/addon/dracula-dark-colorscheme/
Search for Dracula and click on install"

echo "Installing Dracula theeme for gtk"
wget https://github.com/dracula/gtk/archive/master.zip -O /tmp/gtk.zip
unzip /tmp/gtk.zip -d /tmp
mv /tmp/gtk-master /usr/share/themes/Dracula
rm -rf /tmp/gtk.zip
gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"

echo "Installing Dracula theeme for gtk icons"
wget https://github.com/dracula/gtk/files/5214870/Dracula.zip -O /tmp/gtk.zip
unzip /tmp/gtk.zip -d /usr/share/icons/
rm -rf /tmp/gtk.zip
gsettings set org.gnome.desktop.interface icon-theme "Dracula"

echo "Installing gnome-tweak tools"
sudo apt install gnome-tweaks
echo "Now, to activate:
1. Open tweak tools and goto Appearace tab
2. Select Dracula in Applications and Icons"

echo "Installing Dracula theeme for libreoffice"
mkdir -p ~/.config/libreoffice/*/user/config/
wget https://raw.githubusercontent.com/dracula/libreoffice/master/dracula.soc -O ~/.config/libreoffice/*/user/config/dracula.soc

echo "Installing Dracula theeme for telegram"
git clone https://github.com/dracula/telegram.git /tmp/telegram
mv /tmp/telegram/colors.tdesktop-theme ~/Downloads/colors.tdesktop-theme
echo "Now:
1. Open telegram > Settings > Chat settings
2. Select choose from file under Background section
3. Open ~/Downloads/colors.tdesktop-theme
4. You can remove ~/Downloads/colors.tdesktop-theme once theme is applied on Telegram"

echo "Installing Dracula theeme for grub"
git clone https://github.com/dracula/grub.git /tmp/grub
sudo mv /tmp/grub/dracula /usr/share/grub/themes/
rm -rf /tmp/grub
echo "

# Path to grub theme
GRUB_THEME=\"/usr/share/grub/themes/theme.txt\""
sudo update-grub
echo "If grub does not show while boot:
1. Open /etc/default/grub using sudo gedit /etc/default/grub
2. Update the following two flags with the displayed values:
    GRUB_TIMEOUT_STYLE=menu
    GRUB_TIMEOUT=2
3. Run sudo update-grub"