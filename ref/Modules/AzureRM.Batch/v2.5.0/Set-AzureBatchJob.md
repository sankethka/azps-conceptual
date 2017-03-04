---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
ms.assetid: 75483BC7-440A-437B-9EDE-D270D87CF3C5
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.5.0/Set-AzureBatchJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.5.0/Set-AzureBatchJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.5.0/Set-AzureBatchJob.md
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

# Set-AzureBatchJob

## SYNOPSIS
Updates a Batch job.

## SYNTAX

```
Set-AzureBatchJob [-Job] <PSCloudJob> -BatchContext <BatchAccountContext> [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureBatchJob** cmdlet updates an Azure Batch job.
Use the Get-AzureBatchJob cmdlet to get a **PSCloudJob** object.
Modify the properties of that object, and then use the current cmdlet to commit your changes to the Batch service.

## EXAMPLES

### Example 1: Update a job
```
PS C:\>$Job = Get-AzureBatchJob -Id "Job17" -BatchContext $Context
PS C:\> $Job.Priority = 1
PS C:\> Set-AzureBatchJob -Job $Job -BatchContext $Context
```

The first command gets a pool by using **Get-AzureBatchJob**, and then stores it in the $Job variable.

The second command modifies the priority specification on the $Job object.

The final command updates the Batch service to match the local object in $Job.

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

### -Job
Specifies a **PSCloudJob** to which this cmdlet updates the Batch service.

```yaml
Type: PSCloudJob
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

[Disable-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v2.5.0/Disable-AzureBatchJob.md)

[Enable-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v2.5.0/Enable-AzureBatchJob.md)

[Get-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v2.5.0/Get-AzureBatchJob.md)

[Get-AzureRmBatchAccountKeys](xref:ResourceManager/AzureRM.Batch/v2.5.0/Get-AzureRmBatchAccountKeys.md)

[New-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v2.5.0/New-AzureBatchJob.md)

[Remove-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v2.5.0/Remove-AzureBatchJob.md)

[Stop-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v2.5.0/Stop-AzureBatchJob.md)

[Azure Batch Cmdlets](xref:ResourceManager/AzureRM.Batch/v2.5.0/AzureRM.Batch.md)


