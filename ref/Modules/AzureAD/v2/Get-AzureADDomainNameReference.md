---
external help file: Microsoft.Open.AzureAD16.Graph.PowerShell.dll-Help.xml
online version: 
schema: 2.0.0
updated_at: 1/26/2017 4:41 PM
ms.date: 1/26/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADDomainNameReference.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADDomainNameReference.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/644983facd286426ad83f709789786ce621938b5/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADDomainNameReference.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Get-AzureADDomainNameReference

## SYNOPSIS

This cmdlet retrieves the objects that are referenced by a given domain name 
## SYNTAX

```
Get-AzureADDomainNameReference -Name <String>
```

## DESCRIPTION
This cmdlet retrieves the objects that are referenced by a given domain name 

## EXAMPLES

### Example 1
```
PS C:\WINDOWS\system32> Get-AzureADDomainNameReference -Name drumkit.onmicrosoft.com


```

This example shows how to retrieve the domain name reference objects for a domain that is specified through the -Name parameter

## PARAMETERS

### -Name
The name of the domain name for which the referenced objects are retrieved

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

## INPUTS

### System.String


## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS

