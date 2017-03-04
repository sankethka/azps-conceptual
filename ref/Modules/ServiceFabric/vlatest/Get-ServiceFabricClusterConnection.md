---
external help file: Microsoft.ServiceFabric.Powershell.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: AC68A4AD-F230-4E30-83F9-94B88A8A2A32
updated_at: 11/2/2016 6:01 PM
ms.date: 11/2/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/master/Service-Fabric-cmdlets/ServiceFabric/vlatest/Get-ServiceFabricClusterConnection.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/master/Service-Fabric-cmdlets/ServiceFabric/vlatest/Get-ServiceFabricClusterConnection.md
gitcommit: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/a04d7fb81ddb4ca19a8c0101c71d7745ad5e082a/Service-Fabric-cmdlets/ServiceFabric/vlatest/Get-ServiceFabricClusterConnection.md
ms.topic: reference
ms.technology: Azure Powershell
author: oanapl
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: vipulm
open_to_public_contributors: False
ms.service: service-fabric
---

# Get-ServiceFabricClusterConnection

## SYNOPSIS
Gets the current Service Fabric cluster connection.

## SYNTAX

```
Get-ServiceFabricClusterConnection [-TimeoutSec <Int32>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-ServiceFabricClusterConnection** cmdlet gets the current Service Fabric cluster connection with the parameters used to connect to the cluster, like connection endpoint, fabric client settings, and gateway information.
To create a cluster connection, use the [Connect-ServiceFabricCluster](./Connect-ServiceFabricCluster.md) cmdlet.

## EXAMPLES

### Example 1: Get the current cluster connection
```
PS C:\>Get-ServiceFabricClusterConnection
```

This command gets the current Service Fabric cluster connection.

## PARAMETERS

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

### None
You cannot pipe input to this cmdlet.

## OUTPUTS

### System.Object
This cmdlet returns a **System.Fabric.PowerShell.ClusterConnection** that represents the Service Fabric cluster connection information.

## NOTES

## RELATED LINKS

[Connect-ServiceFabricCluster](xref:ServiceFabric/vlatest/Connect-ServiceFabricCluster.md)

[Test-ServiceFabricClusterConnection](xref:ServiceFabric/vlatest/Test-ServiceFabricClusterConnection.md)
