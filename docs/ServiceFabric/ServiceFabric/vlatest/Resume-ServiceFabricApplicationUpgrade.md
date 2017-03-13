---
external help file: Microsoft.ServiceFabric.Powershell.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 9C9C001A-EED4-4D82-B98E-5CDB1C1CF314
updated_at: 11/3/2016 5:06 PM
ms.date: 11/3/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/master/Service-Fabric-cmdlets/ServiceFabric/vlatest/Resume-ServiceFabricApplicationUpgrade.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/master/Service-Fabric-cmdlets/ServiceFabric/vlatest/Resume-ServiceFabricApplicationUpgrade.md
gitcommit: https://github.com/Azure/azure-docs-powershell-servicefabric/blob/79292df3c325e2a04987a559a1141637740ddd4c/Service-Fabric-cmdlets/ServiceFabric/vlatest/Resume-ServiceFabricApplicationUpgrade.md
ms.topic: reference
ms.technology: Azure Powershell
author: oanapl
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: vipulm
open_to_public_contributors: False
ms.service: service-fabric
---

# Resume-ServiceFabricApplicationUpgrade

## SYNOPSIS
Resumes an unmonitored Service Fabric application upgrade.

## SYNTAX

```
Resume-ServiceFabricApplicationUpgrade [-ApplicationName] <Uri> [-UpgradeDomainName] <String>
 [-TimeoutSec <Int32>] [<CommonParameters>]
```

## DESCRIPTION
The **Resume-ServiceFabricApplicationUpgrade** cmdlet resumes an unmonitored manual Service Fabric application upgrade.
Service Fabric upgrades one upgrade domain at a time.
For unmonitored manual upgrades, after Service Fabric finishes an upgrade domain, it waits for you to use this cmdlet to proceed to the next upgrade domain.

Before you perform any operation on a Service Fabric cluster, establish a connection to the cluster by using the [Connect-ServiceFabricCluster](./Connect-ServiceFabricCluster.md) cmdlet.

## EXAMPLES

### Example 1: Resume an upgrade
```
PS C:\>Resume-ServiceFabricApplicationUpgrade -ApplicationName fabric:/myapp/persistenttodolist -UpgradeDomainName "MYUD02"
```

This command starts the upgrade of the domain named MYUD02.

## PARAMETERS

### -ApplicationName
Specifies the Uniform Resource Identifier (URI) of a Service Fabric application.
The cmdlet resumes the upgrade for the application that has the URI that you specify.

```yaml
Type: Uri
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
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

### -UpgradeDomainName
Specifies the name of the next upgrade domain to upgrade.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
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
This cmdlet returns the status of the operation as a string.

## NOTES

## RELATED LINKS

[Connect-ServiceFabricCluster](xref:ServiceFabric/vlatest/Connect-ServiceFabricCluster.md)

[Get-ServiceFabricClusterConnection](xref:ServiceFabric/vlatest/Get-ServiceFabricClusterConnection.md)

[Get-ServiceFabricApplicationUpgrade](xref:ServiceFabric/vlatest/Get-ServiceFabricApplicationUpgrade.md)

[Start-ServiceFabricApplicationUpgrade](xref:ServiceFabric/vlatest/Start-ServiceFabricApplicationUpgrade.md)
