---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
ms.assetid: D1C5B35C-5419-4739-9D57-6C4228E98DAC
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.4.0/Stop-AzureBatchJobSchedule.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.4.0/Stop-AzureBatchJobSchedule.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.4.0/Stop-AzureBatchJobSchedule.md
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

# Stop-AzureBatchJobSchedule

## SYNOPSIS
Stops a Batch job schedule.

## SYNTAX

```
Stop-AzureBatchJobSchedule [-Id] <String> -BatchContext <BatchAccountContext> [<CommonParameters>]
```

## DESCRIPTION
The **Stop-AzureBatchJobSchedule** cmdlet stops an Azure Batch job schedule.

## EXAMPLES

### Example 1: Stop a job schedule
```
PS C:\>Stop-AzureBatchJobSchedule -Id "JobSchedule17" -BatchContext $Context
```

This command stops the job schedule that has the ID JobSchedule17.
Use the Get-AzureRmBatchAccountKeys cmdlet to assign a context to the $Context variable.

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

### -Id
Specifies the ID of the job schedule that this cmdlet stops.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
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

[Disable-AzureBatchJobSchedule](xref:ResourceManager/AzureRM.Batch/v2.4.0/Disable-AzureBatchJobSchedule.md)

[Enable-AzureBatchJobSchedule](xref:ResourceManager/AzureRM.Batch/v2.4.0/Enable-AzureBatchJobSchedule.md)

[Get-AzureRmBatchAccountKeys](xref:ResourceManager/AzureRM.Batch/v2.4.0/Get-AzureRmBatchAccountKeys.md)

[Get-AzureBatchJobSchedule](xref:ResourceManager/AzureRM.Batch/v2.4.0/Get-AzureBatchJobSchedule.md)

[New-AzureBatchJobSchedule](xref:ResourceManager/AzureRM.Batch/v2.4.0/New-AzureBatchJobSchedule.md)

[Remove-AzureBatchJobSchedule](xref:ResourceManager/AzureRM.Batch/v2.4.0/Remove-AzureBatchJobSchedule.md)

[Azure Batch Cmdlets](xref:ResourceManager/AzureRM.Batch/v2.4.0/AzureRM.Batch.md)


