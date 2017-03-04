---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
ms.assetid: CF8B8E94-3C6C-4D68-B55B-956393890946
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.4.0/Get-AzureRmBatchApplication.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.4.0/Get-AzureRmBatchApplication.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.4.0/Get-AzureRmBatchApplication.md
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

# Get-AzureRmBatchApplication

## SYNOPSIS
Gets information about the specified application.

## SYNTAX

```
Get-AzureRmBatchApplication [-AccountName] <String> [-ResourceGroupName] <String> [[-ApplicationId] <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmBatchApplication** cmdlet gets information about an application in an Azure Batch account.

## EXAMPLES

### Example 1: Display the applications in a Batch account
```
PS C:\>Get-AzureRmBatchApplication -AccountName "ContosoBatch" -ResourceGroupName "ContosoBatchGroup"
ApplicationId AllowUpdates DisplayName

------------- ------------ ----------------------------

litware       False        Litware Advanced Reticulator
```

This command displays all applications in the ContosoBatch account.

## PARAMETERS

### -AccountName
Specifies the name of the Batch account that contains the application.

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

Required: False
Position: 2
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

[Get-AzureRmBatchApplicationPackage](xref:ResourceManager/AzureRM.Batch/v2.4.0/Get-AzureRmBatchApplicationPackage.md)

[New-AzureRmBatchApplication](xref:ResourceManager/AzureRM.Batch/v2.4.0/New-AzureRmBatchApplication.md)

[New-AzureRmBatchApplicationPackage](xref:ResourceManager/AzureRM.Batch/v2.4.0/New-AzureRmBatchApplicationPackage.md)

[Remove-AzureRmBatchApplication](xref:ResourceManager/AzureRM.Batch/v2.4.0/Remove-AzureRmBatchApplication.md)

[Remove-AzureRmBatchApplicationPackage](xref:ResourceManager/AzureRM.Batch/v2.4.0/Remove-AzureRmBatchApplicationPackage.md)

[Set-AzureRmBatchApplication](xref:ResourceManager/AzureRM.Batch/v2.4.0/Set-AzureRmBatchApplication.md)


