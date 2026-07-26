<img width="3200" height="1080" alt="screenshot" src="https://github.com/user-attachments/assets/6494ea7b-c841-45f4-a712-6370e63383dc" />

Hello future Donkan or random user of my i3wm rice, this is the first ever rice that I publish online so I hope you like it because I use it almost everyday. 🫪🍚  
Make sure to read all of this carefully unless you know what you're doing but I'm pretty sure all of what is below works.


Before you can clone this rice you have to install a few packages:  

i3-wm, 
i3blocks, 
picom, 
kitty, 
feh, 
udiskie, 
xss-lock, 
i3lock, 
networkmanager, 
network-manager-applet, 
maim, 
xclip, 
pulseaudio, 
xorg-xrandr, 
xorg-xset, 
xorg-setxkbmap, 
xorg-xinput, 
lm_sensors, 
nvidia-utils (if you have a Nvidia GPU), 
wireless_tools, 
bluez, 
bluez-utils, 
playerctl, 
base-devel, 
libx11, 
libxinerama, 
libxft, 
git
ttf-dejavu

Here's the command for Arch Linux users:
```bash
sudo pacman -S git ttf-dejavu i3-wm i3blocks picom kitty feh udiskie xss-lock i3lock networkmanager network-manager-applet maim xclip pulseaudio xorg-xrandr xorg-xset xorg-setxkbmap xorg-xinput lm_sensors nvidia-utils wireless_tools bluez bluez-utils playerctl base-devel libx11 libxinerama libxft
```


Here is a step by step guide to the installation:

1. Clone the repo
```bash
git clone https://github.com/Donkan1911/Donkan-i3wm-rice.git ~/dotfiles
cd ~/dotfiles
```
2. Build and install dmenu
```bash 
cd ~/dotfiles/dmenu
make clean
make
sudo make install
```
3. Link the config files into place
```bash
mkdir -p ~/.config/i3 ~/.config/i3blocks ~/.config/kitty ~/.config/picom
ln -s ~/dotfiles/i3/config ~/.config/i3/config
ln -s ~/dotfiles/i3blocks/config ~/.config/i3blocks/config
ln -s ~/dotfiles/i3blocks/scripts ~/.config/i3blocks/scripts
ln -s ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/dotfiles/picom/picom.conf ~/.config/picom/picom.conf
chmod +x ~/dotfiles/i3blocks/scripts/power.sh
```

4. To log into i3, pick i3 in your display manager or if you use startx, add "exec i3" to your .xinitrc file.



To make sure that this rice matches your gear and machine, you will have to delete some options or change some settings:

1. Mouse name and acceleration in ~/dotfiles/i3/config

How to adapt it: run the command 
```bash 
xinput list 
``` 
and find your mouse's exact name and replace "ROCCAT ROCCAT Kone Pro" with it and change the acceleration to whatever you want

2. Battery block in ~/dotfiles/i3blocks/config

How to adapt it: 
```bash
run ls /sys/class/power_supply/ 
```
and replace "BAT1" by whatever shows up  
If you are on a desktop computer with no battery, you can delete the block from the config

4. Monitor layout in ~/dotfiles/i3/config

How to adapt it: run 
```bash
xrandr
```
to see a list of your output names and rewrite the xrandr line in the config with whatever monitor and options you want  
You can delete this line if you only have one screen, i3 will just use whatever resolution and refresh rate is automatically detected

5. Wallpaper in ~/dotfiles/i3/config

How to change it: replace the path with your own image

6. Keyboard layout in ~/dotfiles/i3/config

How to change it: just replace "us -variant intl" with whatever your keyboard layout is

7. CPU temperature block in ~/dotfiles/i3blocks/config

How to adapt it: run 
```bash
sensors
```
to find the correct temperature label for your CPU, then replace "Package id 0" with it

8. GPU temperature block in ~/dotfiles/i3blocks/config

How to change it : for Nvidia GPUs just make sure you have the Nvidia driver and nvidia-utils installed, for other GPUs I have absolutely no idea what to do so you can either do the research yourself or delete this block.

I'm pretty sure that I didn't forget to mention any options that need to be adapted to your gear, but if I did, then good luck I guess 🫪
