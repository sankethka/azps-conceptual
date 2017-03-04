---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 8EE9F01B-41E4-40A3-A94A-14D046B5B416
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v0.9.8/Get-AzureAvailabilitySet.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v0.9.8/Get-AzureAvailabilitySet.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v0.9.8/Get-AzureAvailabilitySet.md
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

# Get-AzureAvailabilitySet

## SYNOPSIS
Gets Azure availability sets in a resource group.

## SYNTAX

```
Get-AzureAvailabilitySet [-ResourceGroupName] <String> [[-Name] <String>] [-Profile <AzureProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureAvailabilitySet** cmdlet gets Azure availability sets in a resource group.
Specify the name of a specific availability set to get.

## EXAMPLES

### Example 1: Get a specific availability set
```
PS C:\>Get-AzureAvailabilitySet -ResourceGroupName "ResourceGroup11" -Name "AvailabilitySet03"
```

This command gets the availability set named AvailablitySet03 in the resource group named ResourceGroup11.

### Example 2: Get all availability sets
```
PS C:\>Get-AzureAvailabilitySet -ResourceGroupName "ResourceGroup11"
```

This command gets all the availability sets in the resource group named ResourceGroup11.

## PARAMETERS

### -Name
Specifies the name of an availability set to get.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ResourceName, AvailabilitySetName

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### -ResourceGroupName
Specifies the name of a resource group.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[New-AzureAvailabilitySet](xref:ResourceManager/AzureRM.Compute/v0.9.8/New-AzureAvailabilitySet.md)

[Remove-AzureAvailabilitySet](xref:ResourceManager/AzureRM.Compute/v0.9.8/Remove-AzureAvailabilitySet.md)


