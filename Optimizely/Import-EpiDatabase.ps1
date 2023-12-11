param(
    [Parameter()]
    [string]$ProjectId,

    [Parameter()]
    [string]$ClientKey,

    [Parameter()]
    [string]$ClientSecret,

    [Parameter()]
    [string]$Path,

    [Parameter()]
    [string]$PackageName
)

Connect-EpiCloud -ClientKey $ClientKey -ClientSecret $ClientSecret -ProjectId $ProjectId
$saslink = Get-EpiDeploymentPackageLocation
Add-EpiDeploymentPackage -SasUrl $saslink -Path $Path
Start-EpiDeployment -DeploymentPackage @('$PackageName') -TargetEnvironment "Integration" -DirectDeploy