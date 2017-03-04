---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: A0291759-AA60-4D46-890D-580E777AE4A9
updated_at: 1/11/2017 6:32 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Set-AzureVNetConfig.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Set-AzureVNetConfig.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/34e1c9880d0370f1dd5f83ea8d5ee7f59cb5e559/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Set-AzureVNetConfig.md
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

# Set-AzureVNetConfig

## SYNOPSIS
Updates the virtual network settings for an Azure cloud service.

## SYNTAX

```
Set-AzureVNetConfig [-ConfigurationPath] <String> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureVNetConfig** cmdlet updates the network configuration for the current Azure subscription by specifying a path to a network configuration file (.netcfg).
The network configuration file defines DNS servers and subnets for cloud services within a subscription.

## EXAMPLES

### Example 1: Update the network configuration of the Azure subscription to a local file
```
PS C:\> Set-AzureVNetConfig  -ConfigurationPath "c:\temp\MyAzNets.netcfg"
```

This command updates the network configuration of the current Microsoft Azure subscription to that in the local file "c:\temp\MyAzNets.netcfg".

### Example 2: Set the Azure subscription and then update the network configuration
```
PS C:\> $SubsId = "5bea2bc2-88a5-44b8-abe1-3e76733b6783"
C:\PS> $Cert = Get-Item cert:\LocalMachine\MY\82F105B2DA81149204A6257A9A91EC452B8C52C3
C:\PS> Set-AzureVNetConfig  -ConfigurationPath "c:\temp\MyAzNets.netcfg"
```

This example sets the Microsoft Azure subscription, and then updates the network configuration of that subscription using the configuration defined in the local file "c:\temp\MyAzNets.netcfg".

## PARAMETERS

### -ConfigurationPath
Specifies the path and file name of a network configuration file (.netcfg).

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

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

```yaml
Type: AzureSMProfile
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

[Get-AzureVNetConfig](xref:ServiceManagement/Azure.Service/v3.0.0/Get-AzureVNetConfig.md)

[Get-AzureVNetSite](xref:ServiceManagement/Azure.Service/v3.0.0/Get-AzureVNetSite.md)

[Remove-AzureVNetConfig](xref:ServiceManagement/Azure.Service/v3.0.0/Remove-AzureVNetConfig.md)


