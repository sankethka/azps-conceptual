---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 59B98F00-8638-4F33-8EEE-C33E3C86FC70
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Set-AzureNetworkSecurityGroup.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Set-AzureNetworkSecurityGroup.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Set-AzureNetworkSecurityGroup.md
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

# Set-AzureNetworkSecurityGroup

## SYNOPSIS
Sets the goal state for a network security group.

## SYNTAX

```
Set-AzureNetworkSecurityGroup -NetworkSecurityGroup <PSNetworkSecurityGroup> [-Profile <AzureProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureNetworkSecurityGroup** cmdlet sets the goal state for an Azure network security group.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -NetworkSecurityGroup
A Network Security Group object representing the goal state to which the Network Security Group should be set.

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

### -Profile
Specifies an Azure profile.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureNetworkSecurityGroup](xref:ResourceManager/AzureRM.Network/v0.9.8/Get-AzureNetworkSecurityGroup.md)

[New-AzureNetworkSecurityGroup](xref:ResourceManager/AzureRM.Network/v0.9.8/New-AzureNetworkSecurityGroup.md)

[Remove-AzureNetworkSecurityGroup](xref:ResourceManager/AzureRM.Network/v0.9.8/Remove-AzureNetworkSecurityGroup.md)


