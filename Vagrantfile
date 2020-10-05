# function to add a nat network adapter for guests communication
#def nat(config)
#  config.vm.provider "virtualbox" do |v|
#    v.customize ["modifyvm", :id, "--nic3", "natnetwork", "--nat-network3", "guestsnetwork", "--nictype3", "82540EM"]
#  end
#end

Vagrant.configure("2") do |config|

  config.vm.guest = :windows
  config.vm.communicator = "winrm"
  config.vm.boot_timeout = 600
  config.vm.graceful_halt_timeout = 600
  config.winrm.retry_limit = 30
  config.winrm.retry_delay = 10

  config.vm.define "dc" do |dc|
    dc.vm.box = "StefanScherer/windows_2019"
    dc.vm.network "private_network", ip: "192.168.56.10"
#    dc.vm.network "private_network", ip: "10.10.10.10", virtualbox__intnet: "vboxnet1"
#    nat(config)
    dc.vm.network :forwarded_port, guest: 5985, host: 25985, id: "winrm"
    dc.vm.network :forwarded_port, guest: 3389, host: 23389, id: "msrdp"
  end

  config.vm.define "workstation" do |workstation|
    workstation.vm.box = "StefanScherer/windows_10"
    workstation.vm.network "private_network", ip: "192.168.56.11"
#    workstation.vm.network "private_network", ip: "10.10.10.11", virtualbox__intnet: "vboxnet1"
#    nat(config)
    workstation.vm.network :forwarded_port, guest: 5985, host: 35985, id: "winrm"
    workstation.vm.network :forwarded_port, guest: 3389, host: 33389, id: "msrdp"
  end

  config.vm.provision "shell", path:"ConfigureRemotingForAnsible.ps1"

end

