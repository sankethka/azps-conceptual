---
external help file: Microsoft.ServiceFabric.Powershell.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: BD9B8EBB-38BA-4EFB-A237-C6218E18369B
updated_at: 11/3/2016 5:06 PM
ms.date: 11/3/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/master/Service-Fabric-cmdlets/ServiceFabric/vlatest/Update-ServiceFabricNodeConfiguration.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/master/Service-Fabric-cmdlets/ServiceFabric/vlatest/Update-ServiceFabricNodeConfiguration.md
gitcommit: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/79292df3c325e2a04987a559a1141637740ddd4c/Service-Fabric-cmdlets/ServiceFabric/vlatest/Update-ServiceFabricNodeConfiguration.md
ms.topic: reference
ms.technology: Azure Powershell
author: oanapl
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: vipulm
open_to_public_contributors: False
ms.service: service-fabric
---

# Update-ServiceFabricNodeConfiguration

## SYNOPSIS
Updates a Service Fabric cluster configuration.

## SYNTAX

```
Update-ServiceFabricNodeConfiguration [-ClusterManifestPath] <String> [-Force] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The **Update-ServiceFabricNodeConfiguration** cmdlet updates a Service Fabric cluster configuration.
This cmdlet is for disaster recovery only.
Do not use it during normal operations.

To manage Service Fabric clusters, start Windows PowerShell by using the Run as administrator option.
Before you perform any operation on a Service Fabric cluster, establish a connection to the cluster by using the [Connect-ServiceFabricCluster](./Connect-ServiceFabricCluster.md) cmdlet.

## EXAMPLES

### Example 1: Update the service fabric node configuration for an existing cluster via cluster manifest
```
PS C:\>Update-ServiceFabricNodeConfiguration -ClusterManifestPath c:\temp\clustermanifest.v2.xml
```

This command updates the cluster manifest in order to update the set of service fabric nodes

## PARAMETERS

### -ClusterManifestPath
Specifies the path of a Service Fabric cluster manifest.
The cmdlet updates the cluster configuration based on the manifest that you specify.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
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

### -Force
Forces the command to run without asking for user confirmation.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
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

### None
You cannot pipe input to this cmdlet.

## OUTPUTS

### System.Object
This cmdlet returns the status of the operation as a string.

## NOTES

## RELATED LINKS

[Connect-ServiceFabricCluster](xref:ServiceFabric/vlatest/Connect-ServiceFabricCluster.md)

[Get-ServiceFabricClusterConnection](xref:ServiceFabric/vlatest/Get-ServiceFabricClusterConnection.md)

[New-ServiceFabricNodeConfiguration](xref:ServiceFabric/vlatest/New-ServiceFabricNodeConfiguration.md)

[Remove-ServiceFabricNodeConfiguration](xref:ServiceFabric/vlatest/Remove-ServiceFabricNodeConfiguration.md)
