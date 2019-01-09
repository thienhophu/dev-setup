# Linux Dev Setup

## Curl
#### install
```
sudo apt-get install curl
```

## VSCODE

## Git
##### install
```
sudo apt install git
```
2. config user infor
```
git config --global user.name "Thien Ho"
git config --global user.email thien.ho@manifera.com
```

## Zsh
##### Install
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
```
// no validate password
// y y y y
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

## PHP7.1
##### Add repos
```
sudo add-apt-repository ppa:ondrej/php
sudo apt update
```
##### Install
```
sudo apt-get install -y php7.1
```
##### Related modules
```
sudo apt install php7.1-mysql php7.1-json php7.1-zip php7.1-cli php7.1-curl php7.1-sqlite3 php7.1-gd php7.1-xml php7.1-mcrypt php7.1-mbstring php7.1-iconv
```

## Composer
##### Install
//curl -sS https://getcomposer.org/installer -o composer-setup.php
//sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
```
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer 
```
//rm composer-setup.php
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

## Laravel
##### Install using composer
```
composer global require laravel/installer
```

## NVM
##### Install for zsh (check update before install)
```
curl https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | zsh
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

## SDKMAN
##### Install with zsh
```
curl -s "https://get.sdkman.io" | zsh
```
##### Run in new terminal
```
source "/home/thienho/.sdkman/bin/sdkman-init.sh"
```

## JAVA
##### Install by SDKMAN
```
sdk install java 8.0.192-zulu
```
##### Add to path
```
#THIS IS FOR JAVA PATH
export PATH=${PATH}:${JAVA_HOME}/bin
export JAVA_HOME
```

## RUBY

## Snap
##### Check snap
```
snap version
```
##### Install if not available
```
sudo apt install snapd snapd-xdg-open
```

## Flatpak
##### Install
```
sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt update
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```
##### restart

## Android Studio
```
export PATH=${PATH}:/home/{USER}/path/to/adb
```

## Postman
##### install by snap
```
snap install postman
```
##### if cant run this library
```
sudo apt-get install libgconf-2-4
```

## Tracer
```
sudo add-apt-repository ppa:oguzhaninan/stacer
sudo apt-get update
sudo apt-get install stacer
```

## GitEye
##### Extract
##### set superowner
```
sudo chown -R root:root GitEye
```
##### switch content
```
sudo mv GitEye /opt/GitEye
```
##### open with terminal
```
sudo ln -s /opt/GitEye/GitEye /usr/local/bin/GitEye
```
##### Add this to giteye.ini
```
-vm
/home/thienho/.sdkman/candidates/java/current/bin
```

## Thunderbird
```
sudo apt-get install thunderbird
```

## GRUB Customizer
```
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
```

## Visual Code - Ext
### Fira Code -- Font
##### install
```
sudo apt install fonts-firacode
```
##### add to vscode
```
"editor.fontFamily": "Fira Code",
"editor.fontLigatures": true,
```
