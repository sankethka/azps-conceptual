---
external help file: Microsoft.Online.Administration.Automation.PSModule.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 8DC24A62-AD0A-452B-BACF-28B9BEC922FC
updated_at: 11/7/2016 9:20 PM
ms.date: 11/7/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Confirm-MsolDomain.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Confirm-MsolDomain.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/94a9d6babbb311cac82eb0873333def445a3d23a/Azure%20AD%20Cmdlets/MSOnline/v1/Confirm-MsolDomain.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Confirm-MsolDomain

## SYNOPSIS
Verifies a custom domain.

## SYNTAX

```
Confirm-MsolDomain -DomainName <String> [-SigningCertificate <String>] [-NextSigningCertificate <String>]
 [-LogOffUri <String>] [-PassiveLogOnUri <String>] [-ActiveLogOnUri <String>] [-IssuerUri <String>]
 [-FederationBrandName <String>] [-MetadataExchangeUri <String>]
 [-PreferredAuthenticationProtocol <AuthenticationProtocol>] [-SupportsMfa <Boolean>]
 [-DefaultInteractiveAuthenticationMethod <String>] [-OpenIdConnectDiscoveryEndpoint <String>]
 [-SigningCertificateUpdateStatus <SigningCertificateUpdateStatus>]
 [-PromptLoginBehavior <PromptLoginBehavior>] [-ForceTakeover <ForceTakeoverOption>] [-TenantId <Guid>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Confirm-MsolDomain** cmdlet confirms ownership of a domain.
In order to confirm ownership, a custom TXT or MX DNS record must be added for the domain.
The domain must first be added by using the [New-MsolDomain](./New-MsolDomain.md) cmdlet.
Then run the [Get-MsolDomainVerificationDNS](./Get-MsolDomainVerificationDNS.md) cmdlet to get the details of the DNS record that must be set.

There may be a delay of 15 to 60 minutes between when the DNS update is made and when this cmdlet is able to verify.

## EXAMPLES

### Example 1: Verify a domain

```
PS C:\> PS C:\> Confirm-MsolDomain -DomainName "contoso.com"
```

This command attempts to verify the domain contoso.com.
In order for domain verification to succeed, the appropriate DNS records must first be set up.
Run the [Get-MsolDomainVerificationDNS](./Get-MsolDomainVerificationDNS.md) cmdlet to get the details of the DNS record that must be set.

## PARAMETERS

### -ActiveLogOnUri
Specifies a URL that specifies the end point used by active clients when authenticating with domains set up for single sign-on with Azure Active Directory.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DomainName
Specifies the fully qualified domain name to verify.

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

### -FederationBrandName
Specifies the name of the string value shown to users when signing in to Azure Active Directory Services.
We recommend using something that is familiar to users, such as "Contoso Inc."

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -IssuerUri
Specifies the unique ID of the domain in the Azure Active Directory identity platform that is derived from the federation server.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -LogOffUri
Specifies the URL that clients are redirected to when they sign out of Azure Active Directory Services.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -MetadataExchangeUri
Specifies the URL of the metadata exchange end point used for authentication from rich client applications such as Lync Online.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -NextSigningCertificate
Specifies the next token signing certificate that is used to sign tokens when the primary signing certificate expires.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PassiveLogOnUri
Specifies the URL that web based clients are be directed to when signing in to Azure Active Directory Services.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SigningCertificate
Specifies the current certificate used to sign tokens passed to the Azure Active Directory Identity platform.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TenantId
Specifies the unique ID of the tenant on which to perform the operation.
The default value is the tenant of the current user.
This parameter applies only to partner users.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SupportsMfa
Indicates whether the IDP STS supports MFA.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DefaultInteractiveAuthenticationMethod
Specifies the default authentication method that should be used when an application requires the user to have interactive login.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -OpenIdConnectDiscoveryEndpoint
Specifies the OpenID Connect Discovery Endpoint of the federated IDP STS.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ForceTakeover
Specifies the force takeover value.


```yaml
Type: ForceTakeoverOption
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PreferredAuthenticationProtocol
Specifies the preferred authentication protocol.


```yaml
Type: AuthenticationProtocol
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PromptLoginBehavior
Specifies the prompt logon behavior.


```yaml
Type: PromptLoginBehavior
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SigningCertificateUpdateStatus
Specifies the update status of the signing certificate.

```yaml
Type: SigningCertificateUpdateStatus
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
[Get-MsolDomain](xref:MSOnline/v1/Get-MsolDomain.md)

[Get-MsolDomainVerificationDNS](xref:MSOnline/v1/Get-MsolDomainVerificationDNS.md)

[New-MsolDomain](xref:MSOnline/v1/New-MsolDomain.md)

[Remove-MsolDomain](xref:MSOnline/v1/Remove-MsolDomain.md)

[Set-MsolDomain](xref:MSOnline/v1/Set-MsolDomain.md)
