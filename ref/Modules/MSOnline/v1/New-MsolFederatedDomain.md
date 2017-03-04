---
external help file: Microsoft.Online.Identity.Federation.PowerShell.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 623D0291-0C85-422F-BC47-43D019839C16
updated_at: 11/8/2016 9:01 PM
ms.date: 11/8/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/New-MsolFederatedDomain.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/New-MsolFederatedDomain.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/2c57f1e6f7b36ad296f1b569969f9c974ec0e0c3/Azure%20AD%20Cmdlets/MSOnline/v1/New-MsolFederatedDomain.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# New-MsolFederatedDomain

## SYNOPSIS
Adds a new single sign-on domain to Microsoft Online Services and establishes the relying party trust.

## SYNTAX

```
New-MsolFederatedDomain [-SupportMultipleDomain] -DomainName <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **New-MsolFederatedDomain** cmdlet adds a new single sign-on domain to Microsoft Online Services and configures the relying party trust settings between the on-premises Active Directory Federation Services 2.0 server and Microsoft Online.
A single sign-on domain is also known as identity-federated domain.
Due to domain verification requirements, you may need to run this cmdlet several times in order to complete the process of adding the new single sign-on domain.

## PARAMETERS

### -DomainName
Specifies the name of the new single sign-on domain to create in Microsoft Online.

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

### -SupportMultipleDomain

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the command.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

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
[Remove-MsolFederatedDomain](xref:MSOnline/v1/Remove-MsolFederatedDomain.md)

[Update-MsolFederatedDomain](xref:MSOnline/v1/Update-MsolFederatedDomain.md)
