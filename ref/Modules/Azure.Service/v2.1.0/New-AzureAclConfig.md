---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: ED46BF70-FADA-45DE-B450-53D22B068BAE
updated_at: 1/14/2017 6:46 PM
ms.date: 1/14/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v2.1.0/New-AzureAclConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v2.1.0/New-AzureAclConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/6555eb8cb2408f85e337832ad5b9d0adb06ce475/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v2.1.0/New-AzureAclConfig.md
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

# New-AzureAclConfig

## SYNOPSIS
Creates an empty ACL configuration object.

## SYNTAX

```
New-AzureAclConfig [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureAclConfig** cmdlet creates an empty access control list (ACL) configuration object.

## EXAMPLES

### Example 1: Create an ACL configuration object
```
PS C:\> $Acl = New-AzureAclConfig
```

This command creates an empty ACL configuration object, and then stores it in the $Acl variable.

## PARAMETERS

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureAclConfig](xref:ServiceManagement/Azure.Service/v2.1.0/Get-AzureAclConfig.md)

[Remove-AzureAclConfig](xref:ServiceManagement/Azure.Service/v2.1.0/Remove-AzureAclConfig.md)

[Set-AzureAclConfig](xref:ServiceManagement/Azure.Service/v2.1.0/Set-AzureAclConfig.md)


