---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
ms.assetid: 3F939FE9-5D42-4EA1-90DC-E6D60158CADE
online version: 
schema: 2.0.0
updated_at: 12/19/2016 11:23 PM
ms.date: 12/19/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.1.0/Remove-AzureInternalLoadBalancer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.1.0/Remove-AzureInternalLoadBalancer.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/b56b3462496e95231571c08a11cb4a133d515348/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.1.0/Remove-AzureInternalLoadBalancer.md
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

# Remove-AzureInternalLoadBalancer

## SYNOPSIS
Removes an internal load balancer configuration.

## SYNTAX

```
Remove-AzureInternalLoadBalancer [-ServiceName] <String> [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureInternalLoadBalancer** cmdlet removes the internal load balancer configuration from an Azure service.
If any endpoint currently refers to the internal load balancer, this cmdlet cannot remove the configuration.

## EXAMPLES

### Example 1: Remove an internal load balancer configuration
```
PS C:\> Remove-AzureInternalLoadBalancer -ServiceName "ContosoService"
```

This command removes the internal load balancer configuration for the service named ContosoService.

## PARAMETERS

### -ServiceName
Specifies the name of the service from which this cmdlet removes an internal load balancer.

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

### -InformationAction
Specifies how this cmdlet responds to an information event.

The acceptable values for this parameter are:

- Continue
- Ignore
- Inquire
- SilentlyContinue
- Stop
- Suspend

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: infa

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InformationVariable
Specifies an information variable.

```yaml
Type: String
Parameter Sets: (All)
Aliases: iv

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

### Microsoft.WindowsAzure.Commands.Utilities.Common.ManagementOperationContext

## NOTES

## RELATED LINKS

[Add-AzureInternalLoadBalancer](xref:ServiceManagement/Azure.Service/v3.1.0/Add-AzureInternalLoadBalancer.md)

[Get-AzureInternalLoadBalancer](xref:ServiceManagement/Azure.Service/v3.1.0/Get-AzureInternalLoadBalancer.md)

[New-AzureInternalLoadBalancerConfig](xref:ServiceManagement/Azure.Service/v3.1.0/New-AzureInternalLoadBalancerConfig.md)

[Set-AzureInternalLoadBalancer](xref:ServiceManagement/Azure.Service/v3.1.0/Set-AzureInternalLoadBalancer.md)


