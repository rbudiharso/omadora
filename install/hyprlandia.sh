# Install hyprshot
$ git clone https://github.com/Gustash/hyprshot.git Hyprshot
$ ln -s $(pwd)/Hyprshot/hyprshot $HOME/.local/bin
$ chmod +x Hyprshot/hyprshot

sudo dnf install -y \
  hyprland hyprshot hyprlock hypridle mate-polkit hyprland-qtutils \
  wofi waybar mako swaybg \
  xdg-desktop-portal-hyprland xdg-desktop-portal-gtk

# Start Hyprland on first session
echo "[[ -z \$DISPLAY && \$(tty) == /dev/tty1 ]] && exec Hyprland" >~/.bash_profile
