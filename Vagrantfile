# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box_url = 'https://dl.dropboxusercontent.com/u/197673519/debian-7.2.0.box'
  config.vm.box = "wheezy"
  
  config.vm.network "forwarded_port", guest: 8069, host: 8888
  
  config.vm.provision :shell, :path => 'bootstrap.sh'

end
