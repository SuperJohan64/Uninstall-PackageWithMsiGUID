$Packages = Get-Package
$PackageInfo = @()

foreach ($Package in $Packages) {
    $PackageInfo += New-Object -TypeName psobject -Property @{
        Name = $Package.Name
        Version = $Package.Version
        Source = $Package.Source
        ProviderName = $Package.ProviderName
        MsiGuid = $Package.fastpackagereference
    }
}

$PackageInfo `
    | Select-Object Name, Version, Source, ProviderName, MsiGuid `
    | Sort-Object ProviderName, Name `
    | Out-GridView
