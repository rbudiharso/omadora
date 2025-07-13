flatpak install flathub com.spotify.Client
flatpak install flathub md.obsidian.Obsidian
flatpak install flathub com.bitwarden.desktop
flatpak install flathub app.freelens.Freelens

sudo dnf install -y \
  stow \
  wezterm \
  alacritty

curl -fsSL https://install.determinate.systems/nix | sh -s -- install --determinate
git clone https://github.com/rbudiharso/dotfiles.git ~/.dotfiles
stow home-manager
nix run home-manager/master -- init --switch

# Copy over Omarchy applications
source ~/.local/share/omarchy/bin/omarchy-sync-applications || true
