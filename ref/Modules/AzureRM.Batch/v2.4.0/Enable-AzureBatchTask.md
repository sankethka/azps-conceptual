---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
ms.assetid: 67FB5D02-4F4B-4119-B3AC-0D205247253E
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.4.0/Enable-AzureBatchTask.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.4.0/Enable-AzureBatchTask.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.4.0/Enable-AzureBatchTask.md
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

# Enable-AzureBatchTask

## SYNOPSIS
Reactivates a task.

## SYNTAX

### Id
```
Enable-AzureBatchTask [-JobId] <String> [-Id] <String> -BatchContext <BatchAccountContext> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### InputObject
```
Enable-AzureBatchTask [-Task] <PSCloudTask> -BatchContext <BatchAccountContext> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The **Enable-AzureBatchTask** cmdlet reactivates a task.
If a task has exhausted its retry count, this cmdlet nevertheless enables it to run.

## EXAMPLES

### Example 1: Reactivate a task
```
PS C:\>Enable-AzureBatchTask -JobId "Job7" -Id "Task2" -BatchContext $Context
```

This command reactivates the task Task2 in job Job7.

### Example 2: Reactivate a task by using the pipeline
```
PS C:\>Get-AzureBatchTask -JobId "Job8" -Id "Task3" -BatchContext $Context | Enable-AzureBatchTask -BatchContext $Context
```

This command gets the Batch task that has the ID Task3 in the job that has the ID Job8 by using the Get-AzureBatchTask cmdlet.
The command passes that task to the current cmdlet by using the pipeline operator.
The command reactivates that task.

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
Specifies the ID of the task to reactivate.

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
Specifies the task that this cmdlet reactivates.
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

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureRmBatchAccountKeys](xref:ResourceManager/AzureRM.Batch/v2.4.0/Get-AzureRmBatchAccountKeys.md)

[Get-AzureBatchTask](xref:ResourceManager/AzureRM.Batch/v2.4.0/Get-AzureBatchTask.md)

[New-AzureBatchTask](xref:ResourceManager/AzureRM.Batch/v2.4.0/New-AzureBatchTask.md)

[Remove-AzureBatchTask](xref:ResourceManager/AzureRM.Batch/v2.4.0/Remove-AzureBatchTask.md)

[Set-AzureBatchTask](xref:ResourceManager/AzureRM.Batch/v2.4.0/Set-AzureBatchTask.md)

[Stop-AzureBatchTask](xref:ResourceManager/AzureRM.Batch/v2.4.0/Stop-AzureBatchTask.md)


