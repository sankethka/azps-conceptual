---
external help file: Microsoft.Azure.Commands.ResourceManager.Cmdlets.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: CA6D297F-D016-457E-BA00-AD791D6FFE60
updated_at: 1/9/2017 9:52 PM
ms.date: 1/9/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.2.0/Get-AzureRmPolicyDefinition.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.2.0/Get-AzureRmPolicyDefinition.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/4f60f66b5229674cbde5c80b99ac704ad8318378/azureps-cmdlets-docs/ResourceManager/AzureRM.Resources/v3.2.0/Get-AzureRmPolicyDefinition.md
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

# Get-AzureRmPolicyDefinition

## SYNOPSIS
Gets policy definitions.

## SYNTAX

### The list all policy definitions parameter set. (Default)
```
Get-AzureRmPolicyDefinition [-ApiVersion <String>] [-Pre] [<CommonParameters>]
```

### The policy definition name parameter set.
```
Get-AzureRmPolicyDefinition -Name <String> [-ApiVersion <String>] [-Pre] [<CommonParameters>]
```

### The policy definition Id parameter set.
```
Get-AzureRmPolicyDefinition -Id <String> [-ApiVersion <String>] [-Pre] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmPolicyDefinition** cmdlet gets all the policy definitions or a specific policy definition identified by name or ID.

## EXAMPLES

### Example 1: Get all policy definition
```
PS C:\> Get-AzureRmPolicyDefinition
```

This command gets all the policy definitions.

### Example 2: Get policy definition by name
```
PS C:\> Get-AzureRmPolicyDefinition -Name "VMPolicyDefinition"
```

This command gets the policy definition named VMPolicyDefinition.

## PARAMETERS

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

### -Name
Specifies the name of the policy definition that this cmdlet gets.

```yaml
Type: String
Parameter Sets: The policy definition name parameter set.
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Id
Specifies the fully qualified resource ID for the policy definition that this cmdlet gets.

```yaml
Type: String
Parameter Sets: The policy definition Id parameter set.
Aliases: ResourceId

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[New-AzureRmPolicyDefinition](xref:ResourceManager/AzureRM.Resources/v3.2.0/New-AzureRmPolicyDefinition.md)

[Remove-AzureRmPolicyDefinition](xref:ResourceManager/AzureRM.Resources/v3.2.0/Remove-AzureRmPolicyDefinition.md)

[Set-AzureRmPolicyDefinition](xref:ResourceManager/AzureRM.Resources/v3.2.0/Set-AzureRmPolicyDefinition.md)


