---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 0BF0B134-F398-401E-942A-EA5CAC4938A1
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Set-AzureNetworkSecurityRuleConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Set-AzureNetworkSecurityRuleConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Set-AzureNetworkSecurityRuleConfig.md
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

# Set-AzureNetworkSecurityRuleConfig

## SYNOPSIS
Sets the goal state for a network security rule configuration.

## SYNTAX

```
Set-AzureNetworkSecurityRuleConfig -Name <String> -NetworkSecurityGroup <PSNetworkSecurityGroup>
 [-Description <String>] [-Protocol <String>] [-SourcePortRange <String>] [-DestinationPortRange <String>]
 [-SourceAddressPrefix <String>] [-DestinationAddressPrefix <String>] [-Access <String>] [-Priority <Int32>]
 [-Direction <String>] [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureNetworkSecurityRuleConfig** cmdlet sets the goal state for an Azure network security rule configuration.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -Access
Specifies whether network traffic is allowed or denied.
The acceptable values for this parameter are:Allow and Deny.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 
Accepted values: Allow, Deny

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Description
Specifies a description for a rule configuration.
The maximum size is 140 characters.

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

### -DestinationAddressPrefix
Specifies a destination address prefix.
The acceptable values for this parameter are:

- A Classless Interdomain Routing (CIDR) address 
- A destination IP address range 
- A wildcard character (*) to match any IP address

You can use tags such as VirtualNetwork, AzureLoadBalancer, and Internet.

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

### -DestinationPortRange
Specifies a destination port or range.
The acceptable values for this parameter are:

- An integer 
- A range of integers between 0 and 65535
- A wildcard character (*) to match any port

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

### -Direction
Specifies whether a rule is evaluated for incoming or outgoing traffic.
The acceptable values for this parameter are:Inbound and Outbound.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 
Accepted values: Inbound, Outbound

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the name of the network security rule configuration to set.

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

### -NetworkSecurityGroup
Specifies the **NetworkSecurityGroup** object that contains the network security rule configuration to set.

```yaml
Type: PSNetworkSecurityGroup
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Priority
Specifies the priority of a rule configuration.
The acceptable values for this parameter are:An integer between 100 and 4096.

The priority number must be unique for each rule in the collection.
The lower the priority number, the higher the priority of the rule.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Profile
Specifies an Azure proile.

```yaml
Type: AzureProfile
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Protocol
Specifies the network protocol that a rule configuration applies to.
The acceptable values for this parameter are:

--Tcp
- Udp
-A wildcard character (*) to match both

```yaml
Type: String
Parameter Sets: (All)
Aliases: 
Accepted values: Tcp, Udp, *

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceAddressPrefix
Specifies a source address prefix.
The acceptable values for this parameter are:

- A CIDR
- A source IP range
- A wildcard character (*) to match any IP address

You can also use tags such as VirtualNetwork, AzureLoadBalancer and Internet.

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

### -SourcePortRange
Specifies the source port or range.
The acceptable values for this parameter are:

- An integer
- A range of integers between 0 and 65535
- A wildcard character (*) to match any port

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AzureNetworkSecurityRuleConfig](xref:ResourceManager/AzureRM.Network/v0.9.8/Add-AzureNetworkSecurityRuleConfig.md)

[Get-AzureNetworkSecurityRuleConfig](xref:ResourceManager/AzureRM.Network/v0.9.8/Get-AzureNetworkSecurityRuleConfig.md)

[New-AzureNetworkSecurityRuleConfig](xref:ResourceManager/AzureRM.Network/v0.9.8/New-AzureNetworkSecurityRuleConfig.md)

[Remove-AzureNetworkSecurityRuleConfig](xref:ResourceManager/AzureRM.Network/v0.9.8/Remove-AzureNetworkSecurityRuleConfig.md)


