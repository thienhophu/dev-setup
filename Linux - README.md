Linux

-- curl
1. install
sudo apt-get install curl

-- vscode

-- git
1. install
sudo apt install git
2. config user infor
git config --global user.name "Thien Ho"
git config --global user.email thien.ho@manifera.com

-- ZSH
1. Install
sudo apt-get install zsh
2. Set default shell
chsh -s $(which zsh)
//Logout
option 2

-- Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

-- SSH Keys
ssh-keygen
(without using passpharse for dev)
For SSH Access:
ssh-copy-id username@remote_host
For manual:
cat ~/.ssh/id_rsa.pub

-- MySQL5.7
1. install
sudo apt install mysql-server
2. Check
sudo systemctl status mysql
3. setup
sudo mysql_secure_installation
// no validate password
// y y y y
sudo mysql -u root -p
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234';
FLUSH PRIVILEGES;
// start at boot
sudo systemctl enable mysql

-- PHP7.1
// add
sudo add-apt-repository ppa:ondrej/php
sudo apt update
// install
sudo apt-get install -y php7.1
// related modules
sudo apt install php7.1-mysql php7.1-json php7.1-zip php7.1-cli php7.1-curl php7.1-sqlite3 php7.1-gd php7.1-xml php7.1-mcrypt php7.1-mbstring php7.1-iconv


-- Composer
//curl -sS https://getcomposer.org/installer -o composer-setup.php
//sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer 
//rm composer-setup.php
// set own
sudo chown -R $USER $HOME/.composer
// add path
echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ~/.zshrc
source ~/.zshrc
echo $PATH

-- Valet
sudo apt-get install network-manager jq xsel libnss3-tools
composer global require cpriego/valet-linux
valet install
// projects directory
valet park

-- Laravel
composer global require laravel/installer

-- NVM
1. install for zsh (check update before install)
curl https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | zsh
2. env variable
export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
// restart ternimal
// install node

-- Yarn
1. add repo
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
2. update and install
sudo apt-get update
sudo apt-get install --no-install-recommends yarn

-- SDKMAN
curl -s "https://get.sdkman.io" | zsh
// new terminal
source "/home/thienho/.sdkman/bin/sdkman-init.sh"

-- JAVA
sdk install java 8.0.192-zulu
// add java to path
#THIS IS FOR JAVA PATH
export PATH=${PATH}:${JAVA_HOME}/bin
export JAVA_HOME
-- RUBY

-- Snap
1. Check snap
snap version
2. Install if not available
sudo apt install snapd snapd-xdg-open

-- Flatpak
sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt update
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
restart

-- Android Studio
export PATH=${PATH}:/home/YOUR-USERNAME/path/to/adb

-- Postman
1. install by snap
snap install postman
2. if cant run this library
sudo apt-get install libgconf-2-4

-- Tracer
sudo add-apt-repository ppa:oguzhaninan/stacer
sudo apt-get update
sudo apt-get install stacer

-- GitEye
1. Extract
2. set superowner
sudo chown -R root:root GitEye
3. switch content
sudo mv GitEye /opt/GitEye
// open with terminal
sudo ln -s /opt/GitEye/GitEye /usr/local/bin/GitEye
// Add this to giteye.ini
-vm
/home/thienho/.sdkman/candidates/java/current/bin

-- Thunderbird
sudo apt-get install thunderbird

-- GRUB Customizer
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
