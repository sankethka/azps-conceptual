---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
ms.assetid: 7C79BFF1-41E1-472D-AF67-1C3B39AB7548
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.4.0/Enable-AzureBatchJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.4.0/Enable-AzureBatchJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.4.0/Enable-AzureBatchJob.md
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

# Enable-AzureBatchJob

## SYNOPSIS
Enables a Batch job.

## SYNTAX

```
Enable-AzureBatchJob [-Id] <String> -BatchContext <BatchAccountContext> [<CommonParameters>]
```

## DESCRIPTION
The **Enable-AzureBatchJob** cmdlet enables an Azure Batch job.
After you enable a job, new tasks can run.

## EXAMPLES

### Example 1: Enable a Batch job
```
PS C:\>Enable-AzureBatchJob -Id "Job-000001" -BatchContext $Context
```

This command enables the job that has the ID Job-000001.
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
Specifies the ID of the job that this cmdlet enables.

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

[Disable-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v2.4.0/Disable-AzureBatchJob.md)

[Get-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v2.4.0/Get-AzureBatchJob.md)

[New-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v2.4.0/New-AzureBatchJob.md)

[Remove-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v2.4.0/Remove-AzureBatchJob.md)

[Stop-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v2.4.0/Stop-AzureBatchJob.md)

[Azure Batch Cmdlets](xref:ResourceManager/AzureRM.Batch/v2.4.0/AzureRM.Batch.md)


