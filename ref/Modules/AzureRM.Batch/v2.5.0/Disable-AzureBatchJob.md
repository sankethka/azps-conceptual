---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
ms.assetid: C831F934-7513-4882-A155-816E56CD9807
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.5.0/Disable-AzureBatchJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.5.0/Disable-AzureBatchJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.5.0/Disable-AzureBatchJob.md
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

# Disable-AzureBatchJob

## SYNOPSIS
Disables a Batch job.

## SYNTAX

```
Disable-AzureBatchJob [-Id] <String> [-DisableJobOption] <DisableJobOption> -BatchContext <BatchAccountContext>
 [<CommonParameters>]
```

## DESCRIPTION
The **Disable-AzureBatchJob** cmdlet disables an Azure Batch job.
After you enable a job, new tasks can run.
Disabled jobs do not run new tasks.
You can enable a disabled job later.

## EXAMPLES

### Example 1: Disable a Batch job
```
PS C:\>Disable-AzureBatchJob -Id "Job-000001" -DisableJobOption "Terminate" -BatchContext $Context
```

This command disables the job that has the ID Job-000001.
The command terminates active tasks for the job.
Use the **Get-AzureRmBatchAccountKeys** cmdlet to assign a context to the $Context variable.

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

### -DisableJobOption
Specifies what to do with active tasks associated with the job that this cmdlet disables.
Valid values are: 

- Requeue 
- Terminate 
- Wait

```yaml
Type: DisableJobOption
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
Specifies the ID of the job that this cmdlet disables.

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

[Enable-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v2.5.0/Enable-AzureBatchJob.md)

[Get-AzureRmBatchAccountKeys](xref:ResourceManager/AzureRM.Batch/v2.5.0/Get-AzureRmBatchAccountKeys.md)

[Get-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v2.5.0/Get-AzureBatchJob.md)

[New-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v2.5.0/New-AzureBatchJob.md)

[Remove-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v2.5.0/Remove-AzureBatchJob.md)

[Stop-AzureBatchJob](xref:ResourceManager/AzureRM.Batch/v2.5.0/Stop-AzureBatchJob.md)

[Azure Batch Cmdlets](xref:ResourceManager/AzureRM.Batch/v2.5.0/AzureRM.Batch.md)


