---
external help file: Microsoft.Azure.Commands.SiteRecovery.dll-Help.xml
ms.assetid: F801A78E-6C11-4BD1-BEF4-01C4D6CD36D7
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.3.0/New-AzureRmSiteRecoveryReplicationProtectedItem.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.3.0/New-AzureRmSiteRecoveryReplicationProtectedItem.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.3.0/New-AzureRmSiteRecoveryReplicationProtectedItem.md
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

# New-AzureRmSiteRecoveryReplicationProtectedItem

## SYNOPSIS
Enables replication for a protectable item by creating a protected item

## SYNTAX

### DisableDR (Default)
```
New-AzureRmSiteRecoveryReplicationProtectedItem [-WaitForCompletion] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### EnterpriseToAzure
```
New-AzureRmSiteRecoveryReplicationProtectedItem -ProtectableItem <ASRProtectableItem> -Name <String>
 -ProtectionContainerMapping <ASRProtectionContainerMapping> -RecoveryAzureStorageAccountId <String>
 [-WaitForCompletion] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### EnterpriseToEnterprise
```
New-AzureRmSiteRecoveryReplicationProtectedItem -ProtectableItem <ASRProtectableItem> -Name <String>
 -ProtectionContainerMapping <ASRProtectionContainerMapping> [-WaitForCompletion] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### HyperVSiteToAzure
```
New-AzureRmSiteRecoveryReplicationProtectedItem -ProtectableItem <ASRProtectableItem> -Name <String>
 -ProtectionContainerMapping <ASRProtectionContainerMapping> -RecoveryAzureStorageAccountId <String>
 -OSDiskName <String> -OS <String> [-WaitForCompletion] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmSiteRecoveryReplicationProtectedItem** cmdlet creates a new Replication Protected item.
Use this cmdlet to enable replication for a protectable item.

## EXAMPLES

## PARAMETERS

### -Name
Specifies the name of the Azure Site Recovery Replication Protected Item.

```yaml
Type: String
Parameter Sets: EnterpriseToAzure, EnterpriseToEnterprise, HyperVSiteToAzure
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OS
Specifies the operating system family.
The acceptable values for this parameter are: Windows or Linux.

```yaml
Type: String
Parameter Sets: HyperVSiteToAzure
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OSDiskName
Specifies the name of the operating system disk.

```yaml
Type: String
Parameter Sets: HyperVSiteToAzure
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProtectableItem
Specifies the Azure Site Recovery Protectable Item.

```yaml
Type: ASRProtectableItem
Parameter Sets: EnterpriseToAzure, EnterpriseToEnterprise, HyperVSiteToAzure
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ProtectionContainerMapping
Specifies the Azure Site Recovery Protection Container mapping object to use for replication.

```yaml
Type: ASRProtectionContainerMapping
Parameter Sets: EnterpriseToAzure, EnterpriseToEnterprise, HyperVSiteToAzure
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RecoveryAzureStorageAccountId
Specifies the ID of the Azure storage account that this cmdlet replicates to.

```yaml
Type: String
Parameter Sets: EnterpriseToAzure, HyperVSiteToAzure
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WaitForCompletion
Indicates that the cmdlet waits for completion.

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

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.

The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.Commands.SiteRecovery.ASRJob

## NOTES

## RELATED LINKS

[Get-AzureRmSiteRecoveryReplicationProtectedItem](xref:ResourceManager/AzureRM.SiteRecovery/v3.3.0/Get-AzureRmSiteRecoveryReplicationProtectedItem.md)

[Remove-AzureRmSiteRecoveryReplicationProtectedItem](xref:ResourceManager/AzureRM.SiteRecovery/v3.3.0/Remove-AzureRmSiteRecoveryReplicationProtectedItem.md)

[Set-AzureRmSiteRecoveryReplicationProtectedItem](xref:ResourceManager/AzureRM.SiteRecovery/v3.3.0/Set-AzureRmSiteRecoveryReplicationProtectedItem.md)
