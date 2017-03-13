---
external help file: Microsoft.Online.Identity.Federation.PowerShell.dll-help.xml
online version:
schema: 2.0.0
ms.assetid: 165F509D-D91E-4BE5-AF22-72112C1C3AB7
updated_at: 11/9/2016 6:37 PM
ms.date: 11/9/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Convert-MsolDomainToFederated.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Convert-MsolDomainToFederated.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/7986fb4880d0ee292c289166871e4b25df1ad4b8/Azure%20AD%20Cmdlets/MSOnline/v1/Convert-MsolDomainToFederated.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Convert-MsolDomainToFederated

## SYNOPSIS
Converts the domain from using standard authentication to using single sign-on.

## SYNTAX

```
Convert-MsolDomainToFederated [-SupportMultipleDomain] -DomainName <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The **Convert-MSOLDomainToFederated** cmdlet converts the specified domain from standard authentication to single sign-on.
This includes configuring the relying party trust settings between the Active Directory Federation Services 2.0 server and Microsoft Online.
Single sign-on is also known as identity federation.

As part of converting a domain from standard authentication to single sign-on, each user must also be converted.
This conversion happens automatically the next time a user signs in.
No action is required by the administrator.

## PARAMETERS

### -DomainName
Specifies the name of the domain to convert to single sign-on.

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
[Convert-MsolDomainToStandard](xref:MSOnline/v1/Convert-MsolDomainToStandard.md)
