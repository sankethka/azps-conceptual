---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 064FC790-8659-4218-9A48-3E950370411C
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v1.6.1/Add-AzureInternalLoadBalancer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v1.6.1/Add-AzureInternalLoadBalancer.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v1.6.1/Add-AzureInternalLoadBalancer.md
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

# Add-AzureInternalLoadBalancer

## SYNOPSIS
Adds an internal load balancer to an Azure service.

## SYNTAX

### ServiceAndSlot (Default)
```
Add-AzureInternalLoadBalancer [-InternalLoadBalancerName] <String> [-ServiceName] <String>
 [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

### SubnetNameOnly
```
Add-AzureInternalLoadBalancer [-InternalLoadBalancerName] <String> [-ServiceName] <String>
 [-SubnetName] <String> [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

### SubnetNameAndIP
```
Add-AzureInternalLoadBalancer [-InternalLoadBalancerName] <String> [-ServiceName] <String>
 [-SubnetName] <String> [-StaticVNetIPAddress] <IPAddress> [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Add-AzureInternalLoadBalancer** cmdlet adds an internal load balancer configuration to an Azure service.
For a virtual network, you can specify a subnet or the IP address of the internal load balancer.

## EXAMPLES

### Example 1: Add an internal load balancer
```
PS C:\>Add-AzureInternalLoadBalancer -ServiceName "ContosoWebsite01" -InternalLoadBalancerName "ContosoILB"
```

This command adds an internal load balancer named ContosoILB to the service named ContosoWebsite01.

### Example 2: Add an internal load balancer for a specified subnet
```
PS C:\>Add-AzureInternalLoadBalancer -ServiceName "ContosoWebsite01" -InternalLoadBalancerName "ContosoILB" -SubnetName "FrontEndSubnet"
```

This command adds an internal load balancer named ContosoILB to the service named ContosoWebsite01.
The command specifies the subnet named FrontEndSubnet.

### Example 3: Add an internal load balancer for a specified subnet and address
```
PS C:\>Add-AzureInternalLoadBalancer -ServiceName "ContosoWebsite01" -InternalLoadBalancerName "ContosoILB" -SubnetName "FrontEndSubnet" -StaticVNetIPAddress 192.168.4.7
```

This command adds an internal load balancer named ContosoILB to the service named ContosoWebsite01.
The command specifies the subnet named FrontEndSubnet and the static address of the virtual network.

## PARAMETERS

### -InternalLoadBalancerName
Specifies the name of the internal load balancer that this cmdlet adds.

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

### -ServiceName
Specifies the name of the service to which this cmdlet adds an internal load balancer.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile
ps_azureprofile_description

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

### -SubnetName
Specifies the name of the subnet for an internal load balancer that this cmdlet adds.

```yaml
Type: String
Parameter Sets: SubnetNameOnly, SubnetNameAndIP
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StaticVNetIPAddress
Specifies the virtual network IP address for an internal load balancer that this cmdlet adds.

```yaml
Type: IPAddress
Parameter Sets: SubnetNameAndIP
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.WindowsAzure.Commands.Utilities.Common.ManagementOperationContext

## NOTES

## RELATED LINKS

[Get-AzureInternalLoadBalancer](xref:ServiceManagement/Azure.Service/v1.6.1/Get-AzureInternalLoadBalancer.md)

[New-AzureInternalLoadBalancerConfig](xref:ServiceManagement/Azure.Service/v1.6.1/New-AzureInternalLoadBalancerConfig.md)

[Remove-AzureInternalLoadBalancer](xref:ServiceManagement/Azure.Service/v1.6.1/Remove-AzureInternalLoadBalancer.md)

[Set-AzureInternalLoadBalancer](xref:ServiceManagement/Azure.Service/v1.6.1/Set-AzureInternalLoadBalancer.md)


