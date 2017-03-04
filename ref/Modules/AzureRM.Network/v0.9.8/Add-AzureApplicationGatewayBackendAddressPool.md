---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 23641B69-F0AA-4D50-9FBC-04C5F215520C
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Add-AzureApplicationGatewayBackendAddressPool.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Add-AzureApplicationGatewayBackendAddressPool.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Add-AzureApplicationGatewayBackendAddressPool.md
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

# Add-AzureApplicationGatewayBackendAddressPool

## SYNOPSIS
Adds a back-end address pool to an application gateway.

## SYNTAX

### SetByResourceId
```
Add-AzureApplicationGatewayBackendAddressPool -ApplicationGateway <PSApplicationGateway> -Name <String>
 [-BackendIPConfigurationIds <System.Collections.Generic.List`1[System.String]>] [-Profile <AzureProfile>]
 [<CommonParameters>]
```

### SetByIP
```
Add-AzureApplicationGatewayBackendAddressPool -ApplicationGateway <PSApplicationGateway> -Name <String>
 [-BackendIPAddresses <System.Collections.Generic.List`1[System.String]>] [-Profile <AzureProfile>]
 [<CommonParameters>]
```

### SetByFqdn
```
Add-AzureApplicationGatewayBackendAddressPool -ApplicationGateway <PSApplicationGateway> -Name <String>
 [-BackendFqdns <System.Collections.Generic.List`1[System.String]>] [-Profile <AzureProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Add-AzureApplicationGatewayBackendAddressPool** cmdlet adds a back-end address pool to an application gateway.
A back-end address can be specified using an IP address, a fully-qualified domain name (FQDN) or IP configuration IDs.

## EXAMPLES

### Example 1: Adding a back-end address pool by using a back-end server FQDN
```
PS C:\> $AppGw = Get-AzureApplicationGateway -Name "ApplicationGateway01" -ResourceGroupName "ResourceGroup01"
PS C:\> $AppGw = Add-AzureApplicationGatewayBackendAddressPool -ApplicationGateway $AppGw 
-Name "Pool02" -BackendFqdns "contoso1.com", " contoso1.com"
```

The first command gets the application gateway named ApplicationGateway01 in the resource group named ResourceGroup01, and stores it in the $AppGw variable.

The second command adds the back-end address pool of the application gateway stored in $AppGw by using FQDNs.

### Example 2: Adding a back-end address pool by using backend server IP addresses
```
PS C:\>$AppGw = Get-AzureApplicationGateway -Name "ApplicationGateway01" -ResourceGroupName "ResourceGroup01"
PS C:\> $AppGw = Add -AzureApplicationGatewayBackendAddressPool -ApplicationGateway $ AppGw 
-Name "Pool02" -BackendIPAddresses "10.10.10.10", "10.10.10.11"
```

The first command gets the application gateway named ApplicationGateway01 in the resource group named ResourceGroup01, and stores it in the $AppGw variable.

The second command adds the back-end address pool of the application gateway stored in $AppGw by using IP addresses.

### Example 3: Setting a back-end address pool by using the ID of the backend server's IP address
```
PS C:\>$Nic01 = Get-AzureNetworkInterface -Name "Nic01" -ResourceGroupName "ResourceGroup01"
PS C:\> $Nic02 = Get-AzureNetworkInterface -Name "Nic02" -ResourceGroupName "ResourceGroup01"
PS C:\> $AppGw = Get-AzureApplicationGateway -Name "ApplicationGateway01" -ResourceGroupName "ResourceGroup01"
PS C:\> $AppGw = Add-AzureApplicationGatewayBackendAddressPool -ApplicationGateway $ AppGw 
-Name "Pool02" -BackendIPConfigurationIds $nic01.Properties.IpConfigurations[0].Id, $nic02.Properties.IpConfiguration[0].Id
```

The first command gets a network interface object named Nic01 that belongs to the resource group named ResourceGroup01, and stores it in the $Nic01 variable.

The second command gets a network interface object named Nic02 that belongs to the resource group named ResourceGroup02, and stores it in the $Nic02 variable.

The third command gets the application gateway named ApplicationGateway01 in the resource group named ResourceGroup01, and stores it in the $AppGw variable.

The forth command uses the back-end IP configuration IDs from $Nic01 and $Nic02 to add the back-end address pool of the application gateway stored in $AppGw.

## PARAMETERS

### -ApplicationGateway
Specifies the application gateway to which this cmdlet adds a back-end address pool.

```yaml
Type: PSApplicationGateway
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -BackendFqdns
Specifies a list of backend FQDNs which this cmdlet adds as a back-end server pool.

```yaml
Type: System.Collections.Generic.List`1[System.String]
Parameter Sets: SetByFqdn
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BackendIPAddresses
Specifies a list of back-end IP addresses which this cmdlet adds as a back-end server pool.

```yaml
Type: System.Collections.Generic.List`1[System.String]
Parameter Sets: SetByIP
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BackendIPConfigurationIds
Specifies a list of back-end server IP configuration IDs that this cmdlet adds as a back-end server pool.

```yaml
Type: System.Collections.Generic.List`1[System.String]
Parameter Sets: SetByResourceId
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the name of the back-end server pool that this cmdlet adds.

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

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

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

###  
System.String

## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSApplicationGateway

## NOTES

## RELATED LINKS

[Get-AzureApplicationGatewayBackendAddressPool](xref:ResourceManager/AzureRM.Network/v0.9.8/Get-AzureApplicationGatewayBackendAddressPool.md)

[New-AzureApplicationGatewayBackendAddressPool](xref:ResourceManager/AzureRM.Network/v0.9.8/New-AzureApplicationGatewayBackendAddressPool.md)

[Remove-AzureApplicationGatewayBackendAddressPool](xref:ResourceManager/AzureRM.Network/v0.9.8/Remove-AzureApplicationGatewayBackendAddressPool.md)

[Set-AzureApplicationGatewayBackendAddressPool](xref:ResourceManager/AzureRM.Network/v0.9.8/Set-AzureApplicationGatewayBackendAddressPool.md)


