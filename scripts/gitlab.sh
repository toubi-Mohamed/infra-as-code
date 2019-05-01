#apt-get update
#install the necessary dependencies
apt-get install -y curl openssh-server ca-certificates
#install postfix
debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Internet Site'"
debconf-set-selections <<< "postfix postfix/mailname $HOSTNAME.localdomain.com"
apt-get install -y postfix
#install gitlab
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
apt-get update
apt-get install -y gitlab-ce



