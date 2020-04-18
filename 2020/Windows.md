# Windows 10 - Dev Setup

## Uninstall unused packages

```
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

// Don't remove this if install for work
Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage
```

## SSH Keys

```
ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub
```

## Hyper.js (https://hyper.is/)

```
shell: 'C:\\Windows\\SysWOW64\\WindowsPowerShell\\v1.0\\powershell.exe',
```
