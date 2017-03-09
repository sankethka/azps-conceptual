$map = @{}

$allversions = Find-Module azurerm -all
$map.Add('resourcemanager',@())
foreach ($module in $allversions) {
  $map.resourcemanager += ([ordered]@{
    'name'=('azrmps-' + $module.version)
    'dependencies'=@()
  })
  $module.Dependencies | %{
    $map.resourcemanager[-1].dependencies += ([ordered]@{module=$_.name;version=$_.RequiredVersion})
  }
}

$allversions = Find-Module azure -all
$map.Add('servicemanagement',@())
foreach ($module in $allversions) {
  $map.servicemanagement += ([ordered]@{
    'name'=('azsmps-' + $module.version)
    'dependencies'=@()
  })
  $module.Dependencies | %{
    $map.servicemanagement[-1].dependencies += ([ordered]@{module=$_.name;version=$_.RequiredVersion})
  }
}

$map
