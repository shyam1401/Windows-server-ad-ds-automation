
# Install AD DS feature
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

# Create a new forest and promote to DC
Install-ADDSForest `
  -DomainName "power.local" `
  -DomainNetbiosName "POWER" `
  -SafeModeAdministratorPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) `
  -InstallDns `
  -Force:$true

