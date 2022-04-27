#!/bin/bash

# CLEAN
rm -Rf ~/.oh-my-zsh/ ~/.zgen/ ~/.zshrc

sudo apt update
sudo apt install -y tmux zsh git software-properties-common grc wget curl
#sudo add-apt-repository ppa:fontforge/fontforge
#sudo apt-get update
#sudo apt-get install -y fontforge

# FONT
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
cd -

# OH MY ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# ZGEN
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"

# OH MY ZSH
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# OH MY TMUX
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
/bin/cp -Rf .tmux/.tmux.conf.local .
cd -

# COPY MY CONFIG
/bin/cp -Rf .zshrc ~/
/bin/cp -Rf .tmux.conf ~/
/bin/cp -Rf .tmux.local.conf ~/
mkdir -p ~/.zshrc_profiles

# DEFAULT BASH
#sudo usermod --shell /usr/bin/zsh $USER

zsh
