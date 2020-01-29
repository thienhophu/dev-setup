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

### PATH in .zshrc

```
export ANDROID_HOME="/Users/thienho/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH/:$ANDROID_HOME/platform-tools
```