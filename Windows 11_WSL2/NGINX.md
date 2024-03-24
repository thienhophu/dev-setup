# NGINX

## With Brew - doesn't work for now

### Install NGINX

``` bash
brew install NGINX
brew services start nginx
```

## with APT

### Install and interact with NGINX

```bash
sudo apt install nginx
systemctl status nginx
systemctl start nginx
systemctl reload nginx
```

### Working with VSCODE WSL

- Install [WSL extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl)
- Connect to WSL2 with vscode - To edit files in sudo directories we need to give permission with below command

### Give permission to edit files in NGINX folder

``` bash
sudo chown -R thienho /etc/nginx
```

### Check sites link

``` bash
ls -ltr /etc/nginx/sites-enabled
unlink /etc/nginx/sites-enabled/default
ls -ltr /etc/nginx/sites-available
```

### Check the open ports

``` bash
# check files that serve on ports :80 and :443 for NGINX
sudo lsof -i :80 -i :443 | grep nginx

# using net-tools to check all the listening ports for NGINX
sudo apt install net-tools
sudo netstat -plan | grep nginx
```

### Follow up the logs in terminal

``` bash
tail -f /var/log/nginx/*.log
```
