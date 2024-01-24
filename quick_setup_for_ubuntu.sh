#!/bin/bash

# Update package information
sudo apt update

# Install build essentials
sudo apt install -y build-essential manpages-dev curl git wget npm yarn python3 python3-pip

# Install nvm
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.bashrc
nvm ls-remote
nvm install node
nvm use node

# Install Asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

# Install chezmoi
asdf plugin add chezmoi
asdf install chezmoi 2.45.0
echo "chezmoi 2.45.0" >> ~/.tool-versions

# Install Docker
sudo apt-get install -y docker.io docker-compose

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install Firacode font
sudo add-apt-repository universe
sudo apt update
sudo apt install -y fonts-firacode

# Install Starship
curl -sS https://starship.rs/install.sh | sh

# Install Fuzzy Finder (fzf)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "Setup complete!"

