# Windows 10 - Dev Setup

## Uninstall unused packages

```
Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage
Get-AppxPackage *alarm* | Remove-AppxPackage
Get-AppxPackage *zune* | Remove-AppxPackage
Get-AppxPackage *people* | Remove-AppxPackage
Get-AppxPackage *messaging* | Remove-AppxPackage
Get-AppxPackage *maps* | Remove-AppxPackage
Get-AppxPackage *camera* | Remove-AppxPackage
Get-AppxPackage *gethelp* | Remove-AppxPackage
Get-AppxPackage *maps* | Remove-AppxPackage
Get-AppxPackage *soundrecorder* | Remove-AppxPackage
Get-AppxPackage *yourphone* | Remove-AppxPackage
Get-AppxPackage *xbox* | Remove-AppxPackage
Get-AppxPackage *3dviewer* | Remove-AppxPackage
Get-AppxPackage *portal* | Remove-AppxPackage
```

## Hyper.js

##### Install from https://hyper.is/

##### Using Powershell

```
shell: 'C:\\Windows\\SysWOW64\\WindowsPowerShell\\v1.0\\powershell.exe',
```

## Android Studio

##### Install from https://developer.android.com/studio/

##### Add ADB and Fastboot to your PATH

```
C:\Users\{USER}\AppData\Local\Android\Sdk\platform-tools
```

## WAMPSERVER

##### Check all the vsdist before install

##### Remove MySQL

##### Login into MariaDB with root/(blank)

##### Set password for root@localhost

## Chocolatey - Package Manager

##### Install - https://chocolatey.org/

##### Install via CMD (Admin)

```
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```

##### Upgrade

```
choco upgrade chocolatey
```

## Valet Windows

```
# PHP 7.1
Set-ExecutionPolicy RemoteSigned; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri "https://github.com/cretueusebiu/valet-windows/raw/master/bin/php71.ps1" -OutFile $env:temp\php71.ps1; ."$env:temp\php71.ps1"

# PHP 7.2
Set-ExecutionPolicy RemoteSigned; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri "https://github.com/cretueusebiu/valet-windows/raw/master/bin/php72.ps1" -OutFile $env:temp\php72.ps1; ."$env:temp\php72.ps1"

```

```
git@github.com:thienhophu/dev-setup.git
```

https://getcomposer.org/Composer-Setup.exe

```
composer global require cretueusebiu/valet-windows
valet install
```

##### Manual config for Windows 10

http://mayakron.altervista.org/wikibase/show.php?id=AcrylicWindows10Configuration

##### Install ImageMagick

https://mlocati.github.io/articles/php-windows-imagick.html

## VSCODE Extension

### Fira Code - Font

##### Install using Choco

```
choco install firacode
```


## SSH Keys
```
ssh-keygen -t rsa
```

##### Check connection
```
ssh git@gitlab.com
```