# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.box = "centos_64_6_4"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130427.box"
  config.vm.hostname = "centos.lamp.com"
  config.vm.network :forwarded_port, guest: 80, host: 8080

  # config.vm.synced_folder "../data", "/vagrant_data"

  # chef-solo config

  config.vm.provision :chef_solo do |chef|
      
    chef.cookbooks_path = "cookbooks"

    chef.add_recipe "yum"
    chef.add_recipe("build-essential")
    chef.add_recipe("openssl")
    chef.add_recipe("xml")
    chef.add_recipe "apache2"
    chef.add_recipe "apache2::mod_php5"
    chef.add_recipe "apache2::mod_rewrite"
    chef.add_recipe "php"
    chef.add_recipe "php::module_mysql"
    chef.add_recipe "mysql::server"
    chef.add_recipe "composer"

    chef.json.merge!({
      "mysql" => {
          "server_root_password" => "root",
          "server_repl_password" => "root",
          "server_debian_password" => "root"
      }
    })

  end
  
  config.vm.provision :shell, :path => "test.sh"
  #config.vm.provision :shell, :inline => "echo foo > /vagrant/test"

end
