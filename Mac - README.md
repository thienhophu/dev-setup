# MacOS - Dev Setup

## Upgrading Bash
##### Install Bash with Brew
```
brew install bash
// Restart terminal
```
##### Whitelist Bash
```
sudo code /etc/shells
// Add this to the end of the file
/usr/local/bin/bash
// Run sheband line
#!/usr/bin/env bash
```

## VSCODE -- Extension
#### Fira Code -- Font
##### Install font
```
brew tap caskroom/fonts
brew cask install font-fira-code
```
##### Add to vscode
``` 
"editor.fontFamily": "Fira Code",
"editor.fontLigatures": true,
```
