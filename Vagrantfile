# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu-server-12-10"
  config.vm.box_url = "https://github.com/downloads/roderik/VagrantQuantal64Box/quantal64.box"
  
  config.vm.network :private_network, ip: "10.0.0.5"
  
  config.vm.provider :virtualbox do |vb|
    vb.customize [
      "modifyvm", :id,
      "--memory", "512"
    ]
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "vagrant/puppet/manifests"
    puppet.module_path    = "vagrant/puppet/modules"
    puppet.manifest_file  = "main.pp"
    puppet.options        = [
                              '--verbose',
                              #'--debug',
                            ]
  end
end
