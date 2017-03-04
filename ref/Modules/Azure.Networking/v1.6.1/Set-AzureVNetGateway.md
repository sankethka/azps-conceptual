---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 73338304-78B0-4E9D-93D4-27AD533ABFE9
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v1.6.1/Set-AzureVNetGateway.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v1.6.1/Set-AzureVNetGateway.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v1.6.1/Set-AzureVNetGateway.md
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

# Set-AzureVNetGateway

## SYNOPSIS
Enables or disables a VPN gateway for an Azure virtual network.

## SYNTAX

### Connect (Default)
```
Set-AzureVNetGateway [-Connect] [-VNetName] <String> [-LocalNetworkSiteName] <String>
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### Disconnect
```
Set-AzureVNetGateway [-Disconnect] [-VNetName] <String> [-LocalNetworkSiteName] <String>
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureVNetGateway** cmdlet enables or disables a virtual private network (VPN) gateway for an Azure virtual network.
A virtual network gateway is a VPN endpoint for connecting to a virtual network.
Specify the *Connect* or *Disconnect* parameter to enable or disable the VPN connection between an on-premises local network site and a virtual network.

## EXAMPLES

### Example 1: Enable a virtual network gateway for a virtual network
```
PS C:\>Set-AzureVNetGateway -Connect -VnetName "ContosoProdNet" -LocalNetworkSiteName "ContosoBranchOffice"
```

This command enables the virtual network gateway between the Azure virtual network named ContosoProdNet and the VPN device for the local network site named ContosoBranchOffice.

### Example 2: Disable a virtual network gateway for a virtual network
```
PS C:\>Set-AzureVNetGateway -Disconnect -VnetName "ContosoProdNet" -LocalNetworkSiteName "ContosoBranchOffice"
```

This command disables the virtual network gateway between the Azure virtual network named ContosoProdNet and the VPN device for the local network site named ContosoBranchOffice.

## PARAMETERS

### -Connect
Indicates that this cmdlet enables the VPN connection between a virtual network and a local network site.

```yaml
Type: SwitchParameter
Parameter Sets: Connect
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VNetName
Specifies the virtual network for which this cmdlet enables or disables the VPN connection.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LocalNetworkSiteName
Specifies the name of the on-premises local network site for which this cmdlet enables or disables the VPN connection.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Disconnect
Indicates that this cmdlet disables the VPN connection between a virtual network and a local network site.

```yaml
Type: SwitchParameter
Parameter Sets: Disconnect
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureVNetGateway](xref:ServiceManagement/Azure.Networking/v1.6.1/Get-AzureVNetGateway.md)

[New-AzureVNetGateway](xref:ServiceManagement/Azure.Networking/v1.6.1/New-AzureVNetGateway.md)

[Remove-AzureVNetGateway](xref:ServiceManagement/Azure.Networking/v1.6.1/Remove-AzureVNetGateway.md)

[Reset-AzureVNetGateway](xref:ServiceManagement/Azure.Networking/v1.6.1/Reset-AzureVNetGateway.md)

[Resize-AzureVNetGateway](xref:ServiceManagement/Azure.Networking/v1.6.1/Resize-AzureVNetGateway.md)


