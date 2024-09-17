#Update everything
sudo apt-get update
#Install terminal related packages
sudo apt install stow starship zsh tmux
#Clone my repo
git clone https://github.com/Gritier/dotfiles.git
#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#Customize ZSH and Oh-My-ZSH
git clone https://github.com/catppuccin/zsh-syntax-highlighting.git
mkdir ~/.oh-my-zsh/custom/themes/zsh-syntax-highlighter
cp zsh-syntax-highlighting/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh ~/.oh-my-zsh/custom/themes/zsh-syntax-highlighter/catppuccin-mocha.zsh
rm -rf zsh-syntax-highlighting
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#Stow terminal files
rm ~/.bashrc
cd dotfiles
stow bash
stow zsh
stow oh-my-zsh
stow tmux
cd ..
#Install NeoVIM
sudo apt install ninja-build gettext cmake unzip curl build-essentials
git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd ..
rm -rf neovim
cd dotfiles
stow nvim
cd ..
#Install other dev tools
curl -fsSL https://deb.nodesource.com/setup_22.x -o nodesource_setup.sh
sudo -E bash nodesource_setup.sh
sudo apt-get install -y nodejs
sudo apt ruby rust python
python -m ensurepip --upgrade
