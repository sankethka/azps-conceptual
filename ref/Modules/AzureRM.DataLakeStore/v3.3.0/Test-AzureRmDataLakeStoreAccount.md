---
external help file: Microsoft.Azure.Commands.DataLakeStore.dll-Help.xml
ms.assetid: 613DE097-65E0-4F08-839D-F9B53F772382
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DataLakeStore/v3.3.0/Test-AzureRmDataLakeStoreAccount.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DataLakeStore/v3.3.0/Test-AzureRmDataLakeStoreAccount.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ResourceManager/AzureRM.DataLakeStore/v3.3.0/Test-AzureRmDataLakeStoreAccount.md
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

# Test-AzureRmDataLakeStoreAccount

## SYNOPSIS
Tests the existence of a Data Lake Store account.

## SYNTAX

```
Test-AzureRmDataLakeStoreAccount [-Name] <String> [[-ResourceGroupName] <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Test-AzureRmDataLakeStoreAccount** cmdlet tests the existence of a Data Lake Store account.

## EXAMPLES

### Example 1: Test an account
```
PS C:\>Test-AzureRmDataLakeStoreAccount -Name "ContosoADL"
```

This command tests whether the account named ContosoADL exists.

## PARAMETERS

### -Name
Specifies the name of the Data Lake Store account to test.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group that contains the account to test.

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

[Get-AzureRmDataLakeStoreAccount](xref:ResourceManager/AzureRM.DataLakeStore/v3.3.0/Get-AzureRmDataLakeStoreAccount.md)

[New-AzureRmDataLakeStoreAccount](xref:ResourceManager/AzureRM.DataLakeStore/v3.3.0/New-AzureRmDataLakeStoreAccount.md)

[Remove-AzureRmDataLakeStoreAccount](xref:ResourceManager/AzureRM.DataLakeStore/v3.3.0/Remove-AzureRmDataLakeStoreAccount.md)

[Set-AzureRmDataLakeStoreAccount](xref:ResourceManager/AzureRM.DataLakeStore/v3.3.0/Set-AzureRmDataLakeStoreAccount.md)


