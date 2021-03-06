# Ubuntu 18.04 LTS

## Post Install OS

```
sudo apt-get autoremove
sudo apt-get update
sudo apt-get upgrade
```

## Snap with Tools

##### Visual Code

```
snap install code --classic
```

#### Discord

```
snap install discord
```

#### Skype

```
snap install skype --classic
```

#### Postman

```
snap install postman --channel=candidate
(Other options)
sudo snap switch --channel=candidate postman
sudo snap refresh postman
sudo apt-get install libgconf-2-4
```

#### Vectr

```
snap install vectr
```

#### GitHub Desktop

```
snap install github-desktop --beta --classic
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
sudo apt install git
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

##### Install 7.1

```
sudo apt-get install -y php7.1
```

##### Related modules PHP7.1

```
sudo apt install php7.1-mysql php7.1-json php7.1-zip php7.1-cli php7.1-curl php7.1-sqlite3 php7.1-gd php7.1-xml php7.1-mcrypt php7.1-mbstring php7.1-iconv
```

##### Install 7.2

```
sudo apt-get install php7.2 php7.2-cli php7.2-common php7.2-fpm
```

##### Related modules PHP7.2

```
sudo apt-get install php7.2-curl php7.2-gd php7.2-json php7.2-mbstring php7.2-intl php7.2-mysql php7.2-xml php7.2-zip
```

##### Install 7.3

```
sudo apt-get install php7.3
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
//curl -sS https://getcomposer.org/installer
//sudo php -- --install-dir=/usr/local/bin --filename=composer
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

##### Change to HTTPS

```
valet secure [folder]
```

##### If show Apache 2 It's Work

```
service apache2 stop
valet restart
valet park
```

##### Enable/Disable Apache2

```
sudo update-rc.d apache2 disable
sudo update-rc.d apache2 enable
```

## Xdebug

##### Install

```
sudo apt install php-xdebug
sudo apt-get install php-dev autoconf automake
```

##### Add to /etc/php/7.3/mods-available/xdebug.ini

```
; zend_extension=/usr/lib/php/20180731/xdebug.so
zend_extension=xdebug.so
xdebug.remote_autostart = 1
xdebug.remote_enable = 1
xdebug.var_display_max_depth = 10
xdebug.var_display_max_children = 256
xdebug.var_display_max_data = 1024
```

## Laravel

##### Install using composer

```
composer global require laravel/installer
```

## Essential Build Package

##### Install

```
sudo apt-get install build-essential
```

## Python 2.7

##### Install

```
sudo apt-get install python2.7
sudo ln -s /usr/bin/python2.7 /usr/bin/python
```

##### add python to path

```
# THIS IS FOR PYTHON 2.7
export PYTHONPATH=$PYTHONPATH:/usr/bin/python
export PATH=$PATH:/usr/bin/python
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

## SDKMAN

##### Install with zsh

```
curl -s "https://get.sdkman.io" | zsh
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

## Tracer

```
sudo add-apt-repository ppa:oguzhaninan/stacer
sudo apt-get update
sudo apt-get install stacer
```

## GitEye

##### Extract and Set super owner for GitEye

```
sudo chown -R root:root GitEye
```

##### Switch content

```
sudo mv GitEye /opt/GitEye
```

##### Open GitEye in terminal (Note: It will keep running GitEye on that tab).

```
sudo ln -s /opt/GitEye/GitEye /usr/local/bin/GitEye
```

##### In case of JAVA location not found, add this to giteye.ini

```
-vm
/home/thienho/.sdkman/candidates/java/current/bin
```

## Thunderbird

```
sudo apt-get install thunderbird
```

Note: To convert plain text email to html email, go to Preferences->Composition->Send Options

- Uncheck 'Send messages as plain text if possible
- Select 'Send the message in HTML anyway

## GRUB Customizer

```
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt-get update
sudo apt-get install grub-customizer
```

## Visual Code - Ext

### Fira Code -- Font

##### Install

```
sudo apt install fonts-firacode
```

##### Add to vscode

```
"editor.fontFamily": "Fira Code",
"editor.fontLigatures": true,
```

### TSlint Config - Prettier

##### Install

```
npm install --save-dev tslint-config-prettier
```

##### Add Prettier config to VSCODE by creating .prettierignore and .prettierrc

##### .prettierignore

```
node_modules
ios
android
.vscode
package.json
```

##### .prettierrc

```
{
  "printWidth": 100,
  "semi": true,
  "singleQuote": true,
  "trailingComma": "all"
}
```

##### Add extends to tslint.json

```
"extends": [
    "tslint-config-prettier"
  ]
```

## Create Launcher on 18.10

### Gnome-panel

##### Install Gnome Panel then generate new desktop launcher

```
sudo apt install --no-install-recommends gnome-panel
gnome-desktop-item-edit ~/Desktop/ --create-new
```

##### Copy new launcher to Applications folder

```
.local/share/applications/
```

##### Edit Icon link (ex)

```
Icon[en_US]=/opt/GitEye/GitEye.png
```

### Change Night Light

##### Install dconf-editor

```
sudo apt install dconf-editor
```

##### Navigate to

```
org/gnome/settings-daemon/plugins/color/night-light-temperature
Fav: 5800
```

### Chrome Debugger VSCODE - Attach

```
google-chrome --remote-debugging-port=9222
```
