#!/bin/bash
if [ "$BLOCK_BUTTON" = "1" ]; then
  CHOICE=$(echo -e "Shutdown\nReboot\nSuspend\nExit i3\nReboot into firmware" | dmenu -p "Power:" -l 5 -nb black -nf white)
  case "$CHOICE" in
    "Shutdown")              systemctl poweroff ;;
    "Reboot")            systemctl reboot ;;
    "Suspend")                systemctl suspend ;;
    "Exit i3") i3-msg exit ;;
    "Reboot into firmware") systemctl reboot --firmware-setup ;;
  esac
fi
echo "POWER"
