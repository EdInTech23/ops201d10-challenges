# Local file 
ipconfig /all | Out-File -FilePath "C:\Users\Prete\Desktop\network_report.txt"
# Write-Host "Network report saved"

#select-string to search network_rport.txt
$reportPath = "C:\Users\Prete\Desktop\network_report.txt"
Get-Content $reportPath | Select-String -Pattern 'IPv4 Address' | ForEach-Object { ($_ -split ':\s+')[1] }

#Remove the network_report.txt when you are finished searching it.
(Get-Content "C:\Users\Prete\Desktop\network_report.txt" | Select-String -Pattern 'IPv4 Address').Matches.Value -replace '.*:\s', '' | ForEach-Object { Remove-Item -Path "C:\Users\Prete\Desktop\network_report.txt" } -End { $_ }
