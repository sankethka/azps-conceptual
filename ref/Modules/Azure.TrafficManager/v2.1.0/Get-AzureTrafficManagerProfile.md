---
external help file: Microsoft.WindowsAzure.Commands.TrafficManager.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 82854CF6-75CE-4FF5-B416-5134C1FCD70B
updated_at: 1/13/2017 4:07 PM
ms.date: 1/13/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.TrafficManager/v2.1.0/Get-AzureTrafficManagerProfile.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.TrafficManager/v2.1.0/Get-AzureTrafficManagerProfile.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/1ec025a171a61fc3d41e817200f68d4d574f4ddd/azureps-cmdlets-docs/ServiceManagement/Azure.TrafficManager/v2.1.0/Get-AzureTrafficManagerProfile.md
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

# Get-AzureTrafficManagerProfile

## SYNOPSIS
Gets the details of a Traffic Manager profile.

## SYNTAX

```
Get-AzureTrafficManagerProfile [[-Name] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureTrafficManagerProfile** cmdlet gets the details of a Microsoft Azure Traffic Manager profile.
If you do not specify the *Name* parameter, the cmdlet lists the Traffic Manager profiles in the current subscription.

## EXAMPLES

### Example 1: Get the list of Traffic Manager profiles in a subscription
```
PS C:\> Get-AzureTrafficManagerProfile
```

This command gets the list of Traffic Manager profiles in your subscription.

### Example 2: Get a Traffic Manager profile
```
PS C:\> Get-AzureTrafficManagerProfile -Name "MyProfile"
```

This command gets the Traffic Manager profile named MyProfile.

### Example 3: Add an endpoint to a Traffic Manager profile
```
PS C:\> Get-AzureTrafficManagerProfile -Name "MyProfile" | Add-AzureTrafficManagerEndpoint -DomainName "Myapp2.cloudapp.net" -TrafficManagerProfile $MyTrafficManagerProfile -Type "CloudService" -Status "Enabled" | Set-AzureTrafficManagerProfile
```

This command adds an endpoint to a Traffic Manager profile, and then saves the profile.

## PARAMETERS

### -Name
Specifies the name of the Traffic Manager profile to get.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
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

### Microsoft.WindowsAzure.Commands.Utilities.TrafficManager.Models.IProfileWithDefinition
This cmdlet generates a Traffic Manager profile object or objects.

## NOTES

## RELATED LINKS

[Add-AzureTrafficManagerEndpoint](xref:ServiceManagement/Azure.TrafficManager/v2.1.0/Add-AzureTrafficManagerEndpoint.md)

[Disable-AzureTrafficManagerProfile](xref:ServiceManagement/Azure.TrafficManager/v2.1.0/Disable-AzureTrafficManagerProfile.md)

[Enable-AzureTrafficManagerProfile](xref:ServiceManagement/Azure.TrafficManager/v2.1.0/Enable-AzureTrafficManagerProfile.md)

[New-AzureTrafficManagerProfile](xref:ServiceManagement/Azure.TrafficManager/v2.1.0/New-AzureTrafficManagerProfile.md)

[Remove-AzureTrafficManagerProfile](xref:ServiceManagement/Azure.TrafficManager/v2.1.0/Remove-AzureTrafficManagerProfile.md)

[Set-AzureTrafficManagerProfile](xref:ServiceManagement/Azure.TrafficManager/v2.1.0/Set-AzureTrafficManagerProfile.md)


