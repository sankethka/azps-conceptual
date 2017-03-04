---
external help file: Microsoft.Azure.Commands.Resources.dll-Help.xml
ms.assetid: 7740AC3B-F643-4F8D-8DC5-ACBF59323BD8
online version: 
schema: 2.0.0
updated_at: 2/24/2017 6:39 PM
ms.date: 2/24/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.3.0/Get-AzureRmRoleDefinition.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.3.0/Get-AzureRmRoleDefinition.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/59dc8cd53cf4cb3018fdbd69ababdd910d9a17d4/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.3.0/Get-AzureRmRoleDefinition.md
ms.topic: reference
ms.prod: powershell
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: erickson-doug
open_to_public_contributors: False
ms.service: azure-powershell
---

# Get-AzureRmRoleDefinition

## SYNOPSIS
Lists all Azure RBAC roles that are available for assignment.

## SYNTAX

### RoleDefinitionNameParameterSet
```
Get-AzureRmRoleDefinition [[-Name] <String>] [-Scope <String>] [-AtScopeAndBelow]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>]
```

### RoleDefinitionIdParameterSet
```
Get-AzureRmRoleDefinition -Id <Guid> [-Scope <String>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>]
```

### RoleDefinitionCustomParameterSet
```
Get-AzureRmRoleDefinition [-Scope <String>] [-Custom] [-AtScopeAndBelow]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>]
```

## DESCRIPTION
Use the **Get-AzureRmRoleDefinition** command with a particular role name to view its details.
To inspect individual operations that a role grants access to, review the Actions and NotActions properties of the role.

## EXAMPLES

### Example 1: Get a specific role definition

```
PS C:\> Get-AzureRmRoleDefinition -Name "Reader"
```

This command gets the role definition named Reader.

### Example 2: Get all RBAC role definitions

```
PS C:\> Get-AzureRmRoleDefinition
```

This command lists all RBAC role definitions.

## PARAMETERS

### -Name
Specifies the name of the role definition.

Valid values are:

- Reader
- Contributor
- Virtual Machine Contributor

```yaml
Type: String
Parameter Sets: RoleDefinitionNameParameterSet
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Scope
Specifies the role definition scope.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -AtScopeAndBelow
Indicates that the cmdlet displays all role definitions.

```yaml
Type: SwitchParameter
Parameter Sets: RoleDefinitionNameParameterSet, RoleDefinitionCustomParameterSet
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -InformationAction
Specifies how this cmdlet responds to an information event.

The acceptable values for this parameter are:

- Continue
- Ignore
- Inquire
- SilentlyContinue
- Stop
- Suspend

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: infa

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InformationVariable
Specifies an information variable.

```yaml
Type: String
Parameter Sets: (All)
Aliases: iv

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
Specifies the ID of the role definition.

```yaml
Type: Guid
Parameter Sets: RoleDefinitionIdParameterSet
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Custom
Indicates that the cmdlet displays the custom created roles in the directory.

```yaml
Type: SwitchParameter
Parameter Sets: RoleDefinitionCustomParameterSet
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

## NOTES
Keywords: azure, azurerm, arm, resource, management, manager, resource, group, template, deployment

## RELATED LINKS

[Get-AzureRmRoleAssignment](xref:ResourceManager/AzureRM.Resources/v3.3.0/Get-AzureRmRoleAssignment.md)

[New-AzureRmRoleAssignment](xref:ResourceManager/AzureRM.Resources/v3.3.0/New-AzureRmRoleAssignment.md)

[New-AzureRmRoleDefinition](xref:ResourceManager/AzureRM.Resources/v3.3.0/New-AzureRmRoleDefinition.md)

[Remove-AzureRmRoleDefinition](xref:ResourceManager/AzureRM.Resources/v3.3.0/Remove-AzureRmRoleDefinition.md)
