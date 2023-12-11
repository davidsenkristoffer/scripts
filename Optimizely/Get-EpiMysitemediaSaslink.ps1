param(
    [Parameter()]
    [string]$ProjectId,

    [Parameter()]
    [string]$ClientKey,

    [Parameter()]
    [string]$ClientSecret
)

Connect-EpiCloud -ClientKey $ClientKey -ClientSecret $ClientSecret -ProjectId $ProjectId
$mysitemedia = Get-EpiStorageContainerSasLink -Environment "Integration" -StorageContainer "mysitemedia"

If ($mysitemedia -ne $null -and $mysitemedia -ne '')
{
    Write-Host $mysitemedia
}
Else
{
    Write-Host "Can't produce SAS link..."
}

