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

#### 3. Install OpenJdk

```
asdf plugin-add java
asdf install java adoptopenjdk$OPEN_JDK_VERSION
asdf global java adoptopenjdk$OPEN_JDK_VERSION
. ~/.asdf/plugins/java/set-java-home.zsh
```

#### 4.Install Maven

```
brew install maven 
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


THEN Search plugins and install, Enable

Ex, Spring Assistant

![Screenshot](install-plugin.png)


##### Create a new Spring App

CLICK New Project

![Screenshot](create.png)


THEN Select `Spring Assistant`

![Screenshot](spring-assistant.png)

THEN Configure project type and Project name

![Screenshot](configure.project.png)


THEN Select `Lambok`

![Screenshot](lambok.png)

THEN Confirm Project and Finish

![Screenshoy](finish.png)

