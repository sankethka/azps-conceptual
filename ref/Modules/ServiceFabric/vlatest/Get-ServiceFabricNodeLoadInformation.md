---
external help file: Microsoft.ServiceFabric.Powershell.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 22F9FF8A-25DE-423C-9395-ED584B0D6BC3
updated_at: 11/2/2016 6:01 PM
ms.date: 11/2/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/master/Service-Fabric-cmdlets/ServiceFabric/vlatest/Get-ServiceFabricNodeLoadInformation.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/master/Service-Fabric-cmdlets/ServiceFabric/vlatest/Get-ServiceFabricNodeLoadInformation.md
gitcommit: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/a04d7fb81ddb4ca19a8c0101c71d7745ad5e082a/Service-Fabric-cmdlets/ServiceFabric/vlatest/Get-ServiceFabricNodeLoadInformation.md
ms.topic: reference
ms.technology: Azure Powershell
author: oanapl
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: vipulm
open_to_public_contributors: False
ms.service: service-fabric
---

# Get-ServiceFabricNodeLoadInformation

## SYNOPSIS
Gets detailed metrics load information for a Service Fabric node.

## SYNTAX

```
Get-ServiceFabricNodeLoadInformation [-NodeName] <String> [-TimeoutSec <Int32>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-ServiceFabricNodeLoadInformation** cmdlet gets detailed metrics load information for a Service Fabric node.
Specify a node by name.
This cmdlet returns a list of metrics that includes the name, load, and the last updated date for metrics.
This cmdlet can help you troubleshoot metrics-related issues on a node.

Before you perform any operation on a Service Fabric cluster, establish a connection to the cluster by using the [Connect-ServiceFabricCluster](./Connect-ServiceFabricCluster.md) cmdlet.

## EXAMPLES

### Example 1: Get the load related information of a cluster node
```
PS C:\>Get-ServiceFabricNodeLoadInformation -NodeName "Node01"
```

This command gets the load related information of all metrics on a node named Node01.

## PARAMETERS

### -NodeName
Specifies the name of a Service Fabric node.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
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

### String
This cmdlet accepts the name of a Service Fabric node.

## OUTPUTS

### System.Object
This cmdlet returns a **System.Fabric.Query.NodeLoadInformation** that represents load information for a Service Fabric node.

## NOTES

## RELATED LINKS

[Get-ServiceFabricNode](xref:ServiceFabric/vlatest/Get-ServiceFabricNode.md)

[Get-ServiceFabricNodeHealth](xref:ServiceFabric/vlatest/Get-ServiceFabricNodeHealth.md)
