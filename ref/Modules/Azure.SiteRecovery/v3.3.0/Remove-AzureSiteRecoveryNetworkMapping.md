---
external help file: Microsoft.Azure.Commands.RecoveryServicesRdfe.dll-Help.xml
ms.assetid: F0C86D6B-0136-4FE0-8005-E560CBC70098
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v3.3.0/Remove-AzureSiteRecoveryNetworkMapping.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v3.3.0/Remove-AzureSiteRecoveryNetworkMapping.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ServiceManagement/Azure.SiteRecovery/v3.3.0/Remove-AzureSiteRecoveryNetworkMapping.md
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
Removes a network mapping for the current vault.

## SYNTAX

```
Remove-AzureSiteRecoveryNetworkMapping -NetworkMapping <ASRNetworkMapping> [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureSiteRecoveryNetworkMapping** cmdlet removes a network mapping for the current Azure Site Recovery vault.

## EXAMPLES

### Example 1: Remove the mapping between a network and a recovery network
```
PS C:\> $Servers = Get-AzureSiteRecoveryServer
PS C:\> $NetworkMapping = Get-AzureSiteRecoveryNetworkMapping -PrimaryServer $Servers[0] -RecoveryServer $Servers[0]
PS C:\> Remove-AzureSiteRecoveryNetworkMapping -NetworkMapping $NetworkMapping
```

The first command cmdlet gets servers for the current Azure Site Recovery vault by using the **Get-AzureSiteRecoveryServer** cmdlet.
The command stores the Microsoft Azure Site Recovery servers in the **$Servers** array variable.

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

The first command cmdlet gets servers for the current Azure Site Recovery vault.
The command stores the Microsoft Azure Site Recovery servers in the **$Servers** array variable.

The second command gets a mapping between the primary network and an Azure virtual machine network, and then stores it in the $NetworkMapping variable.
The command specifies the primary server for the network as the first element of $Servers.
The command specifies the *Azure* parameter, and, therefore, the command gets the mapping to an Azure virtual machine network.

The final command removes the network mapping in $NetworkMapping.

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

### -NetworkMapping
Specifies a network mapping.
To obtain an **ASRNetworkMapping**, use the **Get-AzureSiteRecoveryNetwork** cmdlet.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureSiteRecoveryNetworkMapping](xref:ServiceManagement/Azure.SiteRecovery/v3.3.0/Get-AzureSiteRecoveryNetworkMapping.md)

[New-AzureSiteRecoveryNetworkMapping](xref:ServiceManagement/Azure.SiteRecovery/v3.3.0/New-AzureSiteRecoveryNetworkMapping.md)

[Get-AzureSiteRecoveryServer](xref:ServiceManagement/Azure.SiteRecovery/v3.3.0/Get-AzureSiteRecoveryServer.md)


