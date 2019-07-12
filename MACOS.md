# MacOS - Dev Setup

## MacOS Install

```
diskutil list
sudo /Applications/Install\ macOS\ Mojave.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
sudo /Applications/Install\ macOS\ High\ Sierra.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
```

## Homebrew

##### Install

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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
git config --global user.email thien.ho@manifera.com
```

## ZSH

##### Install via Homebrew

```
brew install zsh
```

## Oh My Zsh

##### Install via curl

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

##### Install via wget

```
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

##### Install zsh-autosuggestions

```
brew install zsh-autosuggestions
```

## SSH Keys

```
ssh-keygen -t rsa
// Copy to clipboard
pbcopy < ~/.ssh/id_rsa.pub
```

## VSCODE

##### Install from https://code.visualstudio.com/

## Hyper.js

##### Install via Homebrew

```
brew update
brew cask install hyper
```

##### Set ZSH as default shell

```
shell: 'zsh'
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

##### Install via SDKMan

```
sdk install java 8.0.202-zulu
```

## SourceTree

## GitFork

## GitEye

## MySQL 5.7 (For Normal Dev)

##### Install via Brew

```
brew install mysql@5.7
echo 'export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"' >> ~/.zshrc
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

## PHP 7.2 (For Normal Dev)

```
brew install php@7.2
brew link php@7.2 --force
```

## PHP 7.3 (For Adv.)

```
brew install php
```
## Add to your PATH
```
echo 'export PATH="/usr/local/opt/php@7.2/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="/usr/local/opt/php@7.2/sbin:$PATH"' >> ~/.zshrc
```

## Composer

##### Install via Brew

```
brew install composer
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
zend_extension="xdebug.so"
xdebug.remote_enable=1
xdebug.remote_autostart=1
```

##### Add to launch.json of VSCode

```
"xdebugSettings":
{
  "max_depth": 200,
}
```

## Laravel

## Essential Build Package

## Python 2.7

## NVM

##### Install via Curl

```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | zsh
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
```

##### Add PATH

```
#THIS IS FOR ANDROID PATH
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
```

## Postman

##

## Upgrading Bash

##### Install Bash with Brew

```
brew install bash
// Restart terminal
```

##### Whitelist Bash

```
sudo code /etc/shells
// Add this to the end of the file
/usr/local/bin/bash
// Run sheband line
#!/usr/bin/env bash
```

## Sentry CLI

```
curl -sL https://sentry.io/get-cli/ | bash
```

## VSCODE -- Extension

#### Fira Code -- Font

##### Install font

```
brew tap caskroom/fonts
brew cask install font-fira-code
```

##### Add to vscode

```
"editor.fontFamily": "Fira Code",
"editor.fontLigatures": true,
```

## Charles

##### Install from offical page

```
https://www.charlesproxy.com/
```

##### Charles Hacking

```
https://github.com/100apps/charles-hacking
```

## Fastlane

```
sudo gem install fastlane -NV
```

PostgreSQL
```
brew install postgresql
// Init
initdb /usr/local/var/postgres
// Auto start on start up
brew services start postgresql
// Start each time required
pg_ctl -D /usr/local/var/postgres start
```
