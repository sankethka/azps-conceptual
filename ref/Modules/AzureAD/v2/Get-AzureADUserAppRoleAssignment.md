---
external help file: Microsoft.Open.AzureAD16.Graph.PowerShell.dll-Help.xml
ms.assetid: 20B9B17F-DF19-4105-8D94-DEB9AE9E724B
online version: 
schema: 2.0.0
updated_at: 2/4/2017 12:05 AM
ms.date: 2/4/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADUserAppRoleAssignment.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADUserAppRoleAssignment.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/3c958c260fe07ce8f34599794f089c4b3c1b8115/Azure%20AD%20Cmdlets/AzureAD/v2/Get-AzureADUserAppRoleAssignment.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Get-AzureADUserAppRoleAssignment

## SYNOPSIS
Get a user application role assignment.

## SYNTAX

```
Get-AzureADUserAppRoleAssignment -ObjectId <String> [-All <Boolean>] [-Top <Int32>] [<CommonParameters>]
```

## DESCRIPTION

## EXAMPLES

### Example 1: Get a user application role assignment
```
PS C:\> $UserId = (Get-AzureADUser -Top 1).ObjectId
Get-AzureADUserAppRoleAssignment -ObjectId $UserId
```

The first command gets the ID of an Azure AD user by using the [Get-AzureADUser](./Get-AzureADUser.md) cmdlet. 
The command stores the value in the $UserId variable.

The second command gets a user application role assignment for the user in $UserId.

## PARAMETERS

### -All
If true, return all user application role assignments for this user. If false, return the number of objects specified by the Top parameter

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
Specifies the ID of a user (as a UPN or ObjectId) in Azure Active Directory. 

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

[Get-AzureADUser](xref:AzureAD/v2/Get-AzureADUser.md)

[New-AzureADUserAppRoleAssignment](xref:AzureAD/v2/New-AzureADUserAppRoleAssignment.md)

[Remove-AzureADUserAppRoleAssignment](xref:AzureAD/v2/Remove-AzureADUserAppRoleAssignment.md)
