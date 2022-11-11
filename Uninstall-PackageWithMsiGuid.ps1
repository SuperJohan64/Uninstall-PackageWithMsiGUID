$PackageName = "Dell Command | Update for Windows Universal"
$PackageGuid = (Get-Package $PackageName).fastpackagereference
Start-Process -FilePath msiexec.exe -ArgumentList "/x $PackageGuid /qn /norestart"
