---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
ms.assetid: EC798838-1850-4E88-B17F-D2F00F2D4EE9
online version: 
schema: 2.0.0
updated_at: 2/8/2017 5:57 PM
ms.date: 2/8/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/Set-AzureRmPublicIpAddress.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/Set-AzureRmPublicIpAddress.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/2e14c401885f4d09875d76bbfaed9ed2f4a506a8/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.3.0/Set-AzureRmPublicIpAddress.md
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

# Set-AzureRmPublicIpAddress

## SYNOPSIS
Sets the goal state for a public IP address.

## SYNTAX

```
Set-AzureRmPublicIpAddress -PublicIpAddress <PSPublicIpAddress> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmPublicIpAddress** cmdlet sets the goal state for a public IP address.

## EXAMPLES

### Example 1: Change allocation method of a public IP address

```
PS C:\> $PublicIp = Get-AzureRmPublicIpAddress -Name $PublicIpName -ResourceGroupName "ResourceGroup03"
PS C:\> $PublicIp.PublicIpAllocationMethod = "Static"
PS C:\> Set-AzureRmPublicIpAddress -PublicIpAddress $PublicIp
```

 The first command gets the public IP address resource with name $PublicIPName in the resource group ResourceGroup03 by using the **Get-AzureRmPublicIpAddress** cmdlet.
 The command stores the result in the $PublicIp variable.
 
 The second command sets the allocation method property of $PublicIp to be Static.
 
 The third command updates the IP address resource to the new value of $PublicIp.
 Because that value is now static, a public IP address is allocated immediately.

### Example 2: Change DNS domain label of a public IP address
```

PS C:\> $PublicIp = Get-AzureRmPublicIpAddress -Name $PublicIpName -ResourceGroupName "ResourceGroup03"
PS C:\> $PublicIp.DnsSettings.DomainNameLabel = "newdnsprefix"
PS C:\> Set-AzureRmPublicIpAddress -PublicIpAddress $PublicIp
```

The first command gets the public IP address resource with name $PublicIPName in the resource group ResourceGroup03, and stores it in the $PublicIp variable.


The second command sets the DomainNameLabel property of $PublicIp to a different value.

The third command updates the IP address resource to the new value of $PublicIp.
This affects the fully qualified domain name. 

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

### -PublicIpAddress
Specifies a **PublicIpAddress** object that represents the goal state to which the public IP address should be set.

```yaml
Type: PSPublicIpAddress
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

## RELATED LINKS

[Get-AzureRmPublicIpAddress](xref:ResourceManager/AzureRM.Network/v3.3.0/Get-AzureRmPublicIpAddress.md)

[Get-AzureRmPublicIpAddress](xref:ResourceManager/AzureRM.Network/v3.3.0/Get-AzureRmPublicIpAddress.md)

[New-AzureRmPublicIpAddress](xref:ResourceManager/AzureRM.Network/v3.3.0/New-AzureRmPublicIpAddress.md)

[Remove-AzureRmPublicIpAddress](xref:ResourceManager/AzureRM.Network/v3.3.0/Remove-AzureRmPublicIpAddress.md)
