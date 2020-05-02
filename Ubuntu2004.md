# Ubuntu 20.04

## Post Install OS

```
sudo apt autoremove
sudo apt update
sudo apt upgrade
```

## Upgrade APT
```
sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
```

## Enable KVM

```
sudo apt install qemu-kvm libvirt-daemon-system bridge-utils
sudo adduser $USER kvm
sudo chown $USER /dev/kvm
```

## Skype
Download from https://www.skype.com

#### Discord

```
snap install discord
```


## Postman

```
snap install postman
```


##### Gimp

```
snap install gimp
```

## Git

```
sudo apt install git
```

### Config user info

```
git config --global user.name "Thien Ho"
git config --global user.email thien.ho@manifera.com
```

## Zsh

```
sudo apt install zsh
```

## Oh My Zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
