---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 06DCC819-7D1F-4F65-98F0-10F744D5F8B1
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v1.1.4/Get-AzureRmBatchApplicationPackage.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v1.1.4/Get-AzureRmBatchApplicationPackage.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v1.1.4/Get-AzureRmBatchApplicationPackage.md
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

# Get-AzureRmBatchApplicationPackage

## SYNOPSIS
Gets information about an application package in a Batch account.

## SYNTAX

```
Get-AzureRmBatchApplicationPackage [-AccountName] <String> [-ResourceGroupName] <String>
 [-ApplicationId] <String> [-ApplicationVersion] <String> [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmBatchApplicationPackage** cmdlet gets information about an application package in an Azure Batch account.

## EXAMPLES

### Example 1: Get details of an application package in a Batch account
```
PS C:\>Get-AzureRmBatchApplicationPackage -AccountName "ContosoBatch" -ResourceGroupName "ContosoBatchGroup" -ApplicationId "Litware" -ApplicationVersion "1.0"
Format             : zip
State              : Active
Version            : 1.0
LastActivationTime : 13/05/2016 4:03:24 AM
StorageUrl         : https://contosobatch.blob.core.windows.net/app-test
StorageUrlExpiry   : 13/05/2016 8:04:44 AM
Id                 : litware
```

This command gets the details of version 1.0 of the Litware package.

## PARAMETERS

### -AccountName
Specifies the name of the Batch account from which this cmdlet gets information.

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

### -ApplicationId
Specifies the ID of the application.

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

### -ApplicationVersion
Specifies the version of the application.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group that contains the Batch account.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureRmBatchApplication](xref:ResourceManager/AzureRM.Batch/v1.1.4/Get-AzureRmBatchApplication.md)

[New-AzureRmBatchApplication](xref:ResourceManager/AzureRM.Batch/v1.1.4/New-AzureRmBatchApplication.md)

[New-AzureRmBatchApplicationPackage](xref:ResourceManager/AzureRM.Batch/v1.1.4/New-AzureRmBatchApplicationPackage.md)

[Remove-AzureRmBatchApplication](xref:ResourceManager/AzureRM.Batch/v1.1.4/Remove-AzureRmBatchApplication.md)

[Remove-AzureRmBatchApplicationPackage](xref:ResourceManager/AzureRM.Batch/v1.1.4/Remove-AzureRmBatchApplicationPackage.md)

[Set-AzureRmBatchApplication](xref:ResourceManager/AzureRM.Batch/v1.1.4/Set-AzureRmBatchApplication.md)


