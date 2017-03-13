---
external help file: Microsoft.Online.Identity.Federation.PowerShell.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: D7479CDA-88DF-4B4E-9F2D-688C7371893E
updated_at: 11/9/2016 7:55 PM
ms.date: 11/9/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Get-MsolFederationProperty.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Get-MsolFederationProperty.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/2ed1dc4a4cad9328c634640b8f50d00798f6278b/Azure%20AD%20Cmdlets/MSOnline/v1/Get-MsolFederationProperty.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Get-MsolFederationProperty

## SYNOPSIS

Displays the properties of the Active Directory Federation Services 2.0 server and Microsoft Online.

## SYNTAX

```
Get-MsolFederationProperty [-SupportMultipleDomain] -DomainName <String> [<CommonParameters>]
```

## DESCRIPTION
The **Get-MSOLFederationProperty** cmdlet gets key settings from both the Active Directory Federation Services 2.0 server and Microsoft Online.
You can use this information to troubleshoot authentication problems caused by mismatched settings between the Active Directory Federation Services 2.0 server and Microsoft Online.

## PARAMETERS

### -DomainName
Specifies the domain name for which the properties from both the Active Directory Federation Services 2.0 server and Microsoft Online are displayed.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
