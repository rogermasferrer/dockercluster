# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"
  # config.vm.synced_folder "../data", "/vagrant_data"
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL

  config.vm.box = "ubuntu/trusty64"
  config.vm.box_check_update = false
  config.vm.provision "shell", path: "bootstrap.sh"

  config.vm.define "vnode01" do |vn01|
    vn01.vm.hostname = "vnode01"
    vn01.vm.network "private_network", ip: "172.30.0.10"
    vn01.vm.network "forwarded_port", guest: 80, host:8001
    vn01.vm.synced_folder "vnode01", "/home/host"
    vn01.vm.provider "virtualbox" do |vb|
      vb.name = "vnode01"
      vb.memory = "1024"
      vb.cpus = "2"
    end
  end

  config.vm.define "vnode02" do |vn02|
    vn02.vm.hostname = "vnode01"
    vn02.vm.network "private_network", ip: "172.30.0.20"
    vn02.vm.network "forwarded_port", guest: 80, host:8002
    vn02.vm.provider "virtualbox" do |vb|
      vb.name = "vnode02"
      vb.memory = "1024"
      vb.cpus = "2"
    end
  end

end
