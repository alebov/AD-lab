Vagrant.configure("2") do |config|

  config.vm.guest = :windows
  config.vm.communicator = "winrm"
  config.vm.boot_timeout = 600
  config.vm.graceful_halt_timeout = 600
  config.winrm.retry_limit = 30
  config.winrm.retry_delay = 10
  
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end

  config.vm.define "dc" do |dc|
    dc.vm.box = "StefanScherer/windows_2019"
    dc.vm.network "private_network", ip: "192.168.56.10"
    dc.vm.network :forwarded_port, guest: 3389, host: 23389, id: "msrdp"
    dc.vm.network :forwarded_port, guest: 5985, host: 25985, id: "winrm"
  end

  config.vm.define "server" do |server|
    server.vm.box = "StefanScherer/windows_2019"
    server.vm.network "private_network", ip: "192.168.56.11"
    server.vm.network :forwarded_port, guest: 3389, host: 33389, id: "msrdp"
    server.vm.network :forwarded_port, guest: 5985, host: 35985, id: "winrm"
  end

  config.vm.define "workstation" do |workstation|
    workstation.vm.box = "StefanScherer/windows_10"
    workstation.vm.network "private_network", ip: "192.168.56.12"
    workstation.vm.network :forwarded_port, guest: 3389, host: 43389, id: "msrdp"
    workstation.vm.network :forwarded_port, guest: 5985, host: 45985, id: "winrm"
  end

  config.vm.provision "shell", path:"ConfigureRemotingForAnsible.ps1"

end
