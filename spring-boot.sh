RED='\033[0;31m'
DG='\033[0;31m'

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
else
  echo "NOT MAC===="
fi



