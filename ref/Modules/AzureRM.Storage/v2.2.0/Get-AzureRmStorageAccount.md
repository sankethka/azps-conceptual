---
external help file: Microsoft.Azure.Commands.Management.Storage.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: C30F5B25-A73F-4A6E-9E71-2532D0EB6E1A
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Storage/v2.2.0/Get-AzureRmStorageAccount.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Storage/v2.2.0/Get-AzureRmStorageAccount.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Storage/v2.2.0/Get-AzureRmStorageAccount.md
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

# Get-AzureRmStorageAccount

## SYNOPSIS
Gets a Storage account.

## SYNTAX

### AccountNameParameterSet
```
Get-AzureRmStorageAccount [-ResourceGroupName] <String> [-Name] <String> [<CommonParameters>]
```

### ResourceGroupParameterSet
```
Get-AzureRmStorageAccount [[-ResourceGroupName] <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmStorageAccount** cmdlet gets a specified Storage account or all of the Storage accounts in a resource group or the subscription.

## EXAMPLES

### Example 1: Get a specified storage account
```
PS C:\>Get-AzureRmStorageAccount -ResourceGroupName "RG01" -AccountName "MyStorageAccount"
```

This command gets the specified Storage account.

### Example 2: Get all Storage accounts in a resource group
```
PS C:\>Get-AzureRmStorageAccount -ResourceGroupName "RG01"
```

This command gets all of the Storage accounts in a resource group.

### Example 3:  Get all Storage accounts in the subscription
```
PS C:\>Get-AzureRmStorageAccount
```

This command gets all of the Storage accounts in the subscription.

## PARAMETERS

### -ResourceGroupName
Specifies the name of the resource group that contains the Storage account to get.

```yaml
Type: String
Parameter Sets: AccountNameParameterSet
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: ResourceGroupParameterSet
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of the Storage account to get.

```yaml
Type: String
Parameter Sets: AccountNameParameterSet
Aliases: StorageAccountName, AccountName

Required: True
Position: 1
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

[New-AzureRmStorageAccount](xref:ResourceManager/AzureRM.Storage/v2.2.0/New-AzureRmStorageAccount.md)

[Remove-AzureRmStorageAccount](xref:ResourceManager/AzureRM.Storage/v2.2.0/Remove-AzureRmStorageAccount.md)

[Set-AzureRmStorageAccount](xref:ResourceManager/AzureRM.Storage/v2.2.0/Set-AzureRmStorageAccount.md)


