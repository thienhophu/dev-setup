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

## Linux Timeshift

```
sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt update
sudo apt install timeshift
```

## Skype

Download from https://www.skype.com

## Discord

```
snap install discord
```

## Postman

```
snap install postman
```

## Gimp

```
snap install gimp
```

## Sayonara Player

```
snap install sayonara
```

## Git

```
sudo apt install git

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

## SSH Keys

```
ssh-keygen
//(without using passpharse for dev)
cat ~/.ssh/id_rsa.pub
```

## NVM (check update before install)

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | zsh
```

## Yarn

```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update
sudo apt install --no-install-recommends yarn
```

## JAVA

```
sudo apt install default-jdk
```

## Android Studio

```
snap install android-studio --classic
```

## GRUB Customizer

```
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt update
sudo apt install grub-customizer
```

## Detech other OS

```
sudo apt install -y os-prober
sudo os-prober
```

## BootLoader Repair
```
sudo apt-add-repository ppa:yannubuntu/boot-repair
sudo apt-get update
sudo apt-get install -y boot-repair
boot-repair
```
