---
external help file: Microsoft.Azure.Commands.RecoveryServicesRdfe.dll-Help.xml
ms.assetid: ABBE1803-D143-4296-9E2B-9F799CE3D95F
online version: 
schema: 2.0.0
updated_at: 12/19/2016 11:17 PM
ms.date: 12/19/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v3.1.0/New-AzureSiteRecoveryNetworkMapping.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v3.1.0/New-AzureSiteRecoveryNetworkMapping.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/bd8ec477a0b6485d65a52916888b2406cac81232/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v3.1.0/New-AzureSiteRecoveryNetworkMapping.md
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

# New-AzureSiteRecoveryNetworkMapping

## SYNOPSIS
Creates a mapping between a network and an Azure Site Recovery network.

## SYNTAX

### EnterpriseToEnterprise
```
New-AzureSiteRecoveryNetworkMapping -PrimaryNetwork <ASRNetwork> -RecoveryNetwork <ASRNetwork>
 [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

### EnterpriseToAzure
```
New-AzureSiteRecoveryNetworkMapping -PrimaryNetwork <ASRNetwork> -AzureSubscriptionId <String>
 -AzureVMNetworkId <String> [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureSiteRecoveryNetworkMapping** cmdlet creates a mapping between a network and an Azure Site Recovery network.
You can specify either a network or an Azure virtual machine network for the recovery network.
This cmdlet returns an Azure Site Recovery job.

## EXAMPLES

### Example 1: Create a mapping between a network and a recovery network
```
PS C:\> $Servers = Get-AzureSiteRecoveryServer
PS C:\> $Networks = Get-AzureSiteRecoveryNetwork -Server $Servers[0]
PS C:\> New-AzureSiteRecoveryNetworkMapping -PrimaryNetwork $Networks[0] -RecoveryNetwork $Networks[1]
```

The first command cmdlet gets servers for the current Azure Site Recovery vault by using the **Get-AzureSiteRecoveryServer** cmdlet.
The command stores the Microsoft Azure Site Recovery servers in the **$Servers** array variable.

The second command gets the site recovery network for the first server in the $Servers array by using the **Get-AzureSiteRecoveryNetwork** cmdlet.
The command stores the networks in the $Networks variable.

The final command creates a mapping between the primary network and the recovery network.
The command specifies the primary network as the first element of $Networks.
The command specifies the recovery network as the second element of $Networks.

### Example 2: Create a mapping between a network and an Azure virtual machine network
```
PS C:\> $Servers = Get-AzureSiteRecoveryServer
PS C:\> $Networks = Get-AzureSiteRecoveryNetwork -Server $Servers[0]
PS C:\> $Subscriptions = Get-AzureSubscription
PS C:\> $AzureVmNetworks = Get-AzureVNetSite
PS C:\> New-AzureSiteRecoveryNetworkMapping -PrimaryNetwork $Networks[0] -AzureSubscriptionId $Subscriptions[0].SubscriptionId -AzureVMNetworkId $AzureVmNetworks[0].Id
```

The first command cmdlet gets servers for the current Azure Site Recovery vault.
The command stores the Microsoft Azure Site Recovery servers in the $Servers array variable.

The second command gets the site recovery network for the first server in the $Servers array.
The command stores the networks in the $Networks variable.

The third command gets your Azure subscriptions by using the **Get-AzureSubscription** cmdlet, and then stores that value in the $Subscriptions variable.

The fourth command gets Azure virtual networks by using the **Get-AzureVNetSite** cmdlet, and then that value in the $AzureVmNetworks variable.

The final command creates a mapping between the primary network and the Azure virtual machine network.
The command specifies the primary network as the first element of $Networks.
The command specifies a virtual machine network as the first element of $AzureVmNetworks by using its ID.
The command includes your Azure subscription ID.

## PARAMETERS

### -PrimaryNetwork
Specifies the primary network to map to the recovery network.
To obtain an **ASRNetwork** object, use the **Get-AzureSiteRecoveryNetwork** cmdlet.

```yaml
Type: ASRNetwork
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RecoveryNetwork
Specifies the recovery network.
To obtain an **ASRNetwork** object, use **Get-AzureSiteRecoveryNetwork**.
This cmdlet maps the primary network to the network that this parameter specifies.

```yaml
Type: ASRNetwork
Parameter Sets: EnterpriseToEnterprise
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Profile
Specifies an Azure profile.

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

### -AzureSubscriptionId
Specifies the ID of your Azure subscription.

```yaml
Type: String
Parameter Sets: EnterpriseToAzure
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AzureVMNetworkId
Specifies the ID of your Azure virtual machine network.
This cmdlet maps the primary network to the network that this parameter specifies.

```yaml
Type: String
Parameter Sets: EnterpriseToAzure
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

[Get-AzureSiteRecoveryNetworkMapping](xref:ServiceManagement/Azure.SiteRecovery/v3.1.0/Get-AzureSiteRecoveryNetworkMapping.md)

[Remove-AzureSiteRecoveryNetworkMapping](xref:ServiceManagement/Azure.SiteRecovery/v3.1.0/Remove-AzureSiteRecoveryNetworkMapping.md)

[Get-AzureSiteRecoveryServer](xref:ServiceManagement/Azure.SiteRecovery/v3.1.0/Get-AzureSiteRecoveryServer.md)

[Get-AzureSiteRecoveryNetwork](xref:ServiceManagement/Azure.SiteRecovery/v3.1.0/Get-AzureSiteRecoveryNetwork.md)


