---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
ms.assetid: E655684D-9601-4A0B-BB09-EFB787EB2B1B
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.4.0/Get-AzureBatchJobStatistics.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.4.0/Get-AzureBatchJobStatistics.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.4.0/Get-AzureBatchJobStatistics.md
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

# Get-AzureBatchJobStatistics

## SYNOPSIS
Gets job summary statistics for a Batch account.

## SYNTAX

```
Get-AzureBatchJobStatistics -BatchContext <BatchAccountContext> [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureBatchJobStatistics** cmdlet gets lifetime summary statistics for all of the jobs in an Azure Batch account.
Statistics are aggregated across all jobs that have ever existed in the account, from account creation to the last update time of the statistics.

## EXAMPLES

### Example 1: Get summary statistics for all jobs
```
PS C:\>Get-AzureBatchJobStatistics -BatchContext $Context
FailedTaskCount    : 330
KernelCpuTime      : 00:24:31.8440000
LastUpdateTime     : 5/16/2016 6:00:00 PM
ReadIOGiB          : 38.1271341182292
ReadIOps           : 26546054
StartTime          : 11/3/2015 9:47:14 PM
SucceededTaskCount : 766
TaskRetryCount     : 0
Url                : https://accountname.westus.batch.azure.com/lifetimejobstats
UserCpuTime        : 20:55:50.3200000
WaitTime           : 03:54:49.8530000
WallClockTime      : 20:55:50.3200000
WriteIOGiB         : 0.159623090177774
WriteIOps          : 146946
```

The first command creates an object reference to the account keys for the batch account named ContosoBatchAccount by using **Get-AzureRmBatchAccountKeys**.
The command stores this object reference in the $Context variable.

The second command gets the summary statistics for all of the jobs.
The command uses the $Context value from the first command.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### PSJobStatistics

## NOTES

## RELATED LINKS

[Get-AzureRmBatchAccountKeys](xref:ResourceManager/AzureRM.Batch/v2.4.0/Get-AzureRmBatchAccountKeys.md)

[Get-AzureBatchPoolStatistics](xref:ResourceManager/AzureRM.Batch/v2.4.0/Get-AzureBatchPoolStatistics.md)

[Get-AzureBatchPoolUsageMetrics](xref:ResourceManager/AzureRM.Batch/v2.4.0/Get-AzureBatchPoolUsageMetrics.md)


