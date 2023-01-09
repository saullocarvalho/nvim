# Add neovim 0.7+ package repository
sudo apt install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable -y

# Add solc repository
sudo add-apt-repository ppa:ethereum/ethereum -y

# Install main packages
sudo apt update \
    && sudo apt install -y \
            golang-go \
            git \
            php-cli \
            unzip \
            curl \
            neovim \
            npm \
            solc

# Create repos directory
mkdir -p repos

# Install packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install gopls
go install golang.org/x/tools/gopls@latest

# Install composer
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer

# Install phpactor
PHP_ACTOR=repos/phpactor
git clone https://github.com/phpactor/phpactor $PHP_ACTOR
cd $PHP_ACTOR
composer install --ignore-platform-req=ext-curl --ignore-platform-req=ext-dom --ignore-platform-req=ext-xmlwriter --ignore-platform-req=ext-xml --ignore-platform-req=ext-simplexml
sudo ln -s $PWD/bin/phpactor /usr/local/bin/phpactor
cd ../..

# Install pyright
sudo npm i -g pyright

# Install solc
sudo npm i -g solc
