# Windows-server-ad-ds-automation

🚀 **Automated Windows Server 2019 AD DS Setup with Vagrant**

This project automates the installation and configuration of Windows Server 2019 with Active Directory Domain Services (AD DS) using Vagrant + VirtualBox.

✅ Uses a prebuilt Windows Server 2019 Vagrant box → No ISO required
✅ Automatically installs and configures Active Directory Domain Services (AD DS)
✅ Runs a PowerShell script (set-up.ps1) to promote the server to a Domain Controller


📖 **About This **Project**
This project is designed to help students, IT professionals, and system administrators quickly create a Windows Server 2019 Domain Controller in a fully automated way.

It eliminates manual installation steps by using:

A prebuilt Windows Server 2019 Vagrant box

set-up.ps1 PowerShell script for AD DS installation

(Optional) Automated.xml for auto-logon settings

📂 **Project Structure**

📁 windows-server-ad-ds/
│── Vagrantfile         # Vagrant configuration for VM setup
│── Automated.xml       # Used for auto-logon configuration (optional)
│── set-up.ps1          # PowerShell script to install and configure AD DS


⚙️ **Features**
✅ No Windows ISO needed – Uses gusztavvargadr/windows-server-2019-standard box
✅ Automatic AD DS installation and configuration
✅ Creates a domain controller without manual steps
✅ Quick and easy setup using Vagrant + VirtualBox

🔧 **Prerequisites**

Install the following on your host system:
VirtualBox
Vagrant


▶️ How to Use

1️⃣ Clone the Repository

git clone https://github.com/your-username/windows-server-ad-ds.git
cd windows-server-ad-ds

2️⃣ Start the VM
vagrant up

What happens automatically:
✅ A Windows Server 2019 VM is created from the prebuilt box
✅ On first boot, set-up.ps1 installs and configures AD DS
✅ The VM becomes a Domain Controller

3️⃣ Access the VM
vagrant rdp or vagrant ssh

Or open VirtualBox and log in using the credentials:
Username vagrant
Password vagrant


Once inside, you can use the AD DS credentials defined in set-up.ps1 (default: Administrator / P@ssw0rd!).

⚙️ Configuration / Customization
You can modify these files to customize your setup:

File	                              What to Edit?
set-up.ps1	        Change domain name (-DomainName), admin password, 
                    or other AD DS options.
Vagrantfile       	Change VM name, memory (vb.memory), CPUs (vb.cpus), 
                    or static IP.
Automated.xml       Modify auto-logon settings or hostname.

⚠️Troubleshooting

Problem	                                  Solution
VM fails to boot	        Ensure VirtualBox and Vagrant are installed and updated.
Provisioning error	        Run vagrant reload --provision.
AD DS setup fails	        Check set-up.ps1 for correct domain name and password format.
Cannot RDP into VM	        Ensure RDP is enabled or use vagrant rdp.
Need static IP	            Edit config.vm.network in Vagrantfile with your desired IP. you can use dhcp if 
                            only have one vm in the virtualbox otherwise it will show error.


