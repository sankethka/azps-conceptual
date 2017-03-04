---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
ms.assetid: 1B39809C-90DA-4ECB-B949-D4A9A54ED982
online version: 
schema: 2.0.0
updated_at: 1/30/2017 10:29 PM
ms.date: 1/30/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.4.0/Get-AzureRmNetworkInterfaceIpConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.4.0/Get-AzureRmNetworkInterfaceIpConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/d1f61977ad0abb098ff95206c0a1c3a35990b59b/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.4.0/Get-AzureRmNetworkInterfaceIpConfig.md
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

# Get-AzureRmNetworkInterfaceIpConfig

## SYNOPSIS
Gets a network interface IP configuration for a network interface.

## SYNTAX

```
Get-AzureRmNetworkInterfaceIpConfig [-Name <String>] -NetworkInterface <PSNetworkInterface>
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmNetworkInterfaceIPConfig** cmdlet gets a network interface IP configuration from an Azure network interface.

## EXAMPLES

### 1: Get an IP configuration of a network interface
```
$nic1 = Get-AzureRmNetworkInterface -Name mynic -ResourceGroupName $myrg

Get-AzureRmNetworkInterfaceIpConfig -Name ipconfig1 -NetworkInterface $nic1
```
The first command gets an existing network interface called mynic and stores it in the
    variable $nic1. The second command gets the IP configuration called ipconfig1 of this
    network interface.

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

### -Name
Specifies the name of the network IP configuration that this cmdlet gets.

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

### -NetworkInterface
Specifies a **NetworkInterface** object that contains the network IP configuration that this cmdlet gets.

```yaml
Type: PSNetworkInterface
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

## NOTES
* Keywords: azure, azurerm, arm, resource, management, manager, network, networking

## RELATED LINKS

[Add-AzureRmNetworkInterfaceIpConfig](xref:ResourceManager/AzureRM.Network/v3.4.0/Add-AzureRmNetworkInterfaceIpConfig.md)

[New-AzureRmNetworkInterfaceIpConfig](xref:ResourceManager/AzureRM.Network/v3.4.0/New-AzureRmNetworkInterfaceIpConfig.md)

[Remove-AzureRmNetworkInterfaceIpConfig](xref:ResourceManager/AzureRM.Network/v3.4.0/Remove-AzureRmNetworkInterfaceIpConfig.md)

[Set-AzureRmNetworkInterfaceIpConfig](xref:ResourceManager/AzureRM.Network/v3.4.0/Set-AzureRmNetworkInterfaceIpConfig.md)


