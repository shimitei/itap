# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  config.vm.define :itap do |server|
    server.vm.hostname = "dev.itap"
    server.vm.box = "opscode-ubuntu-14.04"
    server.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-14.04_chef-provisionerless.box"
    server.vm.network :private_network, ip: "192.168.36.30"
    server.vm.network :forwarded_port, host: 8622, guest: 22
    server.vm.network :forwarded_port, host: 8000, guest: 80
    server.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
    end

    server.vm.synced_folder "application", "/srv/application/current",
     id: "vagrant-root", :nfs => false,
     :owner => "vagrant",
     :group => "vagrant",
     :mount_options => ["dmode=775,fmode=775"]

    server.vm.provision :ansible_local do |ansible|
      ansible.limit           = 'all'
      ansible.install         = true
      ansible.inventory_path  = "ansible/hosts/hosts"
      ansible.playbook        = "ansible/development.yml"
    end
  end
end
