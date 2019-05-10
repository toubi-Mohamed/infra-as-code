#install JDK et JRE
apt-get install -y default-jdk
apt-get install -y default-jre
#install dependcies 
apt-get install -y software-properties-common dirmngr
echo  "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | tee /etc/apt/sources.list.d/webupd8team-java.list
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" | tee -a /etc/apt/sources.list.d/webupd8t-java.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886
#apt-get install -y oracle-java11-installer
#echo debconf shared/accepted-oracle-license-v1-1 select true | \
#  sudo debconf-set-selections
#echo debconf shared/accepted-oracle-license-v1-1 seen true | \
#  sudo debconf-set-selections
#apt-get install -y oracle-java11-set-default
