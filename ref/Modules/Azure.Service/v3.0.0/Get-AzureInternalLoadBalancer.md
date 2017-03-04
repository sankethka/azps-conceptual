---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 8236FE50-07E3-4FB6-8E6F-C11D147D5113
updated_at: 1/11/2017 6:32 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureInternalLoadBalancer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureInternalLoadBalancer.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/34e1c9880d0370f1dd5f83ea8d5ee7f59cb5e559/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureInternalLoadBalancer.md
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

# Get-AzureInternalLoadBalancer

## SYNOPSIS
Gets the details of the internal load balancer configuration.

## SYNTAX

```
Get-AzureInternalLoadBalancer [-ServiceName] <String> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureInternalLoadBalancer** cmdlet gets the details of the internal load balancer configuration for an Azure service.

## EXAMPLES

### Example 1: Get details for an internal load balancer
```
PS C:\> Get-AzureService -ServiceName "ContosoService" | Get-AzureInternalLoadBalancer
```

This command gets the service named ContosoService by using the Get-AzureService cmdlet.
The command passes that service to the current cmdlet by using the pipeline operator.
The current cmdlet gets details for the internal load balancer for that service.

## PARAMETERS

### -ServiceName
Specifies the name of the service for which this cmdlet gets details for an internal load balancer.

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

### Microsoft.WindowsAzure.Commands.ServiceManagement.Model.InternalLoadBalancerContext

## NOTES

## RELATED LINKS

[Add-AzureInternalLoadBalancer](xref:ServiceManagement/Azure.Service/v3.0.0/Add-AzureInternalLoadBalancer.md)

[Get-AzureService](xref:ServiceManagement/Azure.Service/v3.0.0/Get-AzureService.md)

[New-AzureInternalLoadBalancerConfig](xref:ServiceManagement/Azure.Service/v3.0.0/New-AzureInternalLoadBalancerConfig.md)

[Remove-AzureInternalLoadBalancer](xref:ServiceManagement/Azure.Service/v3.0.0/Remove-AzureInternalLoadBalancer.md)

[Set-AzureInternalLoadBalancer](xref:ServiceManagement/Azure.Service/v3.0.0/Set-AzureInternalLoadBalancer.md)


