# MacOS - Dev Setup

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

## Default Directory
```
echo "cd ~/projects" >> ~/.zshrc
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
## Java
## SourceTree
## GitFork
## GitEye

## MySQL 5.7
##### Install via Brew
```
brew install mysql@5.7
```

## MySQL 8.0
##### Install via Brew
```
brew install mysql
```
## PHP 7.2
```
brew install php72

```
## PHP 7.3
```
brew install php
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

## Xdebug for PHP 7.2
##### Install via Pecl
```
pecl install xdebug
```
##### Enter this in /usr/local/etc/php/7.2/conf.d/ext-xdebug.ini
```
[xdebug]
#zend_extension=/usr/local/Cellar/php@7.2/7.2.13/pecl/20170718/xdebug.so
xdebug.remote_autostart=On
xdebug.remote_enable=On
xdebug.max_nesting_level=2048]
```
###### Restart Valet

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
brew install yarn --without-node
```

## Ruby

## Android Studio

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
