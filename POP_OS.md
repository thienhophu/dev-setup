# POP_OS (UBUNTU Distro)

## Use this document at your own risk. =))

## Essential Apps

### Snap

```
sudo apt install snapd
```

### VSCODE

```
snap install code --classic
```

### Skype

##### For using Unikey, pls download .deb setup from Skype.com

```
snap install skype --classic

```

### Postman

```
snap install postman
```

## Dev setup

### Git

```
git config --global user.name "Thien Ho"
git config --global user.email thien.hophu@gmail.com
```

### ZSH

```
sudo apt-get install zsh
```

### Oh My Zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### SSH Key

```
ssh-keygen
//(without using passpharse for dev)
cat ~/.ssh/id_rsa.pub
```

### MYSQL - Server

```
sudo apt install mysql-server
sudo systemctl status mysql

sudo mysql_secure_installation
// no validate password
// y y y y
sudo mysql -u root -p

// sql command
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234';
FLUSH PRIVILEGES;
exit;

mysql -u root -p
```

### PHP

```
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.3
sudo apt-get install php7.3-curl php7.3-gd php7.3-json php7.3-mbstring php7.3-intl php7.3-mysql php7.3-xml php7.3-zip php7.3-bcmath
sudo apt install php-imagick
```

### Composer

```
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
rm composer-setup.php
echo 'export PATH=$HOME/bin:/usr/local/bin:$HOME/.config/composer/vendor/bin:$PATH' >> ~/.zshrc
source ~/.zshrc
echo $PATH
```

#### Composer Libaries

```
composer global require hirak/prestissimo
```

## Valet

```
sudo apt-get install network-manager jq xsel libnss3-tools
composer global require cpriego/valet-linux
valet install
valet park
service apache2 stop
valet restart
```

### NVM

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | zsh
nvm install 10
npm install -g avn avn-nvm avn-n
```

##### Auto Detect and install in source file (zshrc, bash_profile,...) (alternative is avn, which only switch node)

```
# NVM Auto use
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
```

### Yarn

```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install --no-install-recommends yarn
```

### GitEye

##### Copy to content

```
sudo chown -R root:root GitEye
sudo cp -r GitEye /opt/GitEye
```

##### Open GitEye in terminal (Note: It will keep running GitEye on that tab).

```
sudo ln -s /opt/GitEye/GitEye /usr/local/bin/GitEye
```

## Customize OS

### Flash for Firefox

```
sudo apt install ubuntu-restricted-extras
sudo apt-add-repository multiverse && sudo apt update
sudo apt install flashplugin-installer
```

### GRUB Customizer

```
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt-get update
sudo apt-get install grub-customizer
```
