---
external help file: Microsoft.Azure.Commands.RecoveryServicesRdfe.dll-Help.xml
ms.assetid: BB36A434-6BE3-46BF-B10A-FCD6C766CB84
online version: 
schema: 2.0.0
updated_at: 12/19/2016 10:08 PM
ms.date: 12/19/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecoveryServices/v3.1.0/Remove-AzureSiteRecoveryNetworkMapping.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecoveryServices/v3.1.0/Remove-AzureSiteRecoveryNetworkMapping.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/04695beed9bb4c0eefd59fe6dd1cdccc28b6a259/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecoveryServices/v3.1.0/Remove-AzureSiteRecoveryNetworkMapping.md
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

# Remove-AzureSiteRecoveryNetworkMapping

## SYNOPSIS
Removes a network mapping from a Site Recovery vault.

## SYNTAX

```
Remove-AzureSiteRecoveryNetworkMapping -NetworkMapping <ASRNetworkMapping> [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureSiteRecoveryNetworkMapping** cmdlet removes a network mapping from the current Azure Site Recovery vault.

## EXAMPLES

### Example 1: Remove the mapping between a network and a recovery network
```
PS C:\> $Servers = Get-AzureSiteRecoveryServer
PS C:\> $NetworkMapping = Get-AzureSiteRecoveryNetworkMapping -PrimaryServer $Servers[0] -RecoveryServer $Servers[0]
PS C:\> Remove-AzureSiteRecoveryNetworkMapping -NetworkMapping $NetworkMapping
```

The first command cmdlet gets servers for the current Azure Site Recovery vault by using the **Get-AzureSiteRecoveryServer** cmdlet.
The command stores the Site Recovery servers in the $Servers array variable.

The second command gets the mapping between the primary network and the recovery network, and then stores it in the $NetworkMapping variable.
The command specifies the primary server for the network mapping as the first element of $Servers.
The command specifies the server for the recovery network as the second element of $Servers.

The final command removes the network mapping in $NetworkMapping.

### Example 2: Remove the mapping between a network and an Azure virtual machine network
```
PS C:\> $Servers = Get-AzureSiteRecoveryServer
PS C:\> $NetworkMapping = Get-AzureSiteRecoveryNetworkMapping -PrimaryServer $Servers[0] -Azure
PS C:\> Remove-AzureSiteRecoveryNetworkMapping -NetworkMapping $NetworkMapping
```

The first command cmdlet gets servers for the current Site Recovery vault.
The command stores the Site Recovery servers in the $Servers array variable.

The second command gets a mapping between the primary network and an Azure virtual machine network, and then stores it in the $NetworkMapping variable.
The command specifies the primary server for the network as the first element of $Servers.
The command specifies the *Azure* parameter.
Therefore, the command gets the mapping to an Azure virtual machine network.

The final command removes the network mapping in $NetworkMapping.

## PARAMETERS

### -NetworkMapping
Specifies the network mapping to remove.

```yaml
Type: ASRNetworkMapping
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
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

[Get-AzureSiteRecoveryNetworkMapping](xref:ServiceManagement/Azure.SiteRecoveryServices/v3.1.0/Get-AzureSiteRecoveryNetworkMapping.md)

[New-AzureSiteRecoveryNetworkMapping](xref:ServiceManagement/Azure.SiteRecoveryServices/v3.1.0/New-AzureSiteRecoveryNetworkMapping.md)

[Get-AzureSiteRecoveryServer](xref:ServiceManagement/Azure.SiteRecoveryServices/v3.1.0/Get-AzureSiteRecoveryServer.md)


