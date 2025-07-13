# Install bluetooth controls
sudo dnf install -y bluez

# Turn on bluetooth by default
sudo systemctl enable --now bluetooth.service
