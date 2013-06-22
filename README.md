Coursera Startup Engineering Course - Virtual Machine
=====================================================

Creates a VirtualBox Virtual Machine with Vagrant and Puppet for Coursera Startup Engineering Course.

#### What will be installed


* Ubuntu 12.04
* Python, g++, wget, curl, htop, vim
* Heroku
* NodeJS v0.8.9

#### Usage


* Download and install [Vagrant 1.2.2](http://downloads.vagrantup.com/tags/v1.2.2)
* Download and install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* Install git submodules: `git submodule update --init`
* Run the command `vagrant up`
* On \*unix to enter in the machine run the command `vagrant ssh` on Windows it will output the configuration to access via `puTTy`
