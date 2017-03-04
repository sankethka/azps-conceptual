---
external help file: Microsoft.Azure.Commands.TrafficManager.dll-Help.xml
ms.assetid: 975DD42E-61B6-437B-884D-C15A8DB7A667
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.TrafficManager/v2.4.0/Set-AzureRmTrafficManagerProfile.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.TrafficManager/v2.4.0/Set-AzureRmTrafficManagerProfile.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.TrafficManager/v2.4.0/Set-AzureRmTrafficManagerProfile.md
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

# Set-AzureRmTrafficManagerProfile

## SYNOPSIS
Updates a Traffic Manager profile.

## SYNTAX

```
Set-AzureRmTrafficManagerProfile -TrafficManagerProfile <TrafficManagerProfile> [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmTrafficManagerProfile** cmdlet updates an Azure Traffic Manager profile.
This cmdlet updates the settings of the profile from a local profile object.
You can specify the profile object either by using the *TrafficManagerProfile* parameter or by using the pipeline.

You can obtain a local object that represents a profile by using the Get-AzureRmTrafficManagerProfile cmdlet.
Modify the object locally and then use **Set-AzureRmTrafficManagerProfile** to commit your changes.

## EXAMPLES

### Example 1: Update a profile
```
PS C:\>$TrafficManagerProfile = Get-AzureRmTrafficManagerProfile -Name "ContosoProfile" -ResourceGroupName "ResourceGroup11" 
PS C:\> $TrafficManagerProfile.ProfileStatus = Disabled
PS C:\> Set-AzureRmTrafficManagerProfile -TrafficManagerProfile $TrafficManagerProfile
```

The first command gets an Azure Traffic Manager profile by using the Get-AzureRmTrafficManagerProfile cmdlet.
The command stores the profile locally in the $TrafficManagerProfile variable.

The second command changes that profile locally.
This command disables the profile.

The third command updates the Traffic Manager profile named ContosoProfile to match the local value in $TrafficManagerProfile.

## PARAMETERS

### -TrafficManagerProfile
Specifies a local **TrafficManagerProfile** object.
This cmdlet updates Traffic Manager to match this local object.

```yaml
Type: TrafficManagerProfile
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.Commands.Network.TrafficManagerProfile
This cmdlet accepts a **TrafficManagerProfile** object.

## OUTPUTS

### Microsoft.Azure.Commands.Network.TrafficManagerProfile
This cmdlet returns a **TrafficManagerProfile** object.

## NOTES

## RELATED LINKS

[Add-AzureRmTrafficManagerEndpointConfig](xref:ResourceManager/AzureRM.TrafficManager/v2.4.0/Add-AzureRmTrafficManagerEndpointConfig.md)

[Get-AzureRmTrafficManagerProfile](xref:ResourceManager/AzureRM.TrafficManager/v2.4.0/Get-AzureRmTrafficManagerProfile.md)

[New-AzureRmTrafficManagerProfile](xref:ResourceManager/AzureRM.TrafficManager/v2.4.0/New-AzureRmTrafficManagerProfile.md)

[Remove-AzureRmTrafficManagerEndpointConfig](xref:ResourceManager/AzureRM.TrafficManager/v2.4.0/Remove-AzureRmTrafficManagerEndpointConfig.md)

[Remove-AzureRmTrafficManagerProfile](xref:ResourceManager/AzureRM.TrafficManager/v2.4.0/Remove-AzureRmTrafficManagerProfile.md)


