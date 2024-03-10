# Windows 11

## Check policy

Windows 11 as default, will have Restricted policy that will block us from running command from terminal

``` Powershell
Get-ExecutionPolicy
// Return `Restricted`, `RemoteSigned` or `Unrestricted`
```

Unblock with this

``` Powershell
Set-ExecutionPolicy Unrestricted
// Return `Unrestricted`
```

## Chocolatey

Funny things that install Chocolatey from official website is not good enough.
We suggest to install it through nodejs - <https://nodejs.org/en/download> - pick LTS

## OpenJDK11

This will automatically install the path for Java

``` Powershell
choco install -y microsoft-openjdk17
```

## NVM

``` Powershell
choco install nvm
```

## Yarn

``` Powershell
choco install yarn
```

## SSH - Git

``` Powershell
// Generate key
ssh-keygen -t rsa

// Print key to console
cat ~\.ssh\id_rsa.pub

// Install git
choco install git

// Config user info
git config --global user.name "Thien Ho"
git config --global user.email thien.hophu@gmail.com
```

## Fira Code - Font for VSCode

``` Powershell
choco install firacode
```

## Android Development

``` Powershell
// ANDROID_HOME - Add new variable to System variables
%LOCALAPPDATA%\Android\Sdk

// ADB tools - Add new path in PATH variable
%LOCALAPPDATA%\Android\Sdk\platform-tools
```
