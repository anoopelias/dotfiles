sudo apt-get update

# Change taskbar to bottom
gsettings set com.canonical.Unity.Launcher launcher-position Bottom

# Compile and install vim from source so that clipboad is enabled
# https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source
sudo apt install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev git
sudo apt remove vim vim-runtime gvim
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-pythoninterp=yes \
            --with-python-config-dir=/usr/lib/python2.7/config \
            --enable-python3interp=yes \
            --with-python3-config-dir=/usr/lib/python3.5/config \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local
make VIMRUNTIMEDIR=/usr/local/share/vim/vim80
sudo apt install checkinstall
sudo checkinstall

# Other packages
sudo apt-get install curl git xsel tmux zsh make firefox chromium-browser fonts-inconsolata

sudo apt-get install keepass2

# For 17.04 only
# sudo apt-get install exfat-fust exfat-utils
# sudo apt-get install keepassxc

sudo apt-get install fonts-inconsolata

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Set default shell as zsh - Needs logout and login
chsh -s $(which zsh)

# Symlinking the dot files
# This needs to be done after installation of 'oh my zsh' or else, it will go and replace
# .zshrc again
~/dotfiles/.make.sh

# Install vimium-ff

# Configure keyboard shortcut to move windows between screens - Only for Unity
# See https://askubuntu.com/questions/141752/keyboard-shortcut-to-move-windows-between-monitors
apt-get install compizconfig-settings-manager compiz-plugins-extra


# For pbcopy / pbpaste - Corresponding entries are there in .zshrc
sudo apt-get install xclip

# Install nvm
# See link https://github.com/creationix/nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

# Install yarn
# https://yarnpkg.com/lang/en/docs/install/

# Install emacs
sudo apt-get install emacs
# Install emacs evil mode
#  M-x package-refresh-contents
#  M-x package-install RET evil

# Change terminal font to 'Inconsolata Medium'


