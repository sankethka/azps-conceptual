---
external help file: Microsoft.Online.Administration.Automation.PSModule.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 7B30E5B5-27F3-41C3-9AFE-E2ACB4BAF8BA
updated_at: 11/9/2016 6:37 PM
ms.date: 11/9/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Set-MsolCompanyContactInformation.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Set-MsolCompanyContactInformation.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/7986fb4880d0ee292c289166871e4b25df1ad4b8/Azure%20AD%20Cmdlets/MSOnline/v1/Set-MsolCompanyContactInformation.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Set-MsolCompanyContactInformation

## SYNOPSIS
Sets company-level contact information.

## SYNTAX

```
Set-MsolCompanyContactInformation [-TechnicalNotificationEmails <String[]>]
 [-MarketingNotificationEmails <String[]>] [-TenantId <Guid>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-MsolCompanyContactInformation** cmdlet sets company-level contact preferences.
This includes email addresses for marketing and technical notifications about Azure Active Directory.

## EXAMPLES

### Example 1: Sets contact email address
```
PS C:\> Set-MsolCompanyContactInformation -TechnicalNotificationEmail "tech@contoso.com"
```

This command sets contact email address for the company.

## PARAMETERS

### -MarketingNotificationEmails
Specifies company-level marketing information contact email address.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TechnicalNotificationEmails
Specifies company-level technical information contact email address.

```yaml
Type: String[]
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
