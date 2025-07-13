# Prefer dark mode everything
sudo dnf install -y gnome-themes-extra # Adds Adwaita-dark theme
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"

# Setup theme links
mkdir -p ~/.config/omadora/themes
for f in ~/.local/share/omadora/themes/*; do ln -s "$f" ~/.config/omadora/themes/; done

# Set initial theme
mkdir -p ~/.config/omadora/current
ln -snf ~/.config/omadora/themes/tokyo-night ~/.config/omadora/current/theme
source ~/.local/share/omadora/themes/tokyo-night/backgrounds.sh
ln -snf ~/.config/omadora/backgrounds/tokyo-night ~/.config/omadora/current/backgrounds
ln -snf ~/.config/omadora/current/backgrounds/1-Pawel-Czerwinski-Abstract-Purple-Blue.jpg ~/.config/omadora/current/background

# Set specific app links for current theme
ln -snf ~/.config/omadora/current/theme/wofi.css ~/.config/wofi/style.css
ln -snf ~/.config/omadora/current/theme/neovim.lua ~/.config/nvim/lua/plugins/theme.lua
mkdir -p ~/.config/btop/themes
ln -snf ~/.config/omadora/current/theme/btop.theme ~/.config/btop/themes/current.theme
mkdir -p ~/.config/mako
ln -snf ~/.config/omadora/current/theme/mako.ini ~/.config/mako/config
