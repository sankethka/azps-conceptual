---
external help file: Microsoft.Azure.Commands.Profile.dll-Help.xml
ms.assetid: 0C45C3CB-6EFD-4A14-96BE-485B75382238
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Profile/v2.4.0/Get-AzureRmContext.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Profile/v2.4.0/Get-AzureRmContext.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.Profile/v2.4.0/Get-AzureRmContext.md
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

# Get-AzureRmContext

## SYNOPSIS
Gets the metadata used to authenticate Resource Manager requests.

## SYNTAX

```
Get-AzureRmContext [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmContext** cmdlet gets the current metadata used to authenticate Azure Resource Manager requests.

This cmdlet gets the Active Directory account, Active Directory tenant, Azure subscription, and the targeted Azure environment.
By default, Resource Manager cmdlets use these settings when it makes Resource Manager requests.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

###  
This cmdlet returns the account, tenant, and subscription used by Resource Manager cmdlets.

## NOTES

## RELATED LINKS

[Set-AzureRmContext](xref:ResourceManager/AzureRM.Profile/v2.4.0/Set-AzureRmContext.md)


