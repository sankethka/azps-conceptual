---
external help file: Microsoft.Azure.Commands.DataLakeAnalytics.dll-Help.xml
ms.assetid: 0377C4E9-C1DC-49BA-BBC4-5598C83234F8
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DataLakeAnalytics/v2.5.0/Get-AzureRmDataLakeAnalyticsDataSource.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DataLakeAnalytics/v2.5.0/Get-AzureRmDataLakeAnalyticsDataSource.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ResourceManager/AzureRM.DataLakeAnalytics/v2.5.0/Get-AzureRmDataLakeAnalyticsDataSource.md
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

# Get-AzureRmDataLakeAnalyticsDataSource

## SYNOPSIS
Gets a Data Lake Analytics data source.

## SYNTAX

### List all data sources (Default)
```
Get-AzureRmDataLakeAnalyticsDataSource [-Account] <String> [[-ResourceGroupName] <String>] [<CommonParameters>]
```

### Get a Blob storage account
```
Get-AzureRmDataLakeAnalyticsDataSource [-Account] <String> [-Blob] <String> [[-ResourceGroupName] <String>]
 [<CommonParameters>]
```

### Get a Data Lake Store account
```
Get-AzureRmDataLakeAnalyticsDataSource [-Account] <String> [-DataLakeStore] <String>
 [[-ResourceGroupName] <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmDataLakeAnalyticsDataSource** cmdlet gets an Azure Data Lake Analytics data source.

## EXAMPLES

### Example 1: Get a data source from an account
```
PS C:\>Get-AzureRmDataLakeAnalyticsDataSource -AccountName "ContosoAdlA" -DataLakeStore "ContosoAdls"
```

This command gets a Data Lake Store data source named ContosoAdls from a Data Lake Analytics account.

### Example 2: Get the list of Data Lake Store accounts in a Data Lake Analytics account
```
PS C:\>Get-AzureRmDataLakeAnalyticsDataSource -AccountName "ContosoAdlA" -DataSource "DataLakeStore"
```

This command gets all Data Lake Store accounts from a Data Lake Analytics account.

## PARAMETERS

### -Account
Specifies the Data Lake Analytics account that this cmdlet gets data sources.

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

### -Blob
Specifies the name of the Azure Blob Storage data source.

```yaml
Type: String
Parameter Sets: Get a Blob storage account
Aliases: AzureBlob

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DataLakeStore
Specifies the name of the Data Lake Store account.

```yaml
Type: String
Parameter Sets: Get a Data Lake Store account
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the resource group name that contains the data source.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
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

[Add-AzureRmDataLakeAnalyticsDataSource](xref:ResourceManager/AzureRM.DataLakeAnalytics/v2.5.0/Add-AzureRmDataLakeAnalyticsDataSource.md)

[Remove-AzureRmDataLakeAnalyticsDataSource](xref:ResourceManager/AzureRM.DataLakeAnalytics/v2.5.0/Remove-AzureRmDataLakeAnalyticsDataSource.md)

[Set-AzureRmDataLakeAnalyticsDataSource](xref:ResourceManager/AzureRM.DataLakeAnalytics/v2.5.0/Set-AzureRmDataLakeAnalyticsDataSource.md)


