---
external help file: Microsoft.Online.Administration.Automation.PSModule.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 174960FD-00BB-461F-B8C9-DDA519E24F00
updated_at: 11/14/2016 9:14 PM
ms.date: 11/14/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Get-MsolDirSyncConfiguration.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Get-MsolDirSyncConfiguration.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/2fc7c934766545163d747d78fd2431e341b5bd4f/Azure%20AD%20Cmdlets/MSOnline/v1/Get-MsolDirSyncConfiguration.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Get-MsolDirSyncConfiguration

## SYNOPSIS
Gets the directory synchronization settings.

## SYNTAX

```
Get-MsolDirSyncConfiguration [-TenantId <Guid>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-MsolDirSyncConfiguration** cmdlet gets the directory synchronization settings.

## EXAMPLES


## PARAMETERS

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
[Set-MsolDirSyncConfiguration](xref:MSOnline/v1/Set-MsolDirSyncConfiguration.md)
