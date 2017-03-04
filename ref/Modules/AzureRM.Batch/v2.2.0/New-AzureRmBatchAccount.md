---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: AA51DA1F-C400-426A-9110-A3C58CB500E9
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.2.0/New-AzureRmBatchAccount.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.2.0/New-AzureRmBatchAccount.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.2.0/New-AzureRmBatchAccount.md
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

# New-AzureRmBatchAccount

## SYNOPSIS
Creates a Batch account.

## SYNTAX

```
New-AzureRmBatchAccount [-AccountName] <String> [-Location] <String> [-ResourceGroupName] <String>
 [[-AutoStorageAccountId] <String>] [-Tag <Hashtable>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmBatchAccount** cmdlet creates an Azure Batch account for the specified resource group and location.

## EXAMPLES

### Example 1: Create a Batch account
```
PS C:\>New-AzureRmBatchAccount -AccountName "pfuller" -ResourceGroupName "ResourceGroup03" -Location "WestUS"
AccountName                  : pfuller

Location                     : westus

ResourceGroupName            : ResourceGroup03

CoreQuota                    : 20

PoolQuota                    : 20

ActiveJobAndJobScheduleQuota : 20

Tags                         : 
TaskTenantUrl                : https://cmdletexample.westus.batch.azure.com
```

This command creates a Batch account named pfuller using the ResourceGroup03 resource group in the West US location.

## PARAMETERS

### -AccountName
Specifies the name of the Batch account that this cmdlet creates.

Batch account names must be between 3 and 24 characters long and contain only numbers and lowercase letters.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Name

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AutoStorageAccountId
Specifies the resource ID of the storage account to be used for auto storage.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Location
Specifies the region where this cmdlet creates the account.
For more information, see Azure Regionshttps://azure.microsoft.com/en-us/regions/ (https://azure.microsoft.com/en-us/regions).

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group in which this cmdlet creates the account.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Tag
Specifies an array of hash tables of tags for the account.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases: Tags

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

### BatchAccountContext

## NOTES

## RELATED LINKS

[Get-AzureRmBatchAccount](xref:ResourceManager/AzureRM.Batch/v2.2.0/Get-AzureRmBatchAccount.md)

[Remove-AzureRmBatchAccount](xref:ResourceManager/AzureRM.Batch/v2.2.0/Remove-AzureRmBatchAccount.md)

[Set-AzureRmBatchAccount](xref:ResourceManager/AzureRM.Batch/v2.2.0/Set-AzureRmBatchAccount.md)

[Azure Batch Cmdlets](xref:ResourceManager/AzureRM.Batch/v2.2.0/AzureRM.Batch.md)


