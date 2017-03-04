---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 49F8E99E-1FF4-4A12-8D0D-2A00F4D43417
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v1.1.4/Stop-AzureBatchJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v1.1.4/Stop-AzureBatchJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v1.1.4/Stop-AzureBatchJob.md
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

# Stop-AzureBatchJob

## SYNOPSIS
Stops a Batch job.

## SYNTAX

```
Stop-AzureBatchJob [-Id] <String> [[-TerminateReason] <String>] -BatchContext <BatchAccountContext>
 [<CommonParameters>]
```

## DESCRIPTION
The **Stop-AzureBatchJob** cmdlet stops an Azure Batch job.
This command marks the job as completed.

## EXAMPLES

### Example 1: Stop a Batch job
```
PS C:\>Stop-AzureBatchJob -Id "Job-000001" -TerminateReason "No more tasks to run" -BatchContext $Context
```

This command stops the job that has the ID Job-000001.
The command specifies a reason that you chose to stop the job.
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
Specifies the ID of the job that this cmdlet stops.

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

### -TerminateReason
Specifies the reason that you decided to stop the job.
This cmdlet stores this text as the **TerminateReason** property of the job.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Disable-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v1.1.4/Disable-AzureBatchJob.md)

[Enable-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v1.1.4/Enable-AzureBatchJob.md)

[Get-AzureRmBatchAccountKeys](xref:ResourceManager/AzureRM.Batch/v1.1.4/Get-AzureRmBatchAccountKeys.md)

[Get-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v1.1.4/Get-AzureBatchJob.md)

[New-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v1.1.4/New-AzureBatchJob.md)

[Remove-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v1.1.4/Remove-AzureBatchJob.md)

[Azure Batch Cmdlets](xref:ResourceManager/AzureRM.Batch/v1.1.4/AzureRM.Batch.md)


