#Get starting files
cd ~
sudo pacman -S stow git base-devel cmake --noconfirm
git clone https://github.com/Gritier/dotfiles
git clone https://github.com/Gritier/installations

#Bash dotfiles
rm .bashrc
cd dotfiles
stow bash
cd ..

#Install ZSH
sudo pacman -S zsh --noconfirm

#Install Oh-My-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
