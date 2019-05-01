#install JDK et JRE
sudo apt-get install -y default-jdk
sudo apt-get install -y default-jre
#install dependcies 
sudo apt-get install -y software-properties-common dirmngr
sudo add-apt-repository -y "deb http://ppa.launchpad.net/webupd8team/java/ubuntu yakkety main"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886
sudo apt-get install -y oracle-java11-installer
echo debconf shared/accepted-oracle-license-v1-1 select true | \
  sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | \
  sudo debconf-set-selections
sudo apt-get install -y oracle-java11-set-default
