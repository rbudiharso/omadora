sudo dnf install -y fontawesome-fonts-all \
  jetbrains-mono-fonts-all \
  fira-code-fonts \
  mozilla-fira-sans-fonts \
  mozilla-fira-mono-fonts \
  redhat-mono-fonts \
  redhat-display-fonts \
  redhat-text-fonts \
  cascadia-code-nf-fonts

mkdir -p ~/.local/share/fonts
fc-cache
cd -
