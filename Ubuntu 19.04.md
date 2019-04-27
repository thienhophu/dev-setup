Ubuntu 19.04

## Post Install OS
```
sudo apt-get autoremove
sudo apt-get update
sudo apt-get upgrade
```

## Git
##### Install
```
sudo apt-get install git
```
##### Config user info
```
git config --global user.name "Thien Ho"
git config --global user.email thien.ho@manifera.com
```

## Snap with Tools
#### Visual Studio
```
snap install code --classic
```

## Curl
```
sudo apt-get install curl
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

