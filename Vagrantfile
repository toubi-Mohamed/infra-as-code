# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
  #gitlab Vagrant VM
  config.vm.define "gitlab" do |gitlab|
  gitlab.vm.network "public_network", ip: ""
  #gitlab.vm.network "forwarded_port", guest: , host:
  gitlab.vm.synced_folder "./gitlab_home" , "/vagrant"
  gitlab.vm.provider "virtualbox" do |vm|
     vb.memory= "512"
     vb.cpus= "2"
  end
  gitlab.vm.provision "shell", path: "/scripts/gitlab.sh"
  end
  #Jenkins Vagrant VM
  config.vm.define "jenkins" do |jenkins|
  jenkins.vm.network "public_network", ip: ""
  #jenkins.vm.network "forwarded_port", guest:, host:
  jenkins.vm.synced_folder "./jenkins_home", "/vagrant"
  jenkins.vm.provider "virtualbox" do |vb| 
     vb.memory= "512"
     vb.cpus="2"
  end
  jenkins.vm.provision "shell", path: "/scripts/jenkins.sh"
  end
  #SonareQube Vagrant VM
  config.vm.define "sonare" do |sonare|
  sonare.vm.network "public_network", ip: ""
  #sonare.vm.network "forwarded_port", guest: , host:
  sonare.vm.synced_folder "./sonare_home", "/vagrant"
  sonare.vm.provider "virtualbox" do |vb|
     vb.memory= "512"
     vb.cpus= "2"
  end
  sonare.vm.provision "shell", path: "/scripts/sonar.sh"
  end
  #web server Vagrant VM
  config.vm.define "web" do |web|
  web.vm.network "public_network", ip: ""
 #web.vm.network "forwarded_port", guest: , host:
  web.vm.synced_folder "./web_home", "/vagrant"
  web.vm.provider "virtualbox" do |vb|
      vb.memory= "512"
      vb.cpus= "2"
  end
  web.vm.provision "shell", path: "/scripts/web.sh"
  end
  #Database Vagrant VM
  config.vm.define "dbase" do |dbase|
  dbase.vm.network "public_network", ip: ""
  #dbase.vm.network "forwarded_port", guest: , host:
  dbase.vm.synced_folder "./dbase_home", "/vagrant"
  dbase.vm.provider "virtualbox" do |vb|
       vb.memory= "512"
       vb.cpus= "2"
  end 
  dbase.vm.provision "shell", path: "/scripts/dbase.sh"
  end 
end
