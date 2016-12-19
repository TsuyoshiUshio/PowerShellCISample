function Get-UserModulePath {
 
    $Path = $env:PSModulePath -split ";" -match $env:USERNAME
 
    if (-not (Test-Path -Path $Path))
    {
        New-Item -Path $Path -ItemType Container | Out-Null
    }
        $Path
}
$path = Get-UserModulePath
Write-Output $path 
Copy-Item -Path Pester -Destination $path -Recurse
Import-Module Pester
Get-Module -Name Pester | Select -ExpandProperty ExportedCommands | Write-Output