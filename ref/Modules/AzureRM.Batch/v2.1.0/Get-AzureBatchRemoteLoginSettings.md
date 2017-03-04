---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 3EDFB69C-E7BD-41E4-92C3-5E80375B5880
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.1.0/Get-AzureBatchRemoteLoginSettings.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.1.0/Get-AzureBatchRemoteLoginSettings.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v2.1.0/Get-AzureBatchRemoteLoginSettings.md
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

# Get-AzureBatchRemoteLoginSettings

## SYNOPSIS
Gets remote logon settings for a compute node.

## SYNTAX

### Id (Default)
```
Get-AzureBatchRemoteLoginSettings [-PoolId] <String> [-ComputeNodeId] <String>
 -BatchContext <BatchAccountContext> [<CommonParameters>]
```

### InputObject
```
Get-AzureBatchRemoteLoginSettings [[-ComputeNode] <PSComputeNode>] -BatchContext <BatchAccountContext>
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureBatchRemoteLoginSettings** cmdlet gets remote logon settings for a compute node in a virtual machines infrastructure-based pool.

## EXAMPLES

### Example 1: Get remote logon settings for all nodes in a pool
```
PS C:\>$Context = Get-AzureRmBatchAccountKeys -AccountName "ContosoBatchAccount"
PS C:\> Get-AzureBatchComputeNode -PoolId "ContosoPool" -BatchContext $Context | Get-AzureBatchRemoteLoginSettings -BatchContext $Context
IPAddress       Port
---------       ----
10.214.75.221   50002
10.214.75.221   50001
10.214.75.221   50000
```

The first command gets a batch account context that contains access keys for your subscription by using **Get-AzureRmBatchAccountKeys**.
The command stores the context in the $Context variable to use in the next command.

The second command gets each compute node in the pool that has the ID ContosoPool by using **Get-AzureBatchComputeNode**.
The command passes each computer node to the current cmdlet by using the pipeline operator.
The command gets the remote logon settings for each compute node.

### Example 2: Get remote logon settings for a node
```
PS C:\>$Context = Get-AzureRmBatchAccountKeys -AccountName "ContosoBatchAccount"
PS C:\> Get-AzureBatchRemoteLoginSettings -PoolId "ContosoPool" -ComputeNodeId "tvm-1900272697_1-20150330t205553z" -BatchContext $Context
IPAddress       Port
---------       ----
10.214.75.221   50000
```

The first command gets a batch account context that contains access keys for your subscription, and then stores it in the $Context variable.

The second command gets the remote logon settings for the compute node that has the specified ID in the pool that has the ID ContosoPool.

## PARAMETERS

### -BatchContext
Specifies the **BatchAccountContext** instance that this cmdlet uses to interact with the Batch service.
To obtain a **BatchAccountContext** that contains access keys for your subscription, use the Get-AzureRmBatchAccountKeys cmdlet.

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
Specifies a compute node, as a **PSComputeNode** object, for which this cmdlet gets remote logon settings.
To obtain a compute node object, use the Get-AzureBatchComputeNode cmdlet.

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

### -ComputeNodeId
Specifies the ID of the compute node for which to get the remote logon settings.
for which this cmdlet gets remote logon settings.

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
Specifies the ID of the pool that contains the virtual machine.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### PSRemoteLoginSettings

## NOTES

## RELATED LINKS

[Get-AzureRmBatchAccountKeys](xref:ResourceManager/AzureRM.Batch/v2.1.0/Get-AzureRmBatchAccountKeys.md)

[Get-AzureBatchComputeNode](xref:ResourceManager/AzureRM.Batch/v2.1.0/Get-AzureBatchComputeNode.md)

[Get-AzureBatchRemoteDesktopProtocolFile](xref:ResourceManager/AzureRM.Batch/v2.1.0/Get-AzureBatchRemoteDesktopProtocolFile.md)

[Azure Batch Cmdlets](xref:ResourceManager/AzureRM.Batch/v2.1.0/AzureRM.Batch.md)


