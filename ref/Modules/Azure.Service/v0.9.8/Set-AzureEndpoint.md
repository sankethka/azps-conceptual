---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: C9EA47DC-6A43-489F-94DF-F94588B1AD55
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Set-AzureEndpoint.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Set-AzureEndpoint.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Set-AzureEndpoint.md
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

# Set-AzureEndpoint

## SYNOPSIS
Modifies an endpoint assigned to a virtual machine.

## SYNTAX

```
Set-AzureEndpoint [-Name] <String> [[-Protocol] <String>] [[-LocalPort] <Int32>] [-PublicPort <Int32>]
 [-DirectServerReturn <Boolean>] [-ACL <NetworkAclObject>] [-InternalLoadBalancerName <String>]
 [-IdleTimeoutInMinutes <Int32>] [-LoadBalancerDistribution <String>] [-VirtualIPName <String>]
 -VM <IPersistentVM> [-Profile <AzureProfile>] [-PipelineVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureEndpoint** cmdlet modifies an endpoint assigned to an Azure virtual machine.
You can specify changes to an endpoint that is not load balanced.

## EXAMPLES

### Example 1: Modify an endpoint to listen on a port
```
PS C:\>Get-AzureVM -ServiceName "ContosoService" -Name "VirutalMachine01" | Set-AzureEndpoint -Name "Web" -PublicPort 443 -LocalPort 443 -Protocol tcp | Update-AzureVM
```

This command retrieves the configuration of a virtual machine named VirtualMachine01 by using the Get-AzureVM cmdlet.
The command passes it to the current cmdlet by using the pipeline operator.
This cmdlet modifies the endpoint named Web to listen on port 443.
The command passes the virtual machine object to the Update-AzureVM cmdlet, which implements your changes.

## PARAMETERS

### -ACL
Specifies an access control list (ACL) configuration object that this cmdlet applies to the endpoint.

```yaml
Type: NetworkAclObject
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DirectServerReturn
Specifies whether this cmdlet enables direct server return.
Specify $True to enable, or $False to disable.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IdleTimeoutInMinutes
Specifies the TCP idle time-out period, in minutes, for the endpoint.

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

### -InternalLoadBalancerName
Specifies the name of the internal load balancer.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LoadBalancerDistribution
Specifies the load balancer distribution algorithm.
Valid values are: 

- sourceIP.
A two tuple affinity: Source IP, Destination IP 
- sourceIPProtocol.
A three tuple affinity: Source IP, Destination IP, Protocol 
- none.
A five tuple affinity: Source IP, Source Port, Destination IP, Destination Port, Protocol 

The default value is none.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LocalPort
Specifies the local, private, port that this endpoint uses.
Applications within the virtual machine listen on this port for service input requests for this endpoint.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the name of the endpoint.

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

### -PipelineVariable
Not Specified

```yaml
Type: String
Parameter Sets: (All)
Aliases: pv

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Protocol
Specifies the protocol of the endpoint.
Valid values are: 

- tcp 
- udp

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PublicPort
Specifies the public port that the endpoint uses.

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

### -VirtualIPName
Specifies the name of a virtual IP address that Azure associates to the endpoint.
Your service can have multiple virtual IPs.
To create virtual IPs, use the Add-AzureVirtualIP cmdlet.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VM
Specifies the virtual machine to which the endpoint belongs.

```yaml
Type: IPersistentVM
Parameter Sets: (All)
Aliases: InputObject

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

```yaml
Type: AzureProfile
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

### System.Object

## NOTES

## RELATED LINKS

[Add-AzureEndpoint](xref:ServiceManagement/Azure.Service/v0.9.8/Add-AzureEndpoint.md)

[Add-AzureVirtualIP](xref:ServiceManagement/Azure.Service/v0.9.8/Add-AzureVirtualIP.md)

[Get-AzureEndpoint](xref:ServiceManagement/Azure.Service/v0.9.8/Get-AzureEndpoint.md)

[Get-AzureVM](xref:ServiceManagement/Azure.Service/v0.9.8/Get-AzureVM.md)

[Remove-AzureEndpoint](xref:ServiceManagement/Azure.Service/v0.9.8/Remove-AzureEndpoint.md)

[Update-AzureVM](xref:ServiceManagement/Azure.Service/v0.9.8/Update-AzureVM.md)


