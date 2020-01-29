# ANDROID

## Windows

### Install Library

```
choco install -y python2 jdk8
```

### Add `ANDROID_HOME` variable

```
C:\Users\thien\AppData\Local\Android\Sdk
```

### Add `JAVA_HOME` variable

```
C:\Program Files\Java\jdk1.8.0_211
```

### Add to PATH

```
%ANDROID_HOME%\tools
%ANDROID_HOME%\tools\bin
%ANDROID_HOME%\platform-tools
```

## MACOS

### Node and watchman

```
brew install node
brew install watchman
```

### Java development kit

```
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8
```

### PATH in .zshrc

```
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
```
