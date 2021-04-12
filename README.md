### Spring Boot Setup

#### 1 Install JetBrains using CMD

##### IntelliJ Community Edition

```
brew cask install intellij-idea-ce

```

##### IntelliJ Ultimate Edition

```
brew cask install intellij-idea

```

#### 2. Install Spring Boot

```
brew tap spring-io/tap

```

```
brew install spring-boot

```

Note: if you got error like,

Error: Permission denied @ apply2files - /usr/local/share/...

```
brew cleanup

sudo brew cleanup

sudo chown -R $(whoami) /usr/loca

sudo chown -R $(whoami) /usr/local/share
```

THEN Configure plugins

![Screenshot](plugins.png)


THEN Search plugins and install 

Ex, Spring Assistant

![Screenshot](install-plugin.png)





