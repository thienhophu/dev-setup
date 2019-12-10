# POP_OS (UBUNTU Distro)

## Use this document at your own risk. =))

## Essential Apps

### Snap
```
sudo apt install snapd
```

### VSCODE
```
snap install code --classic
```

### Skype
```
snap install skype --classic
```

### Postman
```
snap install postman
```

## Dev setup

### Git
```
git config --global user.name "Thien Ho"
git config --global user.email thien.hophu@gmail.com
```

### ZSH
```
sudo apt-get install zsh
```
### Oh My Zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### SSH Key
```
ssh-keygen
//(without using passpharse for dev)
cat ~/.ssh/id_rsa.pub
```

### MYSQL - Server
```
sudo apt install mysql-server
sudo systemctl status mysql
sudo mysql_secure_installation
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

### PHP
```
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.3
sudo apt-get install php7.3-curl php7.3-gd php7.3-json php7.3-mbstring php7.3-intl php7.3-mysql php7.3-xml php7.3-zip
```