---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.Network.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: C940149A-1081-4216-A7B1-8931CC0D9B56
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v0.9.8/Add-AzureApplicationGatewaySslCertificate.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v0.9.8/Add-AzureApplicationGatewaySslCertificate.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ServiceManagement/Azure.Networking/v0.9.8/Add-AzureApplicationGatewaySslCertificate.md
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

# Add-AzureApplicationGatewaySslCertificate

## SYNOPSIS
Adds an SSL certificate to an application gateway.

## SYNTAX

```
Add-AzureApplicationGatewaySslCertificate [-Name] <String> [-CertificateName] <String> [-Password] <String>
 [-CertificateFile] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Add-AzureApplicationGatewaySslCertificate** cmdlet adds a Secure Sockets Layer (SSL) certificate to an application gateway.

## EXAMPLES

### Example 1: Add an SSL certificate
```
PS C:\>Add-AzureApplicationGatewaySslCertificate -Name "ApplicationGateway08" -CertificateName "SslCertificate13" -Password "password" -CertificateFile "c:\Certs\sslCertificate.pfx"
```

This command adds an SSL certificate named SslCertificate13 to the application gateway named ApplicationGateway08.
The command specifies the path of the certificate file and the password for the certificate.

## PARAMETERS

### -Name
Specifies the name of the application gateway to which this cmdlet adds an SSL certificate.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -CertificateName
Specifies the name of an SSL certificate.
This cmdlet adds the certificate that this parameter specifies.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Password
Specifies the password of the SSL certificate that this cmdlet adds.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -CertificateFile
Specifies the path of an SSL certificate file.
This cmdlet adds the certificate in the file that this parameter specifies.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### System.String

## OUTPUTS

### Microsoft.WindowsAzure.Management.ApplicationGateway.Models.ApplicationGatewayOperationResponse

## NOTES

## RELATED LINKS

[Get-AzureApplicationGatewaySslCertificate](xref:ServiceManagement/Azure.Networking/v0.9.8/Get-AzureApplicationGatewaySslCertificate.md)

[Remove-AzureApplicationGatewaySslCertificate](xref:ServiceManagement/Azure.Networking/v0.9.8/Remove-AzureApplicationGatewaySslCertificate.md)


