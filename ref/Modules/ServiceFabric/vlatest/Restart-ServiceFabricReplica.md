---
external help file: Microsoft.ServiceFabric.Powershell.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 0210C19B-CE2B-4713-9548-515D7DD44BB1
updated_at: 11/3/2016 5:06 PM
ms.date: 11/3/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/master/Service-Fabric-cmdlets/ServiceFabric/vlatest/Restart-ServiceFabricReplica.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/master/Service-Fabric-cmdlets/ServiceFabric/vlatest/Restart-ServiceFabricReplica.md
gitcommit: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/79292df3c325e2a04987a559a1141637740ddd4c/Service-Fabric-cmdlets/ServiceFabric/vlatest/Restart-ServiceFabricReplica.md
ms.topic: reference
ms.technology: Azure Powershell
author: oanapl
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: vipulm
open_to_public_contributors: False
ms.service: service-fabric
---

# Restart-ServiceFabricReplica

## SYNOPSIS
Restarts a Service Fabric replica.

## SYNTAX

### ByNodeName
```
Restart-ServiceFabricReplica [-NodeName] <String> [-PartitionId] <Guid>
 [-CommandCompletionMode <CompletionMode>] [-TimeoutSec <Int32>] -ReplicaOrInstanceId <Int64>
 [<CommonParameters>]
```

### PartitionId
```
Restart-ServiceFabricReplica [-PartitionId] <Guid> -ServiceName <Uri> [-CommandCompletionMode <CompletionMode>]
 [-TimeoutSec <Int32>] [<CommonParameters>]
```

### PartitionIdReplicaPrimary
```
Restart-ServiceFabricReplica [-PartitionId] <Guid> -ServiceName <Uri> [-CommandCompletionMode <CompletionMode>]
 [-TimeoutSec <Int32>] [-ReplicaKindPrimary] [<CommonParameters>]
```

### PartitionIdReplicaRandomSecondary
```
Restart-ServiceFabricReplica [-PartitionId] <Guid> -ServiceName <Uri> [-CommandCompletionMode <CompletionMode>]
 [-TimeoutSec <Int32>] [-ReplicaKindRandomSecondary] [<CommonParameters>]
```

### PartitionIdReplicaId
```
Restart-ServiceFabricReplica [-PartitionId] <Guid> -ServiceName <Uri> [-CommandCompletionMode <CompletionMode>]
 [-TimeoutSec <Int32>] -ReplicaOrInstanceId <Int64> [<CommonParameters>]
```

### ServiceNamePartitionSingletonReplicaId
```
Restart-ServiceFabricReplica -ServiceName <Uri> [-PartitionKindSingleton]
 [-CommandCompletionMode <CompletionMode>] [-TimeoutSec <Int32>] -ReplicaOrInstanceId <Int64>
 [<CommonParameters>]
```

### ServiceNamePartitionNamedReplicaId
```
Restart-ServiceFabricReplica -ServiceName <Uri> [-PartitionKindNamed] -PartitionKey <String>
 [-CommandCompletionMode <CompletionMode>] [-TimeoutSec <Int32>] -ReplicaOrInstanceId <Int64>
 [<CommonParameters>]
```

### ServiceNamePartitionNamedReplicaPrimary
```
Restart-ServiceFabricReplica -ServiceName <Uri> [-PartitionKindNamed] -PartitionKey <String>
 [-CommandCompletionMode <CompletionMode>] [-TimeoutSec <Int32>] [-ReplicaKindPrimary] [<CommonParameters>]
```

### ServiceName
```
Restart-ServiceFabricReplica -ServiceName <Uri> [-CommandCompletionMode <CompletionMode>] [-TimeoutSec <Int32>]
 [<CommonParameters>]
```

### ServiceNamePartitionSingleton
```
Restart-ServiceFabricReplica -ServiceName <Uri> [-PartitionKindSingleton]
 [-CommandCompletionMode <CompletionMode>] [-TimeoutSec <Int32>] [<CommonParameters>]
```

### ServiceNamePartitionNamed
```
Restart-ServiceFabricReplica -ServiceName <Uri> [-PartitionKindNamed] -PartitionKey <String>
 [-CommandCompletionMode <CompletionMode>] [-TimeoutSec <Int32>] [<CommonParameters>]
```

### ServiceNamePartitionUniformedInt
```
Restart-ServiceFabricReplica -ServiceName <Uri> [-PartitionKindUniformInt64] -PartitionKey <String>
 [-CommandCompletionMode <CompletionMode>] [-TimeoutSec <Int32>] [<CommonParameters>]
```

### ServiceNamePartitionSingletonReplicaRandomSecondary
```
Restart-ServiceFabricReplica -ServiceName <Uri> [-PartitionKindSingleton]
 [-CommandCompletionMode <CompletionMode>] [-TimeoutSec <Int32>] [-ReplicaKindRandomSecondary]
 [<CommonParameters>]
```

### ServiceNamePartitionNamedReplicaRandomSecondary
```
Restart-ServiceFabricReplica -ServiceName <Uri> [-PartitionKindNamed] -PartitionKey <String>
 [-CommandCompletionMode <CompletionMode>] [-TimeoutSec <Int32>] [-ReplicaKindRandomSecondary]
 [<CommonParameters>]
```

### ServiceNamePartitionUniformedIntReplicaRandomSecondary
```
Restart-ServiceFabricReplica -ServiceName <Uri> [-PartitionKindUniformInt64] -PartitionKey <String>
 [-CommandCompletionMode <CompletionMode>] [-TimeoutSec <Int32>] [-ReplicaKindRandomSecondary]
 [<CommonParameters>]
```

### ServiceNamePartitionSingletonReplicaPrimary
```
Restart-ServiceFabricReplica -ServiceName <Uri> [-PartitionKindSingleton]
 [-CommandCompletionMode <CompletionMode>] [-TimeoutSec <Int32>] [-ReplicaKindPrimary] [<CommonParameters>]
```

### ServiceNameReplicaId
```
Restart-ServiceFabricReplica -ServiceName <Uri> [-CommandCompletionMode <CompletionMode>] [-TimeoutSec <Int32>]
 -ReplicaOrInstanceId <Int64> [<CommonParameters>]
```

### ServiceNamePartitionUniformedIntReplicaPrimary
```
Restart-ServiceFabricReplica -ServiceName <Uri> [-PartitionKindUniformInt64] -PartitionKey <String>
 [-CommandCompletionMode <CompletionMode>] [-TimeoutSec <Int32>] [-ReplicaKindPrimary] [<CommonParameters>]
```

### ServiceNamePartitionUniformedIntReplicaId
```
Restart-ServiceFabricReplica -ServiceName <Uri> [-PartitionKindUniformInt64] -PartitionKey <String>
 [-CommandCompletionMode <CompletionMode>] [-TimeoutSec <Int32>] -ReplicaOrInstanceId <Int64>
 [<CommonParameters>]
```

### ServiceNameReplicaPrimary
```
Restart-ServiceFabricReplica -ServiceName <Uri> [-CommandCompletionMode <CompletionMode>] [-TimeoutSec <Int32>]
 [-ReplicaKindPrimary] [<CommonParameters>]
```

### ServiceNameReplicaRandomSecondary
```
Restart-ServiceFabricReplica -ServiceName <Uri> [-CommandCompletionMode <CompletionMode>] [-TimeoutSec <Int32>]
 [-ReplicaKindRandomSecondary] [<CommonParameters>]
```

## DESCRIPTION
The **Restart-ServiceFabricReplica** cmdlet simulates a service replica failure by restarting a persisted service replica, closing the replica, and then reopening it.
Use this cmdlet to test your service for problems along the replica reopen path.
This cmdlet helps simulate the report fault temporary path through client APIs.
This cmdlet is only valid for replicas that belong to stateful persisted services.

Before you perform any operation on a Service Fabric cluster, establish a connection to the cluster by using the [Connect-ServiceFabricCluster](./Connect-ServiceFabricCluster.md) cmdlet.

## EXAMPLES

### Example 1: Restart a replica
```
PS C:\>Restart-ServiceFabricReplica -NodeName "Node07" -PartitionId 869dd2e9-fdda-42a5-ad96-4b71c795dfd3 -ReplicaOrInstanceId 12345098480948
```

This command restarts the replica on Node07 on the specified partition.

### Example 2: Restart a primary replica
```
PS C:\>Restart-ServiceFabricReplica -ReplicaKindPrimary -PartitionKindNamed -PartitionKey "Partition1" -ServiceName fabric:/App/Service
```

This command restarts a primary replica on the specified partition.

## PARAMETERS

### -CommandCompletionMode
Specifies whether the action waits for the Restart operation to complete.

```yaml
Type: CompletionMode
Parameter Sets: (All)
Aliases:
Accepted values: Invalid, DoNotVerify, Verify

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NodeName
Specifies the name of a Service Fabric node.
The cmdlet restarts a replica deployed on the node that you specify.

```yaml
Type: String
Parameter Sets: ByNodeName
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PartitionId
Specifies the ID of the partition for which to restart the replica.

```yaml
Type: Guid
Parameter Sets: ByNodeName, PartitionId, PartitionIdReplicaPrimary, PartitionIdReplicaRandomSecondary, PartitionIdReplicaId
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PartitionKey
Specifies the key of the partition for which the replica is restarted.

```yaml
Type: String
Parameter Sets: ServiceNamePartitionNamedReplicaId, ServiceNamePartitionNamedReplicaPrimary, ServiceNamePartitionNamed, ServiceNamePartitionUniformedInt, ServiceNamePartitionNamedReplicaRandomSecondary, ServiceNamePartitionUniformedIntReplicaRandomSecondary, ServiceNamePartitionUniformedIntReplicaPrimary, ServiceNamePartitionUniformedIntReplicaId
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PartitionKindNamed
Indicates that this cmdlet restarts a replica on a named partition.

```yaml
Type: SwitchParameter
Parameter Sets: ServiceNamePartitionNamedReplicaId, ServiceNamePartitionNamedReplicaPrimary, ServiceNamePartitionNamed, ServiceNamePartitionNamedReplicaRandomSecondary
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PartitionKindSingleton
Indicates that this cmdlet restarts a replica on a singleton partition.

```yaml
Type: SwitchParameter
Parameter Sets: ServiceNamePartitionSingletonReplicaId, ServiceNamePartitionSingleton, ServiceNamePartitionSingletonReplicaRandomSecondary, ServiceNamePartitionSingletonReplicaPrimary
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PartitionKindUniformInt64
Indicates that this cmdlet restarts a replica on a UniformInt64 partition.

```yaml
Type: SwitchParameter
Parameter Sets: ServiceNamePartitionUniformedInt, ServiceNamePartitionUniformedIntReplicaRandomSecondary, ServiceNamePartitionUniformedIntReplicaPrimary, ServiceNamePartitionUniformedIntReplicaId
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ReplicaKindPrimary
Indicates that this cmdlet restarts the replica for the primary replica.

```yaml
Type: SwitchParameter
Parameter Sets: PartitionIdReplicaPrimary, ServiceNamePartitionNamedReplicaPrimary, ServiceNamePartitionSingletonReplicaPrimary, ServiceNamePartitionUniformedIntReplicaPrimary, ServiceNameReplicaPrimary
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ReplicaKindRandomSecondary
Indicates that this cmdlet restarts a replica for a random secondary replica.

```yaml
Type: SwitchParameter
Parameter Sets: PartitionIdReplicaRandomSecondary, ServiceNamePartitionSingletonReplicaRandomSecondary, ServiceNamePartitionNamedReplicaRandomSecondary, ServiceNamePartitionUniformedIntReplicaRandomSecondary, ServiceNameReplicaRandomSecondary
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ReplicaOrInstanceId
Specifies a Service Fabric service replica or instance ID.

```yaml
Type: Int64
Parameter Sets: ByNodeName, PartitionIdReplicaId, ServiceNamePartitionSingletonReplicaId, ServiceNamePartitionNamedReplicaId, ServiceNameReplicaId, ServiceNamePartitionUniformedIntReplicaId
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ServiceName
Specifies the name of a Service Fabric service.

```yaml
Type: Uri
Parameter Sets: PartitionId, PartitionIdReplicaPrimary, PartitionIdReplicaRandomSecondary, PartitionIdReplicaId, ServiceNamePartitionSingletonReplicaId, ServiceNamePartitionNamedReplicaId, ServiceNamePartitionNamedReplicaPrimary, ServiceName, ServiceNamePartitionSingleton, ServiceNamePartitionNamed, ServiceNamePartitionUniformedInt, ServiceNamePartitionSingletonReplicaRandomSecondary, ServiceNamePartitionNamedReplicaRandomSecondary, ServiceNamePartitionUniformedIntReplicaRandomSecondary, ServiceNamePartitionSingletonReplicaPrimary, ServiceNameReplicaId, ServiceNamePartitionUniformedIntReplicaPrimary, ServiceNamePartitionUniformedIntReplicaId, ServiceNameReplicaPrimary, ServiceNameReplicaRandomSecondary
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

### String
Specifies the name of a Service Fabric node.

## OUTPUTS

## NOTES

## RELATED LINKS

[Connect-ServiceFabricCluster](xref:ServiceFabric/vlatest/Connect-ServiceFabricCluster.md)

[Get-ServiceFabricReplica](xref:ServiceFabric/vlatest/Get-ServiceFabricReplica.md)

[Remove-ServiceFabricReplica](xref:ServiceFabric/vlatest/Remove-ServiceFabricReplica.md)
