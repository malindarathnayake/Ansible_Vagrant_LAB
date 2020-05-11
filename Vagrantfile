# -*- mode: ruby -*-
# vi: set ft=ruby :
#
Vagrant.configure("2") do |config|
	config.vm.define "controller" do |controller|
					controller.vm.box = "ubuntu/eoan64"
					controller.vm.hostname = "LAB-Controller"
					controller.vm.network "public_network", bridge: "Intel(R) I211 Gigabit Network Connection", ip: "172.17.10.120"
					controller.vm.provider "virtualbox" do |vb|
									vb.memory = "2048"
					end
					controller.vm.provision :shell, path: 'Ansible_LAB_setup.sh'
	end
	(1..3).each do |i|
	   config.vm.define "vls-node#{i}" do |node|
		   				node.vm.box = "ubuntu/eoan64"
		   				node.vm.hostname = "vls-node#{i}"
		   				node.vm.network "public_network", bridge: "Intel(R) I211 Gigabit Network Connection", ip: "172.17.10.12#{i}"
		   				node.vm.provider "virtualbox" do |vb|
				 										vb.memory = "1024"
		   				end
					end
			end
	end
