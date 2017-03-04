---
external help file: Microsoft.Open.AzureAD16.Graph.PowerShell.dll-Help.xml
ms.assetid: 6E35C951-ABD7-4376-B749-122B541FC332
online version: 
schema: 2.0.0
updated_at: 2/4/2017 12:05 AM
ms.date: 2/4/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADServicePrincipalOwner.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADServicePrincipalOwner.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/3c958c260fe07ce8f34599794f089c4b3c1b8115/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADServicePrincipalOwner.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Get-AzureADServicePrincipalOwner

## SYNOPSIS
Get the owner of a service principal.

## SYNTAX

```
Get-AzureADServicePrincipalOwner -ObjectId <String> [-All <Boolean>] [-Top <Int32>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureADServicePrincipalOwner** cmdlet gets the owners of a service principal in Azure Active Directory (AD).

## EXAMPLES

### Example 1: Retrieve the owner of a service principal
```
PS C:\> $ServicePrincipalId = (Get-AzureADServicePrincipal -Top 1).ObjectId
PS C:\> Get-AzureADServicePrincipalOwner -ObjectId $ServicePrincipalId
```

The first command gets the ID of a service principal by using the [Get-AzureADServicePrincipal](./Get-AzureADServicePrincipal.md) cmdlet. 
The command stores the ID in the $ServicePrincipalId variable.

The second command gets the owner of a service principal identified by $ServicePrincipalId.

## PARAMETERS

### -All
If true, return all service principal owners for this service principal. If false, return the number of objects specified by the Top parameter

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ObjectId
Specifies the ID of a service principal in Azure AD.

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

### -Top
Specifies the maximum number of records to return.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AzureADServicePrincipalOwner](xref:AzureAD/v2/Add-AzureADServicePrincipalOwner.md)

[Get-AzureADServicePrincipal](xref:AzureAD/v2/Get-AzureADServicePrincipal.md)

[Remove-AzureADServicePrincipalOwner](xref:AzureAD/v2/Remove-AzureADServicePrincipalOwner.md)
