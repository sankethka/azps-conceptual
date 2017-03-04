---
external help file: Microsoft.Azure.Commands.SiteRecovery.dll-Help.xml
ms.assetid: 77AFEF57-A4ED-4F82-A3FF-0E33D7810B3B
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.3.0/Get-AzureRmSiteRecoveryRecoveryPoint.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.3.0/Get-AzureRmSiteRecoveryRecoveryPoint.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.3.0/Get-AzureRmSiteRecoveryRecoveryPoint.md
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

# Get-AzureRmSiteRecoveryRecoveryPoint

## SYNOPSIS
Gets available recovery points for a replication protected item.

## SYNTAX

### ByObject (Default)
```
Get-AzureRmSiteRecoveryRecoveryPoint -ReplicationProtectedItem <ASRReplicationProtectedItem>
 [<CommonParameters>]
```

### ByObjectWithName
```
Get-AzureRmSiteRecoveryRecoveryPoint -Name <String> -ReplicationProtectedItem <ASRReplicationProtectedItem>
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmSiteRecoveryRecoveryPoint** cmdlet gets the list of available recovery points for a replication protected item.

## EXAMPLES

## PARAMETERS

### -Name
Specifies the name of the recovery point this cmdlet gets.

```yaml
Type: String
Parameter Sets: ByObjectWithName
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ReplicationProtectedItem
Specifies the Azure Site Recovery Replication Protected Item object.

```yaml
Type: ASRReplicationProtectedItem
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Collections.Generic.IEnumerable`1[[Microsoft.Azure.Commands.SiteRecovery.ASRRecoveryPoint, Microsoft.Azure.Commands.SiteRecovery, Version=2.0.1.0, Culture=neutral, PublicKeyToken=null]]

## NOTES

## RELATED LINKS

[Edit-AzureRmSiteRecoveryRecoveryPlan](xref:ResourceManager/AzureRM.SiteRecovery/v3.3.0/Edit-AzureRmSiteRecoveryRecoveryPlan.md)

[Get-AzureRmSiteRecoveryRecoveryPlan](xref:ResourceManager/AzureRM.SiteRecovery/v3.3.0/Get-AzureRmSiteRecoveryRecoveryPlan.md)

[New-AzureRmSiteRecoveryRecoveryPlan](xref:ResourceManager/AzureRM.SiteRecovery/v3.3.0/New-AzureRmSiteRecoveryRecoveryPlan.md)

[Remove-AzureRmSiteRecoveryRecoveryPlan](xref:ResourceManager/AzureRM.SiteRecovery/v3.3.0/Remove-AzureRmSiteRecoveryRecoveryPlan.md)

[Update-AzureRmSiteRecoveryRecoveryPlan](xref:ResourceManager/AzureRM.SiteRecovery/v3.3.0/Update-AzureRmSiteRecoveryRecoveryPlan.md)
