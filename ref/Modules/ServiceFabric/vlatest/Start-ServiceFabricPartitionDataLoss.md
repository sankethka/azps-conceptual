---
external help file: Microsoft.ServiceFabric.Powershell.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: F83D7B99-CFDC-4A95-A2C7-3CD33925FBAA
updated_at: 11/3/2016 5:06 PM
ms.date: 11/3/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/master/Service-Fabric-cmdlets/ServiceFabric/vlatest/Start-ServiceFabricPartitionDataLoss.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/master/Service-Fabric-cmdlets/ServiceFabric/vlatest/Start-ServiceFabricPartitionDataLoss.md
gitcommit: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/79292df3c325e2a04987a559a1141637740ddd4c/Service-Fabric-cmdlets/ServiceFabric/vlatest/Start-ServiceFabricPartitionDataLoss.md
ms.topic: reference
ms.technology: Azure Powershell
author: oanapl
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: vipulm
open_to_public_contributors: False
ms.service: service-fabric
---

# Start-ServiceFabricPartitionDataLoss

## SYNOPSIS
Starts to perform a data loss test on a partition.

## SYNTAX

### PartitionId
```
Start-ServiceFabricPartitionDataLoss -OperationId <Guid> -DataLossMode <DataLossMode> -PartitionId <Guid>
 -ServiceName <Uri> [-TimeoutSec <Int32>] [<CommonParameters>]
```

### ServiceNamePartitionUniformedInt
```
Start-ServiceFabricPartitionDataLoss -OperationId <Guid> -DataLossMode <DataLossMode> -ServiceName <Uri>
 [-PartitionKindUniformInt64] -PartitionKey <String> [-TimeoutSec <Int32>] [<CommonParameters>]
```

### ServiceNameRandomPartition
```
Start-ServiceFabricPartitionDataLoss -OperationId <Guid> -DataLossMode <DataLossMode> -ServiceName <Uri>
 [-TimeoutSec <Int32>] [<CommonParameters>]
```

### ServiceNamePartitionSingleton
```
Start-ServiceFabricPartitionDataLoss -OperationId <Guid> -DataLossMode <DataLossMode> -ServiceName <Uri>
 [-PartitionKindSingleton] [-TimeoutSec <Int32>] [<CommonParameters>]
```

### ServiceNamePartitionNamed
```
Start-ServiceFabricPartitionDataLoss -OperationId <Guid> -DataLossMode <DataLossMode> -ServiceName <Uri>
 [-PartitionKindNamed] -PartitionKey <String> [-TimeoutSec <Int32>] [<CommonParameters>]
```

## DESCRIPTION
The **Start-ServiceFabricPartitionDataLoss** cmdlet initiates an operation to perform a data loss test on a stateful service partition in Azure Service Fabric.
To run this cmdlet, **FaultAnalysisService** must be enabled.

Run this cmdlet to perform a data loss test only for partitions for stateful services.
Do not use this cmdlet to perform a data loss test for system services.

You can check the progress of the operation by using the [Get-ServiceFabricPartitionDataLossProgress](./Get-ServiceFabricPartitionDataLossProgress) cmdlet.

After you start **Start-ServiceFabricPartitionDataLoss**, you cannot reverse it.  Calling [Stop-ServiceFabricTestCommand](./Stop-ServiceFabricTestCommand.md) only stops execution and cleans up the internal system state; it does not restore data if the command has progressed far enough to cause data loss.

## EXAMPLES

### Example 1: Start a data loss test for a service by partition ID
```
PS C:\>Start-ServiceFabricPartitionDataLoss -OperationId d3f12b09-6a90-4745-a4fc-3f92149a7419 -DataLossMode FullDataLoss -PartitionId 67e2c139-ccf0-4562-9f2b-bf35e4c2abd4 -ServiceName "fabric:/ContosoApp/ContosoService"
```

This command starts a data loss test command for all replicas of the service named fabric:/ContosoApp/ContosoService in the partition that has the ID 67e2c139-ccf0-4562-9f2b-bf35e4c2abd4.
Specify a unique GUID for the *OperationId* parameter.
You can use this ID to check the progress of the restart operation.

## PARAMETERS

### -DataLossMode
Specifies the data loss mode for the test command.
The acceptable values for this parameter are:

- PartialDataLoss.
Only a quorum of replicas are removed.
**OnDataLoss** is triggered for the partition, but actual data loss depends on presence of inflight replication.
- FullDataLoss.
All replicas are removed.
All data is lost and **OnDataLoss** is triggered.

```yaml
Type: DataLossMode
Parameter Sets: (All)
Aliases:
Accepted values: Invalid, PartialDataLoss, FullDataLoss

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OperationId
Specifies a unique identifier for this operation.
Specify a unique value.
You can check the progress of the operation by using this ID and **Get-ServiceFabricPartitionDataLossProgress**.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PartitionId
Specifies the ID of the Service Fabric partition for which this cmdlet starts a data loss test.

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
Specifies the key of the Service Fabric partition for which this cmdlet starts a data loss test.

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
Indicates that the Service Fabric partition for which this cmdlet starts a data loss test is a Named partition.

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
Indicates that the Service Fabric partition for which this cmdlet starts a data loss test is a singleton partition.

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
Indicates that the Service Fabric partition for which this cmdlet starts a data loss test is a UniformInt64 partition.

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

### -ServiceName
Specifies the Uniform Resource Identifier (URI) of a Service Fabric service.

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

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-ServiceFabricPartitionDataLossProgress](xref:ServiceFabric/vlatest/Get-ServiceFabricPartitionDataLossProgress.md)

[Invoke-ServiceFabricPartitionDataLoss](xref:ServiceFabric/vlatest/Invoke-ServiceFabricPartitionDataLoss.md)
