Vagrant.configure("2") do |config|
  # Use a prebuilt Windows Server 2019 box (community box from Vagrant Cloud)
  config.vm.box = "gusztavvargadr/windows-server-2019-standard"
  config.vm.communicator = "winrm"
  config.vm.guest = :windows
  config.winrm.username = "vagrant"
  config.winrm.password = "vagrant"

  config.vm.boot_timeout = 600

  config.vm.provider "virtualbox" do |vb|
    vb.name = "winserver2019-4"
    vb.memory = 4096
    vb.cpus = 2
  end

  # ✅ Correct path syntax with double backslashes
  config.vm.provision "shell", path: "C:\\vagrant-ad\\set-up.ps1"

  # Optional static IP
  config.vm.network "private_network", ip: "192.168.56.110"

  # ✅ Confirm provision worked (creates a test file)
  config.vm.provision "shell", inline: <<-POWERSHELL
    New-Item -Path C:\\vagrant -Name setup_complete.txt -ItemType File
  POWERSHELL
end
