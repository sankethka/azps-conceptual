---
external help file: Microsoft.ServiceFabric.Powershell.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: C6C8C091-9A47-4AB1-B10B-27D0D6D2F7AE
updated_at: 11/3/2016 5:06 PM
ms.date: 11/3/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/master/Service-Fabric-cmdlets/ServiceFabric/vlatest/Restart-ServiceFabricPartition.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/master/Service-Fabric-cmdlets/ServiceFabric/vlatest/Restart-ServiceFabricPartition.md
gitcommit: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/79292df3c325e2a04987a559a1141637740ddd4c/Service-Fabric-cmdlets/ServiceFabric/vlatest/Restart-ServiceFabricPartition.md
ms.topic: reference
ms.technology: Azure Powershell
author: oanapl
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: vipulm
open_to_public_contributors: False
ms.service: service-fabric
---

# Restart-ServiceFabricPartition

## SYNOPSIS
Restarts replicas of a Service Fabric partition to simulate a data center blackout or cluster blackout scenario.

## SYNTAX

### PartitionId
```
Restart-ServiceFabricPartition -RestartPartitionMode <RestartPartitionMode> -PartitionId <Guid>
 -ServiceName <Uri> [-TimeoutSec <Int32>] [<CommonParameters>]
```

### ServiceNamePartitionUniformedInt
```
Restart-ServiceFabricPartition -RestartPartitionMode <RestartPartitionMode> -ServiceName <Uri>
 [-PartitionKindUniformInt64] -PartitionKey <String> [-TimeoutSec <Int32>] [<CommonParameters>]
```

### ServiceNameRandomPartition
```
Restart-ServiceFabricPartition -RestartPartitionMode <RestartPartitionMode> -ServiceName <Uri>
 [-TimeoutSec <Int32>] [<CommonParameters>]
```

### ServiceNamePartitionSingleton
```
Restart-ServiceFabricPartition -RestartPartitionMode <RestartPartitionMode> -ServiceName <Uri>
 [-PartitionKindSingleton] [-TimeoutSec <Int32>] [<CommonParameters>]
```

### ServiceNamePartitionNamed
```
Restart-ServiceFabricPartition -RestartPartitionMode <RestartPartitionMode> -ServiceName <Uri>
 [-PartitionKindNamed] -PartitionKey <String> [-TimeoutSec <Int32>] [<CommonParameters>]
```

## DESCRIPTION
The **Restart-ServiceFabricPartition** cmdlet simulates a data center blackout or cluster blackout scenario by restarting some or all of the replicas of a partition.
For in-memory services, a restart would result in data loss.
For persisted services that restart, no state data should be lost.

Before using this cmdlet, connect to the Service Fabric cluster.

Important note: This cmdlet should not be aborted while running.
Aborting this cmdlet while it is running may leave state behind.
If this cmdlet is aborted while running, [Remove-ServiceFabricTestState](./Remove-ServiceFabricTestState.md) should be invoked to remove state that may have been left behind.

## EXAMPLES

### Example 1: Restart a partition
```
PS C:\>Restart-ServiceFabricPartition -ServiceName fabric:/TestSvc -PartitionKindSingleton -RestartPartitionMode OnlyActiveSecondaries
```

This command restarts the specified partition.

### Example 2: Restart a partition for a specified partition key and partition kind
```
PS C:\>Restart-ServiceFabricPartition -ServiceName fabric:/TestSvc -PartitionKindUniformInt64 -PartitionKey "23" -RestartPartitionMode AllReplicasOrInstances
```

This command restarts the partition with partition key 23.

## PARAMETERS

### -PartitionId
Specifies the ID of the partition to restart.

```yaml
Type: Guid
Parameter Sets: PartitionId
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PartitionKey
Specifies the key of the partition to restart.

```yaml
Type: String
Parameter Sets: ServiceNamePartitionUniformedInt, ServiceNamePartitionNamed
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PartitionKindNamed
Indicates that this cmdlet restarts a named partition.

```yaml
Type: SwitchParameter
Parameter Sets: ServiceNamePartitionNamed
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PartitionKindSingleton
Indicates that this cmdlet restarts a singleton partition.

```yaml
Type: SwitchParameter
Parameter Sets: ServiceNamePartitionSingleton
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PartitionKindUniformInt64
Indicates that this cmdlet restarts a UniformInt64 partition.

```yaml
Type: SwitchParameter
Parameter Sets: ServiceNamePartitionUniformedInt
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RestartPartitionMode
Specifies whether to restart all replicas in the partition or only secondary partitions.

```yaml
Type: RestartPartitionMode
Parameter Sets: (All)
Aliases:
Accepted values: Invalid, AllReplicasOrInstances, OnlyActiveSecondaries

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServiceName
Specifies the name of the service to restart.

```yaml
Type: Uri
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TimeoutSec
Specifies the time-out period, in seconds, for the operation.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Uri
Represents the name of a Service Fabric service.

### System.Guid
Represents the ID of a Service Fabric partition.

## OUTPUTS

### System.Object
This cmdlet returns a **System.Fabric.Testability.RestartPartitionResult** object that represents the operation result.

## NOTES

## RELATED LINKS

[Get-ServiceFabricPartition](xref:ServiceFabric/vlatest/Get-ServiceFabricPartition.md)

[Repair-ServiceFabricPartition](xref:ServiceFabric/vlatest/Repair-ServiceFabricPartition.md)

[Restart-ServiceFabricPartition](xref:ServiceFabric/vlatest/Restart-ServiceFabricPartition.md)
