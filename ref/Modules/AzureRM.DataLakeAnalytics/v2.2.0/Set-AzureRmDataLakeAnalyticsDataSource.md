---
external help file: Microsoft.Azure.Commands.DataLakeAnalytics.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 3BCF5AE9-754F-43CC-8690-37E1B0BFEE3D
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DataLakeAnalytics/v2.2.0/Set-AzureRmDataLakeAnalyticsDataSource.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DataLakeAnalytics/v2.2.0/Set-AzureRmDataLakeAnalyticsDataSource.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.DataLakeAnalytics/v2.2.0/Set-AzureRmDataLakeAnalyticsDataSource.md
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

# Set-AzureRmDataLakeAnalyticsDataSource

## SYNOPSIS
Modifies the details of a data source of a Data Lake Analytics account.

## SYNTAX

### Set a Blob storage account
```
Set-AzureRmDataLakeAnalyticsDataSource [-Account] <String> [-Blob] <String> [-AccessKey] <String>
 [[-ResourceGroupName] <String>] [<CommonParameters>]
```

### Set a Data Lake storage account
```
Set-AzureRmDataLakeAnalyticsDataSource [-Account] <String> [-DataLakeStore] <String> [-Default]
 [[-ResourceGroupName] <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmDataLakeAnalyticsDataSource** cmdlet modifies the details of a data source of an Azure Data Lake Analytics account.

## EXAMPLES

### Example 1: Change the access key for a data source
```
PS C:\>Set-AzureRmDataLakeAnalyticsDataSource -Account "ContosoAdlAccount" -Blob "contosowasb" -AccessKey "...newaccesskey..."
```

This command changes the access key stored for an Azure Blob Storage data source.

## PARAMETERS

### -Account
Specifies the Data Lake Analytics account name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: AccountName

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DataLakeStore
Specifies the name of the Data Lake Store account to modify.

```yaml
Type: String
Parameter Sets: Set a Data Lake storage account
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Default
Indicates that the data source becomes the default data source for the Data Lake Analytics account.

```yaml
Type: SwitchParameter
Parameter Sets: Set a Data Lake storage account
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the resource group name of the Data Lake Analytics account.

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

### -Blob
Specifies the name of the Azure Blob Storage data source.

```yaml
Type: String
Parameter Sets: Set a Blob storage account
Aliases: AzureBlob

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AccessKey
Specifies the new access key of the Azure Blob Storage data source.

```yaml
Type: String
Parameter Sets: Set a Blob storage account
Aliases: 

Required: True
Position: 2
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

[Add-AzureRmDataLakeAnalyticsDataSource](xref:ResourceManager/AzureRM.DataLakeAnalytics/v2.2.0/Add-AzureRmDataLakeAnalyticsDataSource.md)

[Remove-AzureRmDataLakeAnalyticsDataSource](xref:ResourceManager/AzureRM.DataLakeAnalytics/v2.2.0/Remove-AzureRmDataLakeAnalyticsDataSource.md)


