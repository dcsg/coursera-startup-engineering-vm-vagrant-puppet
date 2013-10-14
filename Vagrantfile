# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu_aws"
  config.vm.box_url = "https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box"

  config.vm.synced_folder ".", "/vagrant", id: "vagrant-root"

  config.vm.provider :aws do |aws, override|
    aws.access_key_id = "YOUR ACCESS KEY HERE"
    aws.secret_access_key = "YOUR SECRET ACCESS KEY HERE"
    aws.keypair_name = "PAIR NAME HERE"

    aws.ami = "ami-xxxxxxxx"
    aws.region = "us-xxxx-xx"
    aws.instance_type = "INSTANCE TYOPE HERE"
    aws.security_groups = "GROUP NAME HERE"

    override.ssh.username = "ubuntu"
    override.ssh.private_key_path = "/path/to/pem/key"
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "vagrant/puppet/manifests"
    puppet.manifest_file  = "init.pp"
  end
end
