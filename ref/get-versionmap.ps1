$map = @{}

$allversions = Find-Module azurerm -RequiredVersion 3.7.0

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

$allversions = Find-Module azure -RequiredVersion 3.7.0

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
