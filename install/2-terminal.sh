sudo dnf install -y \
  wget curl unzip g++ \
  fd fzf ripgrep zoxide bat \
  wl-clipboard fastfetch btop \
  man tldr less whois plocate bash-completion \
  alacritty unzip

if ! command -v eza &>/dev/null; then
  cd /tmp
  mkdir -p ~/.local/bin
  wget https://github.com/eza-community/eza/releases/download/v0.22.1/eza_x86_64-unknown-linux-gnu.zip
  unzip eza_x86_64-unknown-linux-gnu.zip
  mv eza ~/.local/bin/eza
  cd -
fi
