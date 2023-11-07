# Enable File and Printer Sharing

Enable-NetFirewallRule -DisplayGroup "File and Printer Sharing"



# Allow ICMP traffic

Enable-NetFirewallRule -Name "FPS-ICMP4-ERQ-In"



# Enable Remote management (WinRM)

Set-ExecutionPolicy RemoteSigned -Force

Enable-PSRemoting -Force



# Remove bloatware (Uninstalling specific apps, customize as needed)

Get-AppxPackage -AllUsers | Where-Object { $_.Name -like "*bloatware*" } | Remove-AppxPackage -AllUsers



# Enable Hyper-V (if not already enabled)

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All



# Disable SMBv1

Set-SmbServerConfiguration -EnableSMB1Protocol $false
