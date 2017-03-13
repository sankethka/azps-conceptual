---
external help file: Microsoft.Online.Administration.Automation.PSModule.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 750DB368-6EC8-45AC-B3E8-A4D53E6284D7
updated_at: 11/10/2016 12:31 AM
ms.date: 11/10/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Set-MsolDomain.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Set-MsolDomain.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/f72983e84de2f467e1a00ba8a6d58936035a33db/Azure%20AD%20Cmdlets/MSOnline/v1/Set-MsolDomain.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Set-MsolDomain

## SYNOPSIS
Modifies settings of a domain.

## SYNTAX

```
Set-MsolDomain [-Name <String>] [-IsDefault] [-TenantId <Guid>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-MsolDomain** cmdlet modifies settings for a domain.
This cmdlet can change the default domain.

## EXAMPLES

### Example 1: Make a domain into the default domain

```
PS C:\> Set-MsolDomain -Name "contoso.com" -IsDefault
```

This command sets contoso.com as the default domain.

## PARAMETERS

### -IsDefault
Indicates that this cmdlet makes the domain into the default domain.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of the domain to modify.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS
[Confirm-MsolDomain](xref:MSOnline/v1/Confirm-MsolDomain.md)

[Get-MsolDomain](xref:MSOnline/v1/Get-MsolDomain.md)

[New-MsolDomain](xref:MSOnline/v1/New-MsolDomain.md)

[Remove-MsolDomain](xref:MSOnline/v1/Remove-MsolDomain.md)
