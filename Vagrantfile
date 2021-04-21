# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define 'database' do |db|
    db.vm.box = "generic/ubuntu2004"
    db.ssh.insert_key = false
    db.ssh.username = "vagrant"
    db.vm.network "private_network", ip: "192.168.50.10"
    db.vm.hostname = "database"
    db.vm.synced_folder ".", "/vagrant"
    db.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = 1024
      vb.linked_clone = false
    end

    db.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "database.yaml"
    ansible.verbose="v"
    ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/python3.8" }
    end
  end
  config.vm.define 'wordpress' do |wp|
    wp.vm.box = "generic/ubuntu2004"
    wp.ssh.insert_key = false
    wp.ssh.username = "vagrant"
    wp.vm.network "private_network", ip: "192.168.50.2"
    wp.vm.hostname = "wordpress"
    wp.vm.synced_folder ".", "/vagrant"
    wp.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.memory = 1024
      vb.linked_clone = false
    end

    wp.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "wordpress.yaml"
    ansible.verbose="v"
    ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/python3.8" }
    end
  end
end
