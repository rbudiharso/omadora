if ! command -v nvim &>/dev/null; then
  sudo dnf install -y nvim luarocks tree-sitter-cli

  # Install LazyVim
  rm -rf ~/.config/nvim
  git clone https://github.com/LazyVim/starter ~/.config/nvim
  cp -R ~/.local/share/omadora/config/nvim/* ~/.config/nvim/
  rm -rf ~/.config/nvim/.git
  # I like relative number, uncomment if you don't
  # echo "vim.opt.relativenumber = false" >>~/.config/nvim/lua/config/options.lua
fi
