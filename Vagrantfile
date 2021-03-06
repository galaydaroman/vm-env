# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine.
  %w(3000:80 3001 3002 9291 9292 9293).each do |ports|
    guest, host = ports.split ':'
    host ||= guest
    config.vm.network "forwarded_port", guest: guest, host: host
  end

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  config.ssh.forward_agent = true

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  config.vm.synced_folder "../fusetube", "/home/vagrant/fusetube"
  config.vm.synced_folder "../121",      "/home/vagrant/121"
  config.vm.synced_folder "../reports",  "/home/vagrant/reports"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    vb.name = 'vm-fuse-env'
    vb.cpus = 4
    vb.memory = 6200
    vb.customize ['modifyvm', :id, '--paravirtprovider', 'kvm']

    # Don't boot with headless mode
    # vb.gui = true
    # Use VBoxManage to customize the VM. For example to change memory:
    # vb.customize ["modifyvm", :id, "--memory", 1536, "--cpus", 2]
  end

  config.vm.provision 'chef_solo' do |chef|
    chef.add_recipe 'system'
    chef.add_recipe 'xvfb'
    chef.add_recipe 'rvm::user'
    chef.add_recipe 'fuse'

    chef.json = {
      rvm: {
        user_installs: [
          user: 'vagrant',
          default_ruby: '2.1.2',
          rvm_gem_options: '--no-rdoc --no-ri',
          rvmrc: {
            rvm_trust_rvmrcs_flag: 1,
            rvm_always_trust_rvmrc_flag: 1,
            rvm_install_on_use_flag: 1
          }
        ]
      }
    }
  end
end
