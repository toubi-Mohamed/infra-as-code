#install the necessary dependencies
apt-get install -y curl \
openssh-server \
ca-certificates \
#install postfix
echo "postfix postfix/main_mailer_type select Internet Site" | debconf-set-selections
echo "postfix postfix/mailname string $hostname.localdomain" | debconf-set-selections
apt-get install -y postfix
#install gitlab
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
apt-get install -y gitlab-ce
#configure  GitLab instance
gitlab-ctl reconfigure
gitlab-ctl status 



