$PackageName = "Dell Command | Update for Windows Universal"

Try {
    Write-Host "Checking for package."
    $PackageGuid = (Get-Package $PackageName -ErrorAction Stop).fastpackagereference
    Write-Host "Package found.`nStarting msiexec."
    Try {
        Start-Process -FilePath msiexec.exe -ArgumentList "/x $PackageGuid /qn /norestart" -Wait -ErrorAction Stop
        Write-Host "Uninstall complete."
    }
    Catch {Write-Host "Uninstall failed.`nCheck that the package has a valid MSI GUID and that the uninstall arguments are correct"}
}
Catch {
    Write-Host "An error has occured.`nExiting script."
}
