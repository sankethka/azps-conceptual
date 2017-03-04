---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: B0208B28-A4A5-4571-B240-023F5FED22C7
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.2.0/Remove-AzureRmBatchApplication.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.2.0/Remove-AzureRmBatchApplication.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.2.0/Remove-AzureRmBatchApplication.md
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

# Remove-AzureRmBatchApplication

## SYNOPSIS
Deletes an application from a Batch account.

## SYNTAX

```
Remove-AzureRmBatchApplication [-AccountName] <String> [-ResourceGroupName] <String> [-ApplicationId] <String>
 [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureRmBatchApplication** cmdlet deletes an application from an Azure Batch account.

## EXAMPLES

### Example 1: Delete an application from a Batch account
```
PS C:\>Remove-AzureRmBatchApplication -AccountName "ContosoBatch" -ResourceGroupName "ContosoBatchGroup" -ApplicationId "Litware"
```

This command deletes the Litware application from the ContosoBatch account.
The command fails if the application contains any packages.

## PARAMETERS

### -AccountName
Specifies the name of the Batch account from which this cmdlet removes an application.

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

[Get-AzureRmBatchApplication](xref:ResourceManager/AzureRM.Batch/v2.2.0/Get-AzureRmBatchApplication.md)

[Get-AzureRmBatchApplicationPackage](xref:ResourceManager/AzureRM.Batch/v2.2.0/Get-AzureRmBatchApplicationPackage.md)

[New-AzureRmBatchApplication](xref:ResourceManager/AzureRM.Batch/v2.2.0/New-AzureRmBatchApplication.md)

[New-AzureRmBatchApplicationPackage](xref:ResourceManager/AzureRM.Batch/v2.2.0/New-AzureRmBatchApplicationPackage.md)

[Remove-AzureRmBatchApplicationPackage](xref:ResourceManager/AzureRM.Batch/v2.2.0/Remove-AzureRmBatchApplicationPackage.md)

[Set-AzureRmBatchApplication](xref:ResourceManager/AzureRM.Batch/v2.2.0/Set-AzureRmBatchApplication.md)


