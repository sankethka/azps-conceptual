---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: E7EC78AD-F098-4687-B241-8815F3597BFA
updated_at: 1/11/2017 6:32 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Remove-AzureAffinityGroup.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Remove-AzureAffinityGroup.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/34e1c9880d0370f1dd5f83ea8d5ee7f59cb5e559/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Remove-AzureAffinityGroup.md
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

# Remove-AzureAffinityGroup

## SYNOPSIS
Deletes an affinity group in a subscription.

## SYNTAX

```
Remove-AzureAffinityGroup [-Name] <String> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureAffinityGroup** cmdlet deletes an Azure affinity group in the current subscription.
You cannot delete an affinity group that has any members.
You must first delete all the members of an affinity group.

## EXAMPLES

### Example 1: Remove an affinity group
```
PS C:\> Remove-AzureAffinityGroup -Name "South01"
```

This command deletes the South01 affinity group in the current subscription.

## PARAMETERS

### -Name
Specifies the name of the affinity group that this cmdlet deletes.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

```yaml
Type: AzureSMProfile
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

[Get-AzureAffinityGroup](xref:ServiceManagement/Azure.Service/v3.0.0/Get-AzureAffinityGroup.md)

[New-AzureAffinityGroup](xref:ServiceManagement/Azure.Service/v3.0.0/New-AzureAffinityGroup.md)

[Set-AzureAffinityGroup](xref:ServiceManagement/Azure.Service/v3.0.0/Set-AzureAffinityGroup.md)


