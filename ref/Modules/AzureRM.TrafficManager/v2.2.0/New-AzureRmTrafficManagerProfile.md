---
external help file: Microsoft.Azure.Commands.TrafficManager.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 1EC820D2-F81B-402A-A2B9-138A9C7000B9
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.TrafficManager/v2.2.0/New-AzureRmTrafficManagerProfile.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.TrafficManager/v2.2.0/New-AzureRmTrafficManagerProfile.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.TrafficManager/v2.2.0/New-AzureRmTrafficManagerProfile.md
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

# New-AzureRmTrafficManagerProfile

## SYNOPSIS
Creates a Traffic Manager profile.

## SYNTAX

```
New-AzureRmTrafficManagerProfile -Name <String> -ResourceGroupName <String> [-ProfileStatus <String>]
 -RelativeDnsName <String> -Ttl <UInt32> -TrafficRoutingMethod <String> -MonitorProtocol <String>
 -MonitorPort <UInt32> -MonitorPath <String> [-Tag <Hashtable>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmTrafficManagerProfile** cmdlet creates an Azure Traffic Manager profile.
Specify the *Name* parameter and required settings.
This cmdlet returns a local object that represents the new profile.

This cmdlet does not configure Traffic Manager endpoints.
You can update the local profile object by using the Add-AzureRmTrafficManagerEndpointConfig cmdlet.
Then upload changes to Traffic Manager by using the Set-AzureRmTrafficManagerProfile cmdlet.
Alternatively, you can add endpoints by using the New-AzureRmTrafficManagerEndpoint cmdlet.

## EXAMPLES

### Example 1: Create a profile
```
PS C:\>New-AzureRmTrafficManagerProfile -Name "ContosoProfile" -ResourceGroupName "ResourceGroup11" -ProfileStatus Enabled -TrafficRoutingMethod Performance -RelativeDnsName "contosoapp" -TTL 30 -MonitorProtocol HTTP -MonitorPort 80 -MonitorPath "/default.aspx"
```

This command creates an Azure Traffic Manager profile named ContosoProfile in resource group ResourceGroup11.
The DNS FQDN is contosoapp.trafficmanager.net.

## PARAMETERS

### -MonitorPath
Specifies the path that is used to monitor endpoint health.
Specify a value relative to the endpoint domain name.
This value must begin with a slash (/).

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MonitorPort
Specifies the TCP port that is used to monitor endpoint health.
Valid values are integers from 1 through 65535.

```yaml
Type: UInt32
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MonitorProtocol
Specifies the protocol to use to monitor endpoint health.
Valid values are: 

- HTTP
- HTTPS

```yaml
Type: String
Parameter Sets: (All)
Aliases: 
Accepted values: HTTP, HTTPS

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies a name for the Traffic Manager profile that this cmdlet creates.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RelativeDnsName
Specifies the relative DNS name that this Traffic Manager profile provides.
Traffic Manager combines this value and the DNS domain name that Azure Traffic Manager uses to form the fully qualified domain name (FQDN) of the profile.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of a resource group.
This cmdlet creates a Traffic Manager profile in the group that this parameter specifies.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TrafficRoutingMethod
Specifies the traffic routing method.
This method determines which endpoint Traffic Manager returns in response to incoming DNS queries.
Valid values are: 

- Performance 
- Weighted 
- Priority

```yaml
Type: String
Parameter Sets: (All)
Aliases: 
Accepted values: Performance, Weighted, Priority

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Ttl
Specifies the DNS Time to Live (TTL) value.

```yaml
Type: UInt32
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ProfileStatus
Specifies the status of the profile.
Valid values are: Enabled and Disabled.

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

### -Tag
Specifies tags as an array of hash tables.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases: Tags

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

### Microsoft.Azure.Commands.Network.TrafficManagerProfile
This cmdlet returns a new TrafficManagerProfile object.

## NOTES

## RELATED LINKS

[Add-AzureRmTrafficManagerEndpointConfig](xref:ResourceManager/AzureRM.TrafficManager/v2.2.0/Add-AzureRmTrafficManagerEndpointConfig.md)

[Disable-AzureRmTrafficManagerProfile](xref:ResourceManager/AzureRM.TrafficManager/v2.2.0/Disable-AzureRmTrafficManagerProfile.md)

[Enable-AzureRmTrafficManagerProfile](xref:ResourceManager/AzureRM.TrafficManager/v2.2.0/Enable-AzureRmTrafficManagerProfile.md)

[Get-AzureRmTrafficManagerProfile](xref:ResourceManager/AzureRM.TrafficManager/v2.2.0/Get-AzureRmTrafficManagerProfile.md)

[Remove-AzureRmTrafficManagerProfile](xref:ResourceManager/AzureRM.TrafficManager/v2.2.0/Remove-AzureRmTrafficManagerProfile.md)

[Set-AzureRmTrafficManagerProfile](xref:ResourceManager/AzureRM.TrafficManager/v2.2.0/Set-AzureRmTrafficManagerProfile.md)


