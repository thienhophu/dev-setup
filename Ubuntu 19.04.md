Ubuntu 19.04

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


## SSH Keys
```
ssh-keygen
//(without using passpharse for dev)
```
##### Copy manual
```
cat ~/.ssh/id_rsa.pub
```
##### Copy SSH Access:
```
ssh-copy-id username@remote_host
```

## GitEye
##### Add to GitEye.ini
```
-vm
C:/Program Files/Java/jre7/bin/javaw.exe
```
