---
external help file: Microsoft.Online.Administration.Automation.PSModule.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: F4F91C75-9E62-4855-A82F-3DF87FC33C4F
updated_at: 11/10/2016 4:53 PM
ms.date: 11/10/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Confirm-MsolEmailVerifiedDomain.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Confirm-MsolEmailVerifiedDomain.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/fa0df7d7c5fc79297507723a62f5fc4575dafc5e/Azure%20AD%20Cmdlets/MSOnline/v1/Confirm-MsolEmailVerifiedDomain.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Confirm-MsolEmailVerifiedDomain

## SYNOPSIS
Confirms ownership of an unmanaged tenant.

## SYNTAX

```
Confirm-MsolEmailVerifiedDomain -DomainName <String> [-TenantId <Guid>] [<CommonParameters>]
```

## DESCRIPTION
The **Confirm-MsolEmailVerifiedDomain** cmdlet confirms ownership of an unmanaged tenant.
An unmanaged tenant is a directory without a global administrator that was created to complete a self-service signup offer.

In order to confirm ownership, a custom TXT or MX DNS record must be added for the domain.
The domain must first be added using the [New-MsolDomain](./New-MsolDomain.md) cmdlet.
Next use the [Get-MsolDomainVerificationDNS](./Get-MsolDomainVerificationDNS.md) cmdlet to retrieve the details of the DNS record that must be set.

There may be a delay of 15-60 minutes between when the DNS update is made and when the cmdlet is able to verify.

## EXAMPLES

### Example 1: Confirm ownership of a domain
```
Confirm-MsolEmailVerifiedDomain -DomainName "contoso.com"
```

This command confirms ownership of the domain contoso.com.
In order for domain verification to succeed, the appropriate DNS records must first be set up.
The list of DNS records to set up can be retrieved using the [Get-MsolDomainVerificationDns](./Get-MsolDomainVerificationDns.md) cmdlet.


## PARAMETERS

### -DomainName
Specifies the fully qualified domain name (FQDN) to verify.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
System.Nullable`1[[System.Guid, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS
[Get-MsolDomainVerificationDNS](xref:MSOnline/v1/Get-MsolDomainVerificationDNS.md)

[New-MsolDomain](xref:MSOnline/v1/New-MsolDomain.md)
