#Install NeoVIM
git clone https://github.com/neovim/neovim.git
sudo pacman -S base-devel cmake unzip ninja curl
cd neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd ..
rm -rf neovim
