# MacOS - Dev Setup

## MacOS Install

```
diskutil list
sudo /Applications/Install\ macOS\ Mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
sudo /Applications/Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
```

## SnapShot
```
tmutil listlocalsnapshots /
tmutil localsnapshot
```

## Disable SIP

```
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
```
sudo spctl --master-disable
```

## Homebrew

##### Install

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

##### Clean up brew

```
brew cleanup
```

## Curl

##### Install via Homebrew

```
brew install curl
```

## Git

#### Install via Homebrew

```
brew install git
```

#### Config user infor

```
git config --global user.name "Thien Ho"
git config --global user.email thien.hophu@gmail.com
```

## ZSH

##### Install via Homebrew

```
brew install zsh
```

## Oh My Zsh

##### Install via curl

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```


##### Install zsh-autosuggestions

##### Clone and add to zsh

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

plugins=(zsh-autosuggestions)
```

##### Install via Brew

```
brew install zsh-autosuggestions
// Add this to zshrc
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
```

## SSH Keys

```
ssh-keygen -t rsa
// Copy to clipboard
pbcopy < ~/.ssh/id_rsa.pub
```

## Cocoapods

```
sudo gem install cocoapods
```

## rbenv

##### Install via Homebrew

```
brew install rbenv
```

## SDKMAN

##### Install via curl

```
curl -s "https://get.sdkman.io" | zsh
```

##### New terminal

```
source "$HOME/.sdkman/bin/sdkman-init.sh"
```

## Java

##### Brew (One version only)

```
brew tap AdoptOpenJDK/openjdk
brew install adoptopenjdk11
brew cask install adoptopenjdk8
```

##### Install via SDKMan

```
sdk install java 8.0.222-zulu
```

## MySQL 5.7 (For Normal Dev)

##### Install via Brew

```
brew install mysql@5.7
brew link mysql@5.7 --force
brew services start mysql@5.7
restart terminal
```

##### Secure your mysql

```
mysql_secure_installation
(validate password) no
(enter new password)
(Y Y Y Y)
```

##### Import from sql

```
mysql -u root -p database_name < file.sql
```

## MySQL 8.0 (For Adv.)

##### Install via Brew

```
brew install mysql
```

## PHP 7.4 (For Adv.)

```
brew install php@7.4
brew link php@7.4 --force
```

## PHP Extensions

### Imagemagick

```
brew install imagemagick
brew install pkg-config
pecl install imagick
```

## Composer

##### Install via Brew

```
brew install composer

// Downgrade to version 1 if needed
composer self-update 1.10.15
composer global require hirak/prestissimo
```

##### Add to PATH

```
echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ~/.zshrc
source ~/.zshrc
echo $PATH
```

## Valet

```
composer global require laravel/valet
valet install
```

## Xdebug for PHP 7.3

##### Install tools via brew

```
brew install autoconf
brew install automake
```

##### Instal via Pecl

```
pecl install xdebug
(restart valet)
```

##### Locate php by php --ini

##### Add to bottom of conf.d/ext-xdebug.ini

```
[XDebug]
xdebug.mode=debug
xdebug.start_with_request=yes
xdebug.discover_client_host=true
xdebug.client_port=9000
```

##### Add to launch.json of VSCode

```
"xdebugSettings":
{
  "max_depth": 200,
}
```

## NVM

##### Install via Curl

```
brew install nvm
```

##### Install auto use

```
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

```
nvm install [version]
nvm use [version]
```

## Yarn

```
brew install yarn
```

## Ruby

##### Install via brew

```
brew install ruby
```

##### Install bundler

```
gem install bundler
bundle install

// Release
bundle exec fastlane
```

## Android Studio

##### Install gradle via brew

```
brew install gradle
or
sdk install gradle [version]
```

##### Add PATH

```
#THIS IS FOR ANDROID PATH
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
```

## Sentry CLI

```
curl -sL https://sentry.io/get-cli/ | zsh
```

## Fastlane

```
sudo gem install fastlane -NV
```

## React Native Debugger

```
brew cask install react-native-debugger
```

## PostgreSQL

```
brew install postgresql
// Init
initdb /usr/local/var/postgres
// Auto start on start up
brew services start postgresql
// Start each time required
pg_ctl -D /usr/local/var/postgres start
```

# TOOLS

## VSCODE

##### Install from https://code.visualstudio.com/

#### VSCODE -- Extension

##### Fira Code -- Font

###### Install font

```
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
```

###### Add to vscode

```
"editor.fontFamily": "Fira Code",
"editor.fontLigatures": true,
```

### Hyper.js

##### Install via Homebrew

```
brew update
brew cask install hyper
```

##### Set ZSH as default shell

```
shell: 'zsh'
```

### Charles

##### Install from offical page

```
https://www.charlesproxy.com/
```

##### Charles Hacking

```
https://github.com/100apps/charles-hacking
```

### Thunderbird

Note: To convert plain text email to html email, go to Preferences->Composition->Send Options

- Uncheck 'Send messages as plain text if possible
- Select 'Send the message in HTML anyway

### Chrome Debugger VSCODE - Attach

```
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222
```

### Docker
#### Mailhog
```
docker run -d --restart always -p 8025:8025 -p 1025:1025 mailhog/mailhog
```
