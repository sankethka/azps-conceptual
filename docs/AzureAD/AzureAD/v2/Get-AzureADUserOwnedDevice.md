---
external help file: Microsoft.Open.AzureAD16.Graph.PowerShell.dll-Help.xml
ms.assetid: 5F2DB2DE-3F2E-42D2-B2FF-D154801F2F50
online version: 
schema: 2.0.0
updated_at: 2/4/2017 12:05 AM
ms.date: 2/4/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADUserOwnedDevice.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADUserOwnedDevice.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/3c958c260fe07ce8f34599794f089c4b3c1b8115/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADUserOwnedDevice.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Get-AzureADUserOwnedDevice

## SYNOPSIS
Get registered devices owned by a user.

## SYNTAX

```
Get-AzureADUserOwnedDevice -ObjectId <String> [-All <Boolean>] [-Top <Int32>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureADUserOwnedDevice** cmdlet gets registered devices owned by the specified user in Azure Active Directory (AD).

## EXAMPLES

### Example 1: Get devices owned by a user
```
PS C:\>Get-AzureADUserOwnedDevice -ObjectId "df19e8e6-2ad7-453e-87f5-037f6529ae16"
```

This command gets the registered devices owned by the specified user.

## PARAMETERS

### -All
If true, return all objects owned by this user. If false, return the number of objects specified by the Top parameter

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
Specifies the ID of a user (as a UPN or ObjectId) in Azure AD. 

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
