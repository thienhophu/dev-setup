# MacOS - Dev Setup

## MacOS Install

``` bash
diskutil list
sudo /Applications/Install\ macOS\ Mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
sudo /Applications/Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
```

## SnapShot

``` bash
tmutil listlocalsnapshots /
tmutil localsnapshot
```

## Disable SIP

``` bash
Restart
CMD + R while Boot
Open terminal

// Disable
csrutil disable

// Enable
csrutil clear
csrutil enable
```

## Allow Apps from Anywhere

``` bash
sudo spctl --master-disable
```

## Homebrew

##### Install

``` bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

##### Clean up brew

``` bash
brew cleanup
```

## Curl

##### Install via Homebrew

``` bash
brew install curl
```

## Git

#### Install via Homebrew

``` bash
brew install git
```

#### Config user infor

``` bash
git config --global user.name "Thien Ho"
git config --global user.email thien.hophu@gmail.com
touch ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
```

## ZSH

##### Install via Homebrew

``` bash
brew install zsh
```

## Oh My Zsh

##### Install via curl

``` bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

##### Install zsh-autosuggestions

##### Clone and add to zsh

``` bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

plugins=(zsh-autosuggestions)
```

##### Install via Brew

``` bash
brew install zsh-autosuggestions
// Add this to zshrc
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
```

## SSH Keys

``` bash
ssh-keygen -t rsa
// Copy to clipboard
pbcopy < ~/.ssh/id_rsa.pub
```

## rbenv

##### Install via Homebrew

``` bash
brew install rbenv
rbenv init
rbenv install 3.3.6
rbenv global 3.3.6
```

## Cocoapods

``` bash
sudo gem install cocoapods
```

## SDKMAN

##### Install via curl

``` bash
curl -s "https://get.sdkman.io" | bash
```

##### New terminal

``` bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
```

## Java

##### Brew (One version only)

``` bash
brew tap AdoptOpenJDK/openjdk
brew install adoptopenjdk11
brew install --cask adoptopenjdk8
```

##### Install via SDKMan

``` bash
sdk install java 8.0.222-zulu
sdk default java 8.0.222-zulu
sdk home java 8.0.222-zulu
```

## NVM

##### Install via Curl

``` bash
brew install nvm
```

##### Install auto use

``` bash
# place this after nvm initialization!
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

## Node

##### Install via NVM

``` bash
nvm install [version]
nvm use [version]
```

## Yarn

``` bash
brew install yarn
```

## Ruby

##### Install via brew

``` bash
brew install ruby
```

##### Install bundler

``` bash
gem install bundler
bundle install

// Release
bundle exec fastlane
```

## Android Studio

##### Install gradle via brew

``` bash
brew install gradle
or
sdk install gradle [version]
```

##### Add PATH

``` bash
#THIS IS FOR ANDROID PATH
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
```

## Sentry CLI

``` bash
curl -sL https://sentry.io/get-cli/ | zsh
```

## Fastlane

``` bash
sudo gem install fastlane -NV
```

## React Native Debugger

``` bash
brew cask install react-native-debugger
```

## PostgreSQL

``` bash
brew install postgresql
// Init
initdb /usr/local/var/postgres
// Auto start on start up
brew services start postgresql
// Start each time required
pg_ctl -D /usr/local/var/postgres start
```

## MySQL 5.7 (For Normal Dev)

##### Install via Brew

``` bash
brew install mysql@5.7
brew link mysql@5.7 --force
brew services start mysql@5.7
restart terminal
```

##### Secure your mysql

``` bash
mysql_secure_installation
(validate password) no
(enter new password)
(Y Y Y Y)
```

##### Import from sql

``` bash
mysql -u root -p database_name < file.sql
```

## MySQL 8.0 (For Adv.)

##### Install via Brew

``` bash
brew install mysql
```

## PHP 7.4 (For Adv.)

``` bash
brew install shivammathur/php/php@7.4
brew install shivammathur/php/php@7.4

~~brew install php@7.4~~
brew link php@7.4 --force
```

## PHP Extensions

### Imagemagick

``` bash
brew install imagemagick
brew install pkg-config
pecl install imagick
```

## Composer

##### Install via Brew

``` bash
brew install composer

// Downgrade to version 1 if needed
composer self-update 1.10.15
composer global require hirak/prestissimo
```

##### Add to PATH

``` bash
echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ~/.zshrc
source ~/.zshrc
echo $PATH
```

## Valet

``` bash
composer global require laravel/valet
valet install
```

## Xdebug for PHP 7.3

##### Install tools via brew

``` bash
brew install autoconf
brew install automake
```

##### Instal via Pecl

``` bash
pecl install xdebug
(restart valet)
```

##### Locate php by php --ini

##### Add to bottom of conf.d/ext-xdebug.ini

``` bash
[XDebug]
xdebug.mode=debug
xdebug.start_with_request=yes
xdebug.discover_client_host=true
xdebug.client_port=9000
```

##### Add to launch.json of VSCode

``` bash
"xdebugSettings":
{
  "max_depth": 200,
}
```

##### Colima - Docker Engine
```
brew install colima
colima start
```

##### Docker Client
```
brew install docker
brew install docker-compose
# Using cmd `docker-compose` for version 2 instead of `docker compose`
```

# TOOLS

## DBeaver

``` bash
// Add home
/opt/homebrew/bin

// Postgres
brew install postgresql

brew install libpq
echo 'export PATH="/usr/local/opt/libpq/bin:$PATH"' >> ~/.zshrc

// MySQL 5.7
brew install mysql-client@5.7
echo 'export PATH="/usr/local/opt/mysql-client@5.7/bin:$PATH"' >> ~/.zshrc

// MySQL
brew install mysql-client
echo 'export PATH="/usr/local/opt/mysql-client/bin:$PATH"' >> ~/.zshrc
```

## VSCODE

##### Install from <https://code.visualstudio.com/>

#### VSCODE -- Extension

##### Fira Code -- Font

###### Install font

``` bash
brew install --cask font-fira-code
```

###### Add to vscode

``` bash
"editor.fontFamily": "Fira Code",
"editor.fontLigatures": true,
```

### Hyper.js

##### Install via Homebrew

``` bash
brew update
brew cask install hyper
```

##### Set ZSH as default shell

``` bash
shell: 'zsh'
```

### Charles

##### Install from offical page

``` bash
https://www.charlesproxy.com/
```

##### Charles Hacking

``` bash
https://github.com/100apps/charles-hacking
```

### Thunderbird

Note: To convert plain text email to html email, go to Preferences->Composition->Send Options

- Uncheck 'Send messages as plain text if possible
- Select 'Send the message in HTML anyway

### Chrome Debugger VSCODE - Attach

``` bash
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222
```

### Docker

#### Mailhog

``` bash
docker run -d --restart always -p 8025:8025 -p 1025:1025 mailhog/mailhog
```

#### Postgres

``` bash
docker run -d --restart always -e POSTGRES_PASSWORD=12341234 -p 5432:5432 postgres
```

#### MySql 5.7

``` bash
docker run -d --restart always -e MYSQL_ROOT_PASSWORD=12341234 -p 3306:3306 mysql:5.7
```

#### OpenSearch

``` bash
docker run -d --restart always -p 9200:9200 -p 9600:9600 -e "discovery.type=single-node" -e "DISABLE_SECURITY_PLUGIN=true" opensearchproject/opensearch
```

#### Redis

``` bash
docker run -d --restart always -p 6380:6380 redis redis-server --port 6380
