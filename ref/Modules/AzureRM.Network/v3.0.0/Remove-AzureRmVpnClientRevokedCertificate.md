---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: E98C6E0A-85B9-44E9-A3DF-412F1F4EF1C4
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Remove-AzureRmVpnClientRevokedCertificate.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Remove-AzureRmVpnClientRevokedCertificate.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.0.0/Remove-AzureRmVpnClientRevokedCertificate.md
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

# Remove-AzureRmVpnClientRevokedCertificate

## SYNOPSIS
Removes a VPN client-revocation certificate.

## SYNTAX

```
Remove-AzureRmVpnClientRevokedCertificate -VpnClientRevokedCertificateName <String>
 -VirtualNetworkGatewayName <String> -ResourceGroupName <String> -Thumbprint <String> [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureRmVpnClientRevokedCertificate** cmdlet removes a client-revocation certificate from a virtual network gateway.
Client-revocation certificates prevent client computers from using the specified certificate for authentication.
If you remove a client-revocation certificate client computers can then use the previously-banned certificate to make a virtual private network (VPN) connection.

## EXAMPLES

### Example 1: Remove a client-revocation certificate from a virtual network gateway
```
PS C:\>Remove-AzureRmVpnClientRevokedCertificate -VirtualNetworkGatewayName "ContosoVirtualNetwork" -ResourceGroupName"ContosoResourceGroup" -VpnClientRevokedCertificateName "ContosoRevokedClientCertificate"-Thumbprint "E3A38EBA60CAA1C162785A2E1C44A15AD450199C3"
```

This command removes a client-revocation certificate from a virtual network gateway named ContosoVirtualNetwork.
In order to remove a client-revocation certificate, you must specify both the certificate name and the certificate thumbprint.

## PARAMETERS

### -VpnClientRevokedCertificateName
Specifies the name of the VPN client certificate being removed.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ResourceName

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VirtualNetworkGatewayName
Specifies the name of the virtual network gateway that the certificate is assigned to.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group that the virtual network gateway is assigned to.

Resource groups categorize items to help simplify inventory management and general Azure administration.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Thumbprint
Specifies the unique identifier of the certificate being removed.

You can return thumbprint information for your certificates by using a Windows PowerShell command similar to this:

`Get-ChildItem -Path "Cert:\LocalMachine\Root"`

The preceding command returns information for all the Local Computer certificates found in the Root certificate store.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AzureRmVpnClientRevokedCertificate](xref:ResourceManager/AzureRM.Network/v3.0.0/Add-AzureRmVpnClientRevokedCertificate.md)

[Get-AzureRmVpnClientRevokedCertificate](xref:ResourceManager/AzureRM.Network/v3.0.0/Get-AzureRmVpnClientRevokedCertificate.md)

[New-AzureRmVpnClientRevokedCertificate](xref:ResourceManager/AzureRM.Network/v3.0.0/New-AzureRmVpnClientRevokedCertificate.md)


