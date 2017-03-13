---
external help file: Microsoft.ServiceFabric.Powershell.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 59D7C1B2-FE34-4D91-9503-7A95F3443444
updated_at: 11/3/2016 5:06 PM
ms.date: 11/3/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/master/Service-Fabric-cmdlets/ServiceFabric/vlatest/Send-ServiceFabricClusterHealthReport.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/master/Service-Fabric-cmdlets/ServiceFabric/vlatest/Send-ServiceFabricClusterHealthReport.md
gitcommit: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/79292df3c325e2a04987a559a1141637740ddd4c/Service-Fabric-cmdlets/ServiceFabric/vlatest/Send-ServiceFabricClusterHealthReport.md
ms.topic: reference
ms.technology: Azure Powershell
author: oanapl
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: vipulm
open_to_public_contributors: False
ms.service: service-fabric
---

# Send-ServiceFabricClusterHealthReport

## SYNOPSIS
Sends a health report on a Service Fabric cluster.

## SYNTAX

```
Send-ServiceFabricClusterHealthReport -HealthState <HealthState> -SourceId <String> -HealthProperty <String>
 [-Description <String>] [-TimeToLiveSec <Int32>] [-RemoveWhenExpired] [-SequenceNumber <Int64>]
 [-TimeoutSec <Int32>] [<CommonParameters>]
```

## DESCRIPTION
The **Send-ServiceFabricClusterHealthReport** cmdlet sends a health report on a Service Fabric cluster.

The cmdlet sends the report after an interval specified by the *HealthReportSendIntervalInSec* parameter of the [Connect-ServiceFabricCluster](./Connect-ServiceFabricCluster.md) cmdlet.
The cluster connection must be kept alive during this time.
The command is evaluated on the client without reference to running on the health store.
The report may not be applied in health store even if the command returns success.
For example, the health store may reject the report because of an invalid parameter, like a stale sequence number.

To see whether the report was applied in the health store, use the G[Get-ServiceFabricClusterHealth](./Get-ServiceFabricClusterHealth.md) cmdlet and check that the report appears in the HealthEvents section.

To manage Service Fabric clusters, start Windows PowerShell by using the Run as administrator option.
Before you perform any operation on a Service Fabric cluster, establish a connection to the cluster by using the **Connect-ServiceFabricCluster** cmdlet and then the [Get-ServiceFabricClusterConnection](./Get-ServiceFabricClusterConnection.md) cmdlet.

## EXAMPLES

### Example 1: Report Error health report with infinite TTL
```
PS C:\>Send-ServiceFabricClusterHealthReport -SourceId "MyWatchdog" -HealthProperty "Availability" -HealthState Error
```

This command sends a health report on the cluster from the source MyWatchdog.
The health report contains information about the health property **Availability** in an Error health state, with infinite TTL.

### Example 2: Report Warning valid for specified TTL
```
PS C:\>Send-ServiceFabricClusterHealthReport -SourceId "MyWatchdog" -HealthProperty "EnoughNodes" -HealthState Warning -TimeToLiveSec 10 -RemoveWhenExpired -SequenceNumber 1344
```

This command sends a health report on the cluster from the source MyWatchDog.
The health report contains information about the health property **EnoughNodes** in a Warning health state.
The report stays in health store for 10 seconds, after which it is automatically removed.
The command specifies the *SequenceNumber* parameter.
The sequence number must be higher than any previously reported sequence numbers for the same **SourceId** and **Property**, or the report will be rejected due to staleness.

## PARAMETERS

### -Description
Specifies human readable information about the condition that triggered the report.
The *SourceId*, *HealthProperty*, and *HealthState* parameters fully describe the report.

The maximum string length for the description is 4096 characters.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -HealthProperty
Specifies the property of the report.
Together with the *SourceId* parameter, this property uniquely identifies the report.
The report overrides any previous reports with the same values for the *SourceId* and *HealthProperty* parameters on the same entity.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -HealthState
Specifies a **HealthState** object that represents the reported health state.

```yaml
Type: HealthState
Parameter Sets: (All)
Aliases:
Accepted values: Invalid, Ok, Warning, Error, Unknown

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -RemoveWhenExpired
Indicates that the report is removed from the health store when it expires.
If you do not specify this parameter, the entity is considered in Error state when the report time to live expires.
The reports that are removed when expired can be used for conditions that are only valid for a period of time or for clearing reports from Health Store.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SequenceNumber
Specifies the sequence number associated with the health report.
If you do not specify a value for this parameter, the sequence number is set automatically.
If you specify a sequence number, that value must be higher than any previous sequence number set on the same *SourceId* and *HealthProperty*, or the report will be rejected due to staleness.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SourceId
Specifies the identifier of the source that triggered the report.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TimeToLiveSec
Specifies the Time to Live (TTL) of the report in seconds.
When the TTL expires, the report is removed from the health store if the *RemoveWhenExpired* parameter is specified.
Otherwise, the entity is evaluated at Error because of the expired report.
The default value is Infinite.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
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

### String, System.Fabric.HealthState
This cmdlet accepts the source ID and health property as a string, or a **HealthState** value that represents the health state of the report.

## OUTPUTS

### None
This cmdlet does not return any output.

## NOTES

## RELATED LINKS

[Connect-ServiceFabricCluster](xref:ServiceFabric/vlatest/Connect-ServiceFabricCluster.md)

[Get-ServiceFabricClusterConnection](xref:ServiceFabric/vlatest/Get-ServiceFabricClusterConnection.md)

[Get-ServiceFabricClusterHealth](xref:ServiceFabric/vlatest/Get-ServiceFabricClusterHealth.md)

[Get-ServiceFabricApplicationHealth](xref:ServiceFabric/vlatest/Get-ServiceFabricApplicationHealth.md)
