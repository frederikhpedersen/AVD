#########################################################################
#### Azure Image Builder pausing script - By FrederikHPedersen       ####
#########################################################################

# Create a file to pause the script
New-Item C:\Pause.txt -ItemType File | Out-Null
Write-Host 'Sleeping...'

# Wait for the file to be deleted
Do { Start-Sleep -Seconds 1 } While (Test-Path C:\Pause.txt)

# Wait for 90 secounds before resuming
Start-Sleep -Seconds 90
Write-Host 'Resuming...' 