$PackageName = "Dell Command | Update for Windows Universal"
$PackageGUID = (Get-Package $PackageName).fastpackagereference
Start-Process -FilePath msiexec.exe -ArgumentList "/x $PackageGUID /qn /norestart"
