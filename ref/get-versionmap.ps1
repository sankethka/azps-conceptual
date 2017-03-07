$x = Find-Module azurerm -all
foreach ($m in $x) {
  '- name: azurepowershell-' + $m.version
  '  dependencies:'
  $m.Dependencies | %{
    $d = new-object -type psobject -prop ([ordered]@{name=$_.name;version=$_.RequiredVersion})
    '    - module: ' +  $d.name
    '      version: v' + $d.version
  }
}
