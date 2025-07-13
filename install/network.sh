# Install iwd explicitly if it wasn't installed
if ! command -v iwd &>/dev/null; then
  sudo dnf swap -y wpa_supplicant iwd
  sudo systemctl restart NetworkManager
fi
