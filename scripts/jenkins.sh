#install jenkins
sudo apt-get install -y wget
sudo wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo echo "deb https://pkg.jenkins.io/debian binary/" >> /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y jenkins
#install plugin nécessaire pour jenkins 
