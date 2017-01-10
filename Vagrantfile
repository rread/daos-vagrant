# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.synced_folder "work/", "/work/"

  if ENV['http_proxy']
          config.proxy.http = ENV['http_proxy']
          config.proxy.https = ENV['http_proxy']
          config.proxy.no_proxy = ENV['no_proxy']
  end

  config.vm.provider "virtualbox" do |vb|
          vb.memory = "1536"
  end

  config.vm.provision "chef_solo" do |chef|
          chef.node_name = "daos1"
          chef.add_recipe "daosdev"
          chef.http_proxy = ENV['http_proxy']
  end
  config.ssh.forward_agent = true
end
