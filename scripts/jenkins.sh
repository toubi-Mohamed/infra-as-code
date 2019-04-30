#install java
sudo apt-get install -y default-jdk
sudo echo "export JAVA_HOME=$PATH:/usr/lib/jvm/java-8-openjdk-amd64/jre/bin
" >> /etc/profile
#install jenkins
sudo apt-get install -y default-jdk
sudo apt-get install -y wget
sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo echo "deb https://pkg.jenkins.io/debian binary/" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y jenkins

