$map = . 'C:\Git\AzurePS\azps-conceptual\ref\get-versionmap.ps1' 

<#
$srcpath = 'C:\Git\AzurePS\azure-docs-powershell\azureps-cmdlets-docs\ResourceManager'
Push-Location C:\Git\AzurePS\azure-powershell-docs\azrmps\3.7.0
$map.resourcemanager.dependencies | %{
  $mod = $_.module
  $ver = $_.version
  $dst = (md $mod).FullName
  if ($mod -eq 'Azure.AnalysisServices' ) {
    $src = "C:\Git\AzurePS\azure-docs-powershell\azureps-cmdlets-docs\ServiceManagement\$mod\v$ver\*.md"
  } elseif ($mod -eq 'Azure.Storage') {
    $src = "C:\Git\AzurePS\azure-docs-powershell\azureps-cmdlets-docs\Storage\$mod\v$ver\*.md"
  } else {
    $src = "$srcpath\$mod\v$ver\*.md"
  }
  if (Test-Path $src) { 
    Copy-Item $src $dst
  } else {
    "Error - Missing Path: $src"
  }
}
Pop-Location
#>

$srcpath = 'C:\Git\AzurePS\azure-docs-powershell\azureps-cmdlets-docs\ServiceManagement'
Push-Location C:\Git\AzurePS\azure-powershell-docs\azsmps\3.7.0
$map.servicemanagement.dependencies | %{
  $mod = $_.module
  $ver = $_.version
  $dst = (md $mod).FullName
  if ($mod -eq 'AzureRM.Profile' ) {
    $src = "C:\Git\AzurePS\azure-docs-powershell\azureps-cmdlets-docs\ResourceManager\$mod\v$ver\*.md"
  } elseif ($mod -eq 'Azure.Storage') {
    $src = "C:\Git\AzurePS\azure-docs-powershell\azureps-cmdlets-docs\Storage\$mod\v$ver\*.md"
  } else {
    $src = "$srcpath\$mod\v$ver\*.md"
  }
  if (Test-Path $src) { 
    Copy-Item $src $dst
  } else {
    "Error - Missing Path: $src"
  }
}
Pop-Location