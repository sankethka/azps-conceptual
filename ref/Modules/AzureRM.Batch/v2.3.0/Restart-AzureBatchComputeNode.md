---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
ms.assetid: 029361F0-C4E9-4948-9EBA-BFBD1B029909
online version: 
schema: 2.0.0
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.3.0/Restart-AzureBatchComputeNode.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.3.0/Restart-AzureBatchComputeNode.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.3.0/Restart-AzureBatchComputeNode.md
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

# Restart-AzureBatchComputeNode

## SYNOPSIS
Reboots the specified compute node.

## SYNTAX

### Id (Default)
```
Restart-AzureBatchComputeNode [-PoolId] <String> [-Id] <String> [[-RebootOption] <ComputeNodeRebootOption>]
 -BatchContext <BatchAccountContext> [<CommonParameters>]
```

### InputObject
```
Restart-AzureBatchComputeNode [[-ComputeNode] <PSComputeNode>] [[-RebootOption] <ComputeNodeRebootOption>]
 -BatchContext <BatchAccountContext> [<CommonParameters>]
```

## DESCRIPTION
The **Restart-AzureBatchComputeNode** cmdlet reboots the specified compute node.

## EXAMPLES

### Example 1: Restart a compute node
```
PS C:\>Restart-AzureBatchComputeNode -PoolId "MyPool" -Id "tvm-3257026573_2-20150813t200938z" -BatchContext $Context
```

This command reboots the compute node with the ID "tvm-3257026573_2-20150813t200938z" in the pool MyPool.

### Example 2: Restart every compute node in a pool
```
PS C:\>Get-AzureBatchComputeNode -PoolId "MyPool" -BatchContext $Context | Restart-AzureBatchComputeNode -BatchContext $Context
```

This command reboots every compute node in the pool MyPool.

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

### -ComputeNode
Specifies the **PSComputeNode** object that represents the compute node to reboot.

```yaml
Type: PSComputeNode
Parameter Sets: InputObject
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Id
Specifies the ID of the compute node to reboot.

```yaml
Type: String
Parameter Sets: Id
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PoolId
Specifies the ID of the pool that contains the compute node.

```yaml
Type: String
Parameter Sets: Id
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RebootOption
Specifies when to reboot the node and what to do with currently running tasks.
The default is Requeue.

```yaml
Type: ComputeNodeRebootOption
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
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

[Get-AzureBatchComputeNode](xref:ResourceManager/AzureRM.Batch/v2.3.0/Get-AzureBatchComputeNode.md)

[Reset-AzureBatchComputeNode](xref:ResourceManager/AzureRM.Batch/v2.3.0/Reset-AzureBatchComputeNode.md)

[Azure Batch Cmdlets](xref:ResourceManager/AzureRM.Batch/v2.3.0/AzureRM.Batch.md)


