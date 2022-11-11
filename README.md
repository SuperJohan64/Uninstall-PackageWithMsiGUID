# Uninstall-PackageWithMsiGuid
The Uninstall-PackageWithMsiGuid.ps1 script finds the MSI GUID of a given package then silently uninstalls it with msiexec. You can find the package name in the Programs and Features (appwiz.cpl) menu or use the Get-PackageInfo.ps1 script in this repository.

This is useful if you have multiple versions of an app and you want to silently uninstall them with a single command.

***Note that this tool will only work if a package has a MSI GUID in the registry. To check if your package has a MSI GUID use the Get-Packageinfo.ps1 script***

# Get-PackageInfo
Use the Get-PackageInfo.ps1 script to verify if a given package has a MSI GUID. It must look like {XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX}.
