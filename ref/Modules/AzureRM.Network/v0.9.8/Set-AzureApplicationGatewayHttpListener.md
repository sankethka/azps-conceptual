---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 452B323D-693E-460D-8971-385706911DFB
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Set-AzureApplicationGatewayHttpListener.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Set-AzureApplicationGatewayHttpListener.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v0.9.8/Set-AzureApplicationGatewayHttpListener.md
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

# Set-AzureApplicationGatewayHttpListener

## SYNOPSIS
Modifies an HTTP listener for an application gateway.

## SYNTAX

### SetByResourceId
```
Set-AzureApplicationGatewayHttpListener -ApplicationGateway <PSApplicationGateway> -Name <String>
 [-FrontendIPConfigurationId <String>] [-FrontendPortId <String>] [-SslCertificateId <String>]
 -Protocol <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

### SetByResource
```
Set-AzureApplicationGatewayHttpListener -ApplicationGateway <PSApplicationGateway> -Name <String>
 [-FrontendIPConfiguration <PSApplicationGatewayFrontendIPConfiguration>]
 [-FrontendPort <PSApplicationGatewayFrontendPort>] [-SslCertificate <PSApplicationGatewaySslCertificate>]
 -Protocol <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureApplicationGatewayHttpListener** cmdlet modifies an HTTP listener for an Azure application gateway.

## EXAMPLES

### Example 1: Set an HTTP listener
```
PS C:\>$AppGw = Get-AzureApplicationGateway -Name "ApplicationGateway01" -ResourceGroupName "ResourceGroup01"
PS C:\> $AppGw = Set-AzureApplicationGatewayHttpListener -ApplicationGateway $AppGw -Name "Listener01" -Protocol Http -FrontendIpConfiguration $FIP01 -FrontendPort 80
```

The first command gets the application gateway named ApplicationGateway01 that belongs to the resource group named ResourceGroup01 and stores it in the $AppGw variable.

The second command sets the HTTP listener for the gateway to use the front-end configuration stored in $FIP01 with the HTTP protocol on port 80.

## PARAMETERS

### -ApplicationGateway
Specifies the application gateway with which this cmdlet associates the HTTP listener.

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

### -FrontendIPConfiguration
Specifies the front-end IP address of the application gateway.

```yaml
Type: PSApplicationGatewayFrontendIPConfiguration
Parameter Sets: SetByResource
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FrontendIPConfigurationId
Specifies the ID of the front-end IP address of the application gateway.

```yaml
Type: String
Parameter Sets: SetByResourceId
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FrontendPort
Specifies the application gateway front-end port.

```yaml
Type: PSApplicationGatewayFrontendPort
Parameter Sets: SetByResource
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -FrontendPortId
Specifies the application gateway front-end port ID.

```yaml
Type: String
Parameter Sets: SetByResourceId
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the name of the HTTP listener.

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

### -Protocol
Specifies the protocol that the HTTP listener uses.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 
Accepted values: Http, Https

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SslCertificate
Specifies the SSL certificate of the HTTP listener.

```yaml
Type: PSApplicationGatewaySslCertificate
Parameter Sets: SetByResource
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SslCertificateId
Specifies the SSL certificate ID of the HTTP listener.

```yaml
Type: String
Parameter Sets: SetByResourceId
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

### System.String

### Microsoft.Azure.Commands.Network.Models.PSApplicationGatewayFrontendIPConfiguration

### Microsoft.Azure.Commands.Network.Models.PSApplicationGatewayFrontendPort

### Microsoft.Azure.Commands.Network.Models.PSApplicationGatewaySslCertificate

## OUTPUTS

### Microsoft.Azure.Commands.Network.Models.PSApplicationGateway

## NOTES

## RELATED LINKS

[Add-AzureApplicationGatewayHttpListener](xref:ResourceManager/AzureRM.Network/v0.9.8/Add-AzureApplicationGatewayHttpListener.md)

[Get-AzureApplicationGatewayHttpListener](xref:ResourceManager/AzureRM.Network/v0.9.8/Get-AzureApplicationGatewayHttpListener.md)

[New-AzureApplicationGatewayHttpListener](xref:ResourceManager/AzureRM.Network/v0.9.8/New-AzureApplicationGatewayHttpListener.md)

[Remove-AzureApplicationGatewayHttpListener](xref:ResourceManager/AzureRM.Network/v0.9.8/Remove-AzureApplicationGatewayHttpListener.md)


