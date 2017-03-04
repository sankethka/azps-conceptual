---
external help file: Microsoft.Azure.Commands.SiteRecovery.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: B3316C58-94F7-4EED-BF6C-A61B28C21623
updated_at: 1/6/2017 11:54 PM
ms.date: 1/6/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.1.0/Start-AzureRmSiteRecoveryPlannedFailoverJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.1.0/Start-AzureRmSiteRecoveryPlannedFailoverJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/d4abcf16ad04a20708d1ba686982ef3c842fa593/azureps-cmdlets-docs/ResourceManager/AzureRM.SiteRecovery/v3.1.0/Start-AzureRmSiteRecoveryPlannedFailoverJob.md
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

# Start-AzureRmSiteRecoveryPlannedFailoverJob

## SYNOPSIS
Starts a Site Recovery planned failover operation.

## SYNTAX

### ByPEObject (Default)
```
Start-AzureRmSiteRecoveryPlannedFailoverJob -ProtectionEntity <ASRProtectionEntity> -Direction <String>
 [-Optimize <String>] [-CreateVmIfNotFound <String>] [-Server <ASRServer>]
 [-DataEncryptionPrimaryCertFile <String>] [-DataEncryptionSecondaryCertFile <String>] [<CommonParameters>]
```

### ByRPObject
```
Start-AzureRmSiteRecoveryPlannedFailoverJob -RecoveryPlan <ASRRecoveryPlan> -Direction <String>
 [-Optimize <String>] [-CreateVmIfNotFound <String>] [-DataEncryptionPrimaryCertFile <String>]
 [-DataEncryptionSecondaryCertFile <String>] [<CommonParameters>]
```

### ByRPIObject
```
Start-AzureRmSiteRecoveryPlannedFailoverJob -ReplicationProtectedItem <ASRReplicationProtectedItem>
 -Direction <String> [-Optimize <String>] [-CreateVmIfNotFound <String>]
 [-ServicesProvider <ASRRecoveryServicesProvider>] [-DataEncryptionPrimaryCertFile <String>]
 [-DataEncryptionSecondaryCertFile <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Start-AzureRmSiteRecoveryPlannedFailoverJob** cmdlet starts a planned failover for an Azure Site Recovery protection entity or recovery plan.
You can check whether the job succeeds by using the **Get-AzureRmSiteRecoveryJob** cmdlet.

## EXAMPLES


## PARAMETERS

### -ProtectionEntity
Specifies the Site Recovery protection entity object.

```yaml
Type: ASRProtectionEntity
Parameter Sets: ByPEObject
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Direction
Specifies the direction of the failover.
The acceptable values for this parameter are:

- PrimaryToRecovery
- RecoveryToPrimary

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

### -Optimize
Specifies what to optimize for.
This parameter applies when failover is done from an Azure site to an on-premise site which requires a substantial data synchronization.
Valid values are:

- ForDowntime
- ForSynchronization

When **ForDowntime** is specified, this indicates that data is synchronized before failover to minimize downtime.
Synchronization is performed without shutting down the virtual machine.
After synchronization is complete, the job is suspended.
Resume the job to do an additional synchronization operation that shuts down the virtual machine.

When **ForSynchronization** is specified, this indicates that data is synchronized during failover only so data synchronization is minimized.
With this setting enabled, the virtual machine is shut down immediately.
Synchronization starts after shutdown to complete the failover operation.

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

### -CreateVmIfNotFound
The acceptable values for this parameter are:

- Yes
- No

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

### -Server

```yaml
Type: ASRServer
Parameter Sets: ByPEObject
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServicesProvider

```yaml
Type: ASRRecoveryServicesProvider
Parameter Sets: ByRPIObject
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DataEncryptionPrimaryCertFile
Specifies the primary certificate file.

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

### -DataEncryptionSecondaryCertFile
Specifies the secondary certificate file.

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

### -RecoveryPlan
Specifies a recovery plan object.

```yaml
Type: ASRRecoveryPlan
Parameter Sets: ByRPObject
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ReplicationProtectedItem

```yaml
Type: ASRReplicationProtectedItem
Parameter Sets: ByRPIObject
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

## NOTES

## RELATED LINKS
