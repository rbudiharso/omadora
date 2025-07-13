# Exit immediately if a command exits with a non-zero status
# set -e

# Give people a chance to retry running the installation
trap 'echo "Omadora installation failed! You can retry by running: source ~/.local/share/omadora/install.sh"' ERR

# Install everything
for f in ~/.local/share/omarchy/install/*.sh; do
  echo -e "\nRunning installer: $f"
  source "$f"
done

# Ensure locate is up to date now that everything has been installed
sudo updatedb

gum confirm "Reboot to apply all settings?" && reboot
