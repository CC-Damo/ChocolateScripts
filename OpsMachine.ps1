# Boxstarter options
$Boxstarter.RebootOk=$true # Allow reboots?
$Boxstarter.NoPassword=$false # Is this a machine with no login password?
$Boxstarter.AutoLogin=$false #Do not Save password for auto login.

#### .NET 3.5 ####

cinst dotnet3.5 -y # Not automatically installed. Includes .NET 2.0. Uses Windows Features to install.

if (Test-PendingReboot) { Invoke-Reboot }

################################# SOFTWARE #######################################

#Other dev tools
choco install sourcetree -y
choco install hipchat -y
choco install putty -y
choco install grepwin -y
choco install keepass -y
choco install mssqlservermanagementstudio2014express -y

# Update Windows and reboot if necessary
Install-WindowsUpdate -AcceptEula -GetUpdatesFromMS
if (Test-PendingReboot) { Invoke-Reboot }