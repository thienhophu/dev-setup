curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
rm composer-setup.php
echo 'export PATH=$HOME/bin:/usr/local/bin:$HOME/.config/composer/vendor/bin:$PATH' >> ~/.zshrc
source ~/.zshrc