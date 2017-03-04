---
external help file: Microsoft.Azure.Commands.Profile.dll-Help.xml
ms.assetid: 87B6EB4C-7ECE-49F1-9712-CDF9CAA5595A
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Profile/v2.4.0/Get-AzureRmTenant.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Profile/v2.4.0/Get-AzureRmTenant.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.Profile/v2.4.0/Get-AzureRmTenant.md
ms.topic: reference
ms.prod: powershell
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: erickson-doug
open_to_public_contributors: False
ms.service: azure-powershell
---

# Get-AzureRmTenant

## SYNOPSIS
Gets tenants that are authorized for the current user.

## SYNTAX

```
Get-AzureRmTenant [-TenantId <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmTenant** cmdlet gets tenants that are authorized for the current user.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -TenantId
Specifies the ID of the tenant that this cmdlet gets.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Domain, Tenant

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

###  
This cmdlet returns the tenant ID and associated domain information for tenants authorized for the current account.

## NOTES

## RELATED LINKS

