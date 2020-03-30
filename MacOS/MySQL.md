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
