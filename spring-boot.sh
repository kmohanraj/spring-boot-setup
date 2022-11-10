RED='\033[0;31m'
DG='\033[0;31m'
OPEN_JDK_VERSION=-8.0.272+10

unameOut="$(uname -s)"
case "${unameOut}" in
   Linux*)     machine=Linux;;
   Darwin*)    machine=Mac;;
esac

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

if [ "$machine" = "Mac" ] ; then
  brew cask install intellij-idea-ce
  echo "===================================================================="
  echo " ${green} IntelliJ Community Edition Installation Complete {$reset} "
  echo "===================================================================="
  
  brew tap spring-io/tap
  brew install spring-boot
  echo "===================================================="
  echo "${green} Spring Boot Installation Complete ${reset} "
  echo "===================================================="
  # brew install homebrew/cask-versions/adoptopenjdk8 --cask
  # asdf plugin-add java
  asdf plugin-add java https://github.com/halcyon/asdf-java.git
  # asdf install java adoptopenjdk-11.0.15+10 -> working
  # asdf global java adoptopenjdk-11.0.15+10 -> working
  # . ~/.asdf/plugins/java/set-java-home.bash -> working
  # . ~/.asdf/plugins/java/set-java-home.zsh -> working   
  asdf install java adoptopenjdk$OPEN_JDK_VERSION
  asdf global java adoptopenjdk$OPEN_JDK_VERSION

  . ~/.asdf/plugins/java/set-java-home.zsh
  
  echo "=================================================================================="
  echo " ${green} OpenJdk Installation Complete  and Version ${OPEN_JDK_VERSION} ${reset} "
  echo "=================================================================================="

  brew install maven 
  echo "==============================================="
  echo " ${green} Maven Installation Complete ${reset} "
  echo "==============================================="


else
  echo "NOT MAC===="
fi



