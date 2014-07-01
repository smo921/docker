# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

hosts = [ 'dockerdev1' ]

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  hosts.each do |host|
    config.vm.define host do |host|
      host.vm.hostname = "dockerdev1"
      host.vm.box = "precise64"
  
      host.vm.box_url = "http://files.vagrantup.com/precise64.box"

      host.vm.synced_folder "images", "/docker_images"
      host.vm.synced_folder "packaging", "/packaging"
  
      host.vm.provider "virtualbox" do |vb|
        vb.customize ["modifyvm", :id, "--memory", "2048"]
      end

      host.vm.provision "shell", path: "provisioning/pre-provision.sh"

      host.vm.provision "ansible" do |ansible|
        ansible.playbook = "provisioning/playbook.yaml"
        ansible.host_key_checking = false
      end

    end
  end
end

