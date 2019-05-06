# Ubuntu 19.04

## Post Install OS
```
sudo apt-get autoremove
sudo apt-get update
sudo apt-get upgrade
```

## Snap with Tools
#### Visual Studio
```
snap install code --classic
```
#### Discord
```
snap install discord
```
#### Postman
```
snap install postman
sudo snap switch --channel=candidate postman
sudo snap refresh postman
```
#### Vectr
```
snap install vectr
```
#### GitHub Desktop
```
snap install github-desktop
```
##### Gimp
```
snap install gimp
```
##### Android Studio
```
snap install android-studio --classic
```
##### Enable KVM
```
sudo apt-get install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils libvirt-bin ubuntu-vm-builder
sudo adduser $USER kvm
sudo chown $USER /dev/kvm
```

## Curl
```
sudo apt-get install curl
```

## Git
```
sudo apt-get install git
```
##### Config user info
```
git config --global user.name "Thien Ho"
git config --global user.email thien.ho@manifera.com
```

## Zsh
```
sudo apt-get install zsh
```

##### Set default shell
```
chsh -s $(which zsh)
//Logout
```
##### Pick option 2 when open terminal the first time after install zsh

### Oh My Zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## SSH Keys
##### Run
```
ssh-keygen
//(without using passpharse for dev)
```

##### For SSH Access:
```
ssh-copy-id username@remote_host
```
##### For manual
```
cat ~/.ssh/id_rsa.pub
```

## MySQL 5.7
##### Install
```
sudo apt install mysql-server
```
##### Check
```
sudo systemctl status mysql
```
##### Setup
```
sudo mysql_secure_installation
// no validate password
// y y y y
```
##### Login into MySQL
```
sudo mysql -u root -p
```
##### Change role
```
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234';
FLUSH PRIVILEGES;
```
##### Start at boot
```
sudo systemctl enable mysql
```

## PHP
##### Add repos
```
sudo add-apt-repository ppa:ondrej/php
sudo apt update
```
##### Install 7.3
```
sudo apt-get install -y php7.3
```
##### Related modules PHP7.3
```
sudo apt-get install php7.3-curl php7.3-gd php7.3-json php7.3-mbstring php7.3-intl php7.3-mysql php7.3-xml php7.3-zip
```

## Composer
##### Install
```
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
rm composer-setup.php
```
##### Set own permission
```
sudo chown -R $USER $HOME/.composer
```
##### Add path
```
echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ~/.zshrc
source ~/.zshrc
echo $PATH
```

## Valet
##### Install
```
sudo apt-get install network-manager jq xsel libnss3-tools
composer global require cpriego/valet-linux
valet install
```
##### Park projects directory
```
valet park
```
#### Change to HTTPS
```
valet secure [folder]
```
##### If show Apache 2 It's Work
```
service apache2 stop
valet restart
valet park
```

## NVM
##### Install for zsh (check update before install)
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | zsh
```
##### env variable
```
export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
```
##### Restart ternimal
##### Install node

## Yarn
##### add repo
```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
```
##### update and install
```
sudo apt-get update
sudo apt-get install --no-install-recommends yarn
```

## GitEye
##### Add to GitEye.ini
```
-vm
C:/Program Files/Java/jre7/bin/javaw.exe
```
