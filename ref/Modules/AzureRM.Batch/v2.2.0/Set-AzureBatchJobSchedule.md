---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 7ECC5CC6-076F-4A22-9FAD-1D6CC3B743F4
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.2.0/Set-AzureBatchJobSchedule.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.2.0/Set-AzureBatchJobSchedule.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.2.0/Set-AzureBatchJobSchedule.md
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

# Set-AzureBatchJobSchedule

## SYNOPSIS
Sets a job schedule.

## SYNTAX

```
Set-AzureBatchJobSchedule [-JobSchedule] <PSCloudJobSchedule> -BatchContext <BatchAccountContext>
 [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureBatchJobSchedule** cmdlet sets a job schedule in the Azure Batch service.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -BatchContext
Specifies the **BatchAccountContext** instance that this cmdlet uses to interact with the Batch service.
To obtain a **BatchAccountContext** object that contains access keys for your subscription, use the Get-AzureRmBatchAccountKeys cmdlet.

```yaml
Type: BatchAccountContext
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -JobSchedule
Specifies a **PSCloudJobSchedule** object that represents a job schedule.
To obtain a **PSCloudJobSchedule** object, use the Get-AzureBatchJobSchedule cmdlet.

```yaml
Type: PSCloudJobSchedule
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Disable-AzureBatchJobSchedule](xref:ResourceManager/AzureRM.Batch/v2.2.0/Disable-AzureBatchJobSchedule.md)

[Enable-AzureBatchJobSchedule](xref:ResourceManager/AzureRM.Batch/v2.2.0/Enable-AzureBatchJobSchedule.md)

[Get-AzureBatchJobSchedule](xref:ResourceManager/AzureRM.Batch/v2.2.0/Get-AzureBatchJobSchedule.md)

[New-AzureBatchJobSchedule](xref:ResourceManager/AzureRM.Batch/v2.2.0/New-AzureBatchJobSchedule.md)

[Remove-AzureBatchJobSchedule](xref:ResourceManager/AzureRM.Batch/v2.2.0/Remove-AzureBatchJobSchedule.md)

[Stop-AzureBatchJobSchedule](xref:ResourceManager/AzureRM.Batch/v2.2.0/Stop-AzureBatchJobSchedule.md)


