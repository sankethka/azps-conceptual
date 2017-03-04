---
external help file: Microsoft.WindowsAzure.Commands.TrafficManager.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 1114A2F7-9938-4CD2-B091-F7A7991735BC
updated_at: 1/13/2017 4:07 PM
ms.date: 1/13/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.TrafficManager/v2.1.0/New-AzureTrafficManagerProfile.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.TrafficManager/v2.1.0/New-AzureTrafficManagerProfile.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/1ec025a171a61fc3d41e817200f68d4d574f4ddd/azureps-cmdlets-docs/ServiceManagement/Azure.TrafficManager/v2.1.0/New-AzureTrafficManagerProfile.md
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

# New-AzureTrafficManagerProfile

## SYNOPSIS
Creates a Traffic Manager profile.

## SYNTAX

```
New-AzureTrafficManagerProfile [-Name] <String> [-DomainName] <String> -LoadBalancingMethod <String>
 -MonitorPort <Int32> -MonitorProtocol <String> -MonitorRelativePath <String> -Ttl <Int32>
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureTrafficManagerProfile** cmdlet creates a Microsoft Azure Traffic Manager profile.

After you create a profile where you set the *LoadBalancingMethod* value to "Failover", you can determine the failover order of the endpoints you add to your profile with the **Add-AzureTrafficManagerEndpoint** cmdlet.
For more information, see Example 2 below.

## EXAMPLES

### Example 1: Create a Traffic Manager profile
```
PS C:\> New-AzureTrafficManagerProfile -Name "MyProfile" -DomainName "My.profile.trafficmanager.net" -LoadBalancingMethod "RoundRobin" -Ttl 30 -MonitorProtocol "Http" -MonitorPort 80 -MonitorRelativePath "/"
```

This command creates a Traffic Manager profile named MyProfile in the specified Traffic Manager domain with a Round Robin load balancing method, a TTL of 30 seconds, HTTP monitoring protocol, monitoring port 80, and with the specified path.

### Example 2: Reorder endpoints to desired failover order
```
PS C:\> $Profile = Get-AzureTrafficManagerProfile -Name "MyProfile"
PS C:\> $Profile.Endpoints[0],$Profile.Endpoints[1] = $Profile.Endpoints[1],$Profile.Endpoints[0]
PS C:\> $Profile = Set-AzureTrafficManagerProfile
```

This example reorders the endpoints added to MyProfile to the desired failover order.

The first command gets the Traffic Manager profile object named MyProfile and stores the object in the $Profile variable.

The second command re-orders the endpoints from  the endpoints array to the order in which failover should occur.

The last command updates the Traffic Manager profile stored in $Profile with the new endpoint order.

## PARAMETERS

### -Name
Specifies the name of the Traffic Manager profile to create.

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

### -DomainName
Specifies the domain name of the Traffic Manager profile.
This must be a subdomain of trafficmanager.net.

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

### -LoadBalancingMethod
Specifies the load balancing method to use to distribute the connection.
Valid values are: 

- Performance
- Failover
- RoundRobin

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
Specifies the port used to monitor endpoint health.
Valid values are integer values greater than 0 and less than or equal to 65,535.

```yaml
Type: Int32
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

- Http
- Https

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

### -MonitorRelativePath
Specifies the path relative to the endpoint domain name to probe for health state.
The path must meet the following restrictions: 

- The path must be from 1 through 1000 characters.
- It must start with a forward slash, /.
- It must contain no XML elements, \<\>.
- It must contain no double slashes, //.
- It must contain no invalid HTML escape characters.
For example, %XY.

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

### -Ttl
Specifies the DNS Time-to-Live (TTL) that informs the Local DNS resolvers how long to cache DNS entries.
Valid values are integers from 30 through 999,999.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
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

### Microsoft.WindowsAzure.Commands.Utilities.TrafficManager.Models.IProfileWithDefinition
This cmdlet generates a Traffic Manager profile object.

## NOTES

## RELATED LINKS

[Disable-AzureTrafficManagerProfile](xref:ServiceManagement/Azure.TrafficManager/v2.1.0/Disable-AzureTrafficManagerProfile.md)

[Enable-AzureTrafficManagerProfile](xref:ServiceManagement/Azure.TrafficManager/v2.1.0/Enable-AzureTrafficManagerProfile.md)

[Get-AzureTrafficManagerProfile](xref:ServiceManagement/Azure.TrafficManager/v2.1.0/Get-AzureTrafficManagerProfile.md)

[Remove-AzureTrafficManagerProfile](xref:ServiceManagement/Azure.TrafficManager/v2.1.0/Remove-AzureTrafficManagerProfile.md)

[Set-AzureTrafficManagerProfile](xref:ServiceManagement/Azure.TrafficManager/v2.1.0/Set-AzureTrafficManagerProfile.md)


