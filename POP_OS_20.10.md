# POP_OS (UBUNTU Distro)

## Use this document at your own risk. =))

## Upgrade APT

```
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent so
ftware-properties-common
```

## Essential Apps

### Snap

```
sudo apt install snapd
```

### KVM

```
sudo apt install qemu-kvm libvirt-daemon-system bridge-utils
sudo adduser $USER kvm
sudo chown $USER /dev/kvm
```

### Linux Timeshift

```
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt update
sudo apt install timeshift
```

### GRUB Customizer

```
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt update
sudo apt install grub-customizer
```

### Detech other OS

```
sudo apt install os-prober
sudo os-prober
```

### VSCODE

```
snap install code --classic
```

### Skype

##### For using Unikey, pls download .deb setup from Skype.com

### Postman

```
snap install postman
```

### ZSH

```
sudo apt install zsh
```

### Oh My Zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Zsh Autosuggestions

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

//Add the plugin to the list of plugins for Oh My Zsh to load (inside ~/.zshrc):
//plugins=(zsh-autosuggestions)
```

### SSH Key

```
ssh-keygen
//(without using passpharse for dev)
cat ~/.ssh/id_rsa.pub
```

### Homebrew

```
sudo apt-get install build-essential procps curl file git
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

// ~/.zshrc
# Homebrew
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
```

```
sudo pecl channel-update pecl.php.net
sudo pecl install xdebug
```

### Git

```
git config --global user.name "Thien Ho"
git config --global user.email thien.hophu@gmail.com
```

### NVM

```
https://github.com/nvm-sh/nvm#install--update-script

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | zsh
nvm install 16
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

## DBeaver
```
sudo apt-get install mysql-client
// Add Local Client, Add Home
/usr/bin
```

### PHP

```
sudo add-apt-repository ppa:ondrej/php
sudo apt update
```

#### PHP@7.3

```
sudo apt install -y php7.3

sudo apt install -y php7.3-curl php7.3-gd php7.3-mbstring php7.3-intl php7.3-mysql php7.3-xml php7.3-zip php7.3-bcmath php7.3-fpm
sudo apt install php7.3-imagick
```

#### PHP@7.4

```
sudo apt install -y php7.4

sudo apt install -y php7.4-curl php7.4-gd php7.4-json php7.4-mbstring php7.4-intl php7.4-mysql php7.4-xml php7.4-zip php7.4-bcmath php7.4-fpm
sudo apt install php7.4-imagick
```

### Composer

```
curl -sS https://getcomposer.org/installer |php
mv composer.phar /usr/local/bin/composer
echo 'export PATH="$PATH:$HOME/.config/composer/vendor/bin"' >> ~/.zshrc
source ~/.zshrc
```

#### Composer Libaries

```
sudo composer self-update --1
composer global require hirak/prestissimo
```

## Valet

```
sudo apt install network-manager jq xsel libnss3-tools
composer global require cpriego/valet-linux
valet install
valet park
service apache2 stop
valet restart
```

## Xdebug

##### Install

```
sudo apt install php7.3-xdebug
```

##### Add to

```
sudo touch /etc/php/7.3/cli/conf.d/20-xdebug.ini
/etc/php/7.3/cli/conf.d/20-xdebug.ini
```

```
zend_extension=xdebug.so
xdebug.mode=debug
xdebug.start_with_request=yes
xdebug.discover_client_host=true
xdebug.client_port=9000
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

### SDKMAN (Java Version Manager)

```
curl -s "https://get.sdkman.io" | zsh

sdk install java 8.0.252.hs-adpt

#THIS IS FOR JAVA PATH
export PATH=${PATH}:${JAVA_HOME}/bin
export JAVA_HOME
```

### JAVA (OpenJDK)

```
sudo apt install default-jdk
```

### Android Studio

```
snap install android-studio --classic

//Add to .zshrc

# ANDROID
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
```

## Customize OS

### K2

```
cd /etc/modprobe.d && sudo touch hid_apple.conf
code hid_apple.conf
options hid_apple fnmode=2
sudo update-initramfs -u && reboot
```

### Unikey

- Remove all Office App
- Update from Pop shop - Logout
- install all default language pack
- Install Language Vietnam and english only -> Logout
- Add Input Vietname - Unikey
- Change Option to VNI -> Logout

### Postgres SQL

```
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

RELEASE=$(lsb_release -cs)
echo "deb http://apt.postgresql.org/pub/repos/apt/ ${RELEASE}"-pgdg main | sudo tee  /etc/apt/sources.list.d/pgdg.list

cat /etc/apt/sources.list.d/pgdg.list
// deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main

sudo apt update
sudo apt -y install postgresql-11

sudo systemctl restart postgresql

sudo su - postgres
psql -c "alter user postgres with password 'StrongPassword'"
```

wget "https://download.docker.com/linux/ubuntu/dists/disco/pool/stable/amd64/containerd.io_1.2.6-3_amd64.deb"
wget "https://download.docker.com/linux/ubuntu/dists/disco/pool/stable/amd64/docker-ce-cli_19.03.3~3-0~ubuntu-disco_amd64.deb"
wget "https://download.docker.com/linux/ubuntu/dists/disco/pool/stable/amd64/docker-ce_19.03.3~3-0~ubuntu-disco_amd64.deb"
sudo dpkg -i "containerd.io_1.2.6-3_amd64.deb"
sudo dpkg -i "docker-ce-cli_19.03.3~3-0~ubuntu-disco_amd64.deb"
sudo dpkg -i "docker-ce_19.03.3~3-0~ubuntu-disco_amd64.deb"

### Docker

```
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io

```

#### Install using Deb file

```
wget "https://download.docker.com/linux/ubuntu/dists/disco/pool/stable/amd64/containerd.io_1.2.6-3_amd64.deb"
wget "https://download.docker.com/linux/ubuntu/dists/disco/pool/stable/amd64/docker-ce-cli_19.03.3~3-0~ubuntu-disco_amd64.deb"
wget "https://download.docker.com/linux/ubuntu/dists/disco/pool/stable/amd64/docker-ce_19.03.3~3-0~ubuntu-disco_amd64.deb"

sudo dpkg -i "containerd.io_1.2.6-3_amd64.deb"
sudo dpkg -i "docker-ce-cli_19.03.3~3-0~ubuntu-disco_amd64.deb"
sudo dpkg -i "docker-ce_19.03.3~3-0~ubuntu-disco_amd64.deb"

sudo groupadd docker
sudo usermod -aG docker $USER
// logout
newgrp docker
```
