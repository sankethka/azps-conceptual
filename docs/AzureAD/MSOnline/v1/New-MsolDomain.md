---
external help file: Microsoft.Online.Administration.Automation.PSModule.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 013C6697-E78E-4882-840B-CC0595C452DA
updated_at: 11/4/2016 10:40 PM
ms.date: 11/4/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/New-MsolDomain.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/New-MsolDomain.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/3c22ad9f927dcfe00a363b1a2c343fc086da2ac5/Azure%20AD%20Cmdlets/MSOnline/v1/New-MsolDomain.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# New-MsolDomain

## SYNOPSIS
Add a domain to Azure Active Directory.

## SYNTAX

```
New-MsolDomain [-Name <String>] [-Authentication <DomainAuthenticationType>]
 [-VerificationMethod <DomainVerificationMethod>] [-TenantId <Guid>] [<CommonParameters>]
```

## DESCRIPTION
The **New-MsolDomain** cmdlet adds a domain to Azure Active Directory.
This cmdlet can create domains with managed or federated identities.
To ensure proper setup, use the [New-MsolFederatedDomain](./New-MsolFederatedDomain.md) cmdlet for federated domains.

## EXAMPLES

### Example 1: Create a domain

```
PS C:\> New-MsolDomain -Name "contoso.com"
```

This command creates a domain named contoso.com.
You must verify the domain before it can be used.

## PARAMETERS

### -Authentication
Specifies the authentication type of the domain.
Valid values are: managed and federated.
All users created in this domain have this authentication type.

```yaml
Type: DomainAuthenticationType
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the fully qualified domain name of the domain.

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

### -VerificationMethod
Specifies the verification method for the domain.

```yaml
Type: DomainVerificationMethod
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

### Microsoft.Online.Administration.Domain
This cmdlet returns the details about the new domain.

## NOTES

## RELATED LINKS
[Confirm-MsolDomain](xref:MSOnline/v1/Confirm-MsolDomain.md)

[Get-MsolDomain](xref:MSOnline/v1/Get-MsolDomain.md)

[New-MsolFederatedDomain](xref:MSOnline/v1/New-MsolFederatedDomain.md)

[Remove-MsolDomain](xref:MSOnline/v1/Remove-MsolDomain.md)

[Set-MsolDomain](xref:MSOnline/v1/Set-MsolDomain.md)
