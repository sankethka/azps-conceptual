---
external help file: Microsoft.Azure.Commands.SiteRecovery.dll-Help.xml
ms.assetid: 7F6B72A5-12F5-47EA-B5C3-E22F73377D8F
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.4.0/New-AzureRmSiteRecoveryVault.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.4.0/New-AzureRmSiteRecoveryVault.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.4.0/New-AzureRmSiteRecoveryVault.md
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

# New-AzureRmSiteRecoveryVault

## SYNOPSIS
Creates a Site Recovery services vault.

## SYNTAX

```
New-AzureRmSiteRecoveryVault -Name <String> -ResourceGroupName <String> -Location <String> [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmSiteRecoveryVault** cmdlet creates an Azure Site Recovery services vault.

## EXAMPLES

## PARAMETERS

### -Location
Specifies the geographical location name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the name of the vault.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of a resource group.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
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

[Get-AzureRmSiteRecoveryVault](xref:ResourceManager/AzureRM.SiteRecovery/v3.4.0/Get-AzureRmSiteRecoveryVault.md)

[Remove-AzureRmSiteRecoveryVault](xref:ResourceManager/AzureRM.SiteRecovery/v3.4.0/Remove-AzureRmSiteRecoveryVault.md)
