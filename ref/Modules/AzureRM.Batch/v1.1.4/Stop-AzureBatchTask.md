---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: E7831067-35C5-404A-BFA5-07805DF0725A
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v1.1.4/Stop-AzureBatchTask.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v1.1.4/Stop-AzureBatchTask.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v1.1.4/Stop-AzureBatchTask.md
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

# Stop-AzureBatchTask

## SYNOPSIS
Stops a Batch task.

## SYNTAX

### Id
```
Stop-AzureBatchTask [-JobId] <String> [-Id] <String> -BatchContext <BatchAccountContext> [<CommonParameters>]
```

### InputObject
```
Stop-AzureBatchTask [-Task] <PSCloudTask> -BatchContext <BatchAccountContext> [<CommonParameters>]
```

## DESCRIPTION
The **Stop-AzureBatchTask** cmdlet stops an Azure Batch task.

## EXAMPLES

### Example 1: Delete a Batch task by ID
```
PS C:\>Stop-AzureBatchTask -JobId "Job-000001" -Id "Task23" -BatchContext $Context
```

This command stops a task that has the ID Task23 under the job that has the ID Job-000001.
The command prompts you for confirmation.
Use the Get-AzureRmBatchAccountKeys cmdlet to assign a context to the $Context variable.

### Example 2: Stop a Batch task by using the pipeline
```
PS C:\>Get-AzureBatchTask -JobId "Job-000001" -Id "Task26" -BatchContext $Context | Stop-AzureBatchTask -BatchContext $Context
```

This command gets the Batch task that has the ID Task26 in the job that has the ID Job-000001 by using the Get-AzureBatchTask cmdlet.
The command passes that task to the current cmdlet by using the pipeline operator.
The command stops that task.

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
Specifies the ID of the task that this cmdlet stops.

```yaml
Type: String
Parameter Sets: Id
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -JobId
Specifies the ID of the job that contains the task.

```yaml
Type: String
Parameter Sets: Id
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Task
Specifies the task that this cmdlet stops.
To obtain a **PSCloudTask** object, use the Get-AzureBatchTask cmdlet.

```yaml
Type: PSCloudTask
Parameter Sets: InputObject
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

[Get-AzureBatchTask](xref:ResourceManager/AzureRM.Batch/v1.1.4/Get-AzureBatchTask.md)

[New-AzureBatchTask](xref:ResourceManager/AzureRM.Batch/v1.1.4/New-AzureBatchTask.md)

[Remove-AzureBatchTask](xref:ResourceManager/AzureRM.Batch/v1.1.4/Remove-AzureBatchTask.md)

[Azure Batch Cmdlets](xref:ResourceManager/AzureRM.Batch/v1.1.4/AzureRM.Batch.md)


