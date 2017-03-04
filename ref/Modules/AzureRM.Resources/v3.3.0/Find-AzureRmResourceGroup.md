---
external help file: Microsoft.Azure.Commands.ResourceManager.Cmdlets.dll-Help.xml
ms.assetid: EFBBFB60-D972-47B8-997E-B737F0CA007E
online version: 
schema: 2.0.0
updated_at: 2/2/2017 5:07 PM
ms.date: 2/2/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.3.0/Find-AzureRmResourceGroup.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.3.0/Find-AzureRmResourceGroup.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/a97db0e30c3796fb34f72a2f76f8dcee2d69cb9a/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.3.0/Find-AzureRmResourceGroup.md
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

# Find-AzureRmResourceGroup

## SYNOPSIS
Searches for resource groups.

## SYNTAX

```
Find-AzureRmResourceGroup [-Tag <Hashtable>] [-ApiVersion <String>] [-Pre] [<CommonParameters>]
```

## DESCRIPTION
The **Find-AzureRmResourceGroup** cmdlet searches for resource groups using the specified parameters.

## EXAMPLES

### Example 1: Find all resource groups
```
PS C:\> Find-AzureRmResourceGroup
```

This command finds all resource groups.

### Example 2: Find resource groups by tag name
```
PS C:\> Find-AzureRmResourceGroup -Tag @{ Name = "testtag" }
```

This command finds all resource groups that have a tag named testtag.

### Example 3: Find resource groups by tag name and value
```
PS C:\> Find-AzureRmResourceGroup -Tag @{ Name = "testtag"; Value = "testval" }
```

This command finds all resource groups that have a tag named testtag and the value testval.

## PARAMETERS

### -Tag
Specifies tag information, as a hash table, to filter your results.
Use the following formats: 

`@{Name = '`tagName`'}`
`@{Name = '`tagName`'; Value = '`tagValue`'}`

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ApiVersion
Specifies the version of the resource provider API to use.
If you do not specify a version, this cmdlet uses the latest available version.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Pre
Indicates that this cmdlet considers pre-release API versions when it automatically determines which version to use.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureRmResourceGroup](xref:ResourceManager/AzureRM.Resources/v3.2.0/.Get-AzureRmResourceGroup.md)

[New-AzureRmResourceGroup](xref:ResourceManager/AzureRM.Resources/v3.2.0/.New-AzureRmResourceGroup.md)

[Remove-AzureRmResourceGroup](xref:ResourceManager/AzureRM.Resources/v3.2.0/.Remove-AzureRmResourceGroup.md)

[Set-AzureRmResourceGroup](xref:ResourceManager/AzureRM.Resources/v3.2.0/.Set-AzureRmResourceGroup.md)
