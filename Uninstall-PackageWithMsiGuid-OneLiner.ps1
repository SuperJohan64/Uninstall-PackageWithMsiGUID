start-process -FilePath msiexec.exe -ArgumentList "/x $((Get-Package | Where-Object {$_.Name -eq "Dell Command | Update for Windows Universal"}).fastpackagereference) /qn /norestart"
