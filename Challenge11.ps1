# Enable File and Printer Sharing

Enable-NetFirewallRule -DisplayGroup "File and Printer Sharing"



# Allow ICMP traffic

Enable-NetFirewallRule -Name "FPS-ICMP4-ERQ-In"



# Enable Remote management 

enable-psremoting -force
set-item wsman:\localhost\client\trustedhost -value "ip address of client"



# Remove bloatware 

iex ((new-object system.net.webclient) .downloadstring('https://git.io/debloat'))


# Enable Hyper-V 

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All



# Disable SMBv1

Set-SmbServerConfiguration -EnableSMB1Protocol $false -force
