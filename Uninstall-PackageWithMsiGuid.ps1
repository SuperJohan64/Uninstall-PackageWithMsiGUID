$PackageNames = "Dell Command*Update*Windows 10*","Dell Command*Update for Windows Universal"

foreach ($PackageName in $PackageNames) {
    Try {
        Write-Host "`nChecking for: $PackageName"
        $PackageGuid = (Get-Package $PackageName -ErrorAction Stop ).fastpackagereference
        Write-Host "Package found.`nStarting msiexec."
        Try {
            Start-Process -FilePath msiexec.exe -ArgumentList "/x $PackageGuid /qn /norestart" -Wait -ErrorAction Stop
            Write-Host "Uninstall complete."
        }
        Catch {Write-Host "Msiexec failed.`nCheck that the package has a valid MSI GUID and that the uninstall arguments are correct"}
    }
    Catch {
        Write-Host "Could not uninstall package."
    }
}
