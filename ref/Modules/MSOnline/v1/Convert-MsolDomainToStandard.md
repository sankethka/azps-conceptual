---
external help file: Microsoft.Online.Identity.Federation.PowerShell.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 959CE65E-2BC3-466D-A1E2-B9B01D9AD0EE
updated_at: 11/9/2016 6:37 PM
ms.date: 11/9/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Convert-MsolDomainToStandard.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Convert-MsolDomainToStandard.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/7986fb4880d0ee292c289166871e4b25df1ad4b8/Azure%20AD%20Cmdlets/MSOnline/v1/Convert-MsolDomainToStandard.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Convert-MsolDomainToStandard

## SYNOPSIS
Converts the domain from using single sign-on to using standard authentication.

## SYNTAX

```
Convert-MsolDomainToStandard -PasswordFile <String> -SkipUserConversion <Boolean> -DomainName <String>
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Convert-MsolDomainToStandard** cmdlet converts the specified domain from single sign-on (also known as identity federation) to standard authentication.
Single sign-on is also known as identity federation.

This process also removes the relying party trust settings in the Active Directory Federation Services 2.0 server and Microsoft Online.

After the conversion, this cmdlet converts all existing users from single sign-on to standard authentication.
Any existing user who was configured for single sign-on gets a new temporary password as part of the conversion process.
Each converted user name and new temporary password is recorded in a file for reference by the administrator.
The administrator can then distribute the new temporary password to each converted user to enable the user to sign in to Microsoft Online Services.

## PARAMETERS

### -DomainName
Specifies the domain name to convert from single sign-on to standard authentication.

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

### -PasswordFile
Specifies the file where converted users' user names and temporary passwords are recorded.

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

### -SkipUserConversion
Specifies whether users are not converted as part of the operation.
You can run the cmdlet again to convert users at a later date.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: True
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
[Convert-MsolDomainToFederated](xref:MSOnline/v1/Convert-MsolDomainToFederated.md)
