---
external help file: Microsoft.Azure.Commands.Network.dll-Help.xml
ms.assetid: CBDF4BCB-7EB3-4D64-B19C-1314D4AB84E4
online version: 
schema: 2.0.0
updated_at: 1/10/2017 9:48 PM
ms.date: 1/10/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.1.0/Get-AzureRmVirtualNetwork.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.1.0/Get-AzureRmVirtualNetwork.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/c0fd83660f69ea874ddf8d07b989b3cce509386e/azureps-cmdlets-docs/ResourceManager/AzureRM.Network/v3.1.0/Get-AzureRmVirtualNetwork.md
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

# Get-AzureRmVirtualNetwork

## SYNOPSIS
Gets a virtual network in a resource group.

## SYNTAX

### Expand
```
Get-AzureRmVirtualNetwork -Name <String> -ResourceGroupName <String> -ExpandResource <String>
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### NoExpand
```
Get-AzureRmVirtualNetwork [-Name <String>] [-ResourceGroupName <String>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmVirtualNetwork** cmdlet gets one or more virtual networks n a resource group.

## EXAMPLES

## PARAMETERS

### -Name
Specifies the name of the virtual network that this cmdlet gets.

```yaml
Type: String
Parameter Sets: Expand
Aliases: ResourceName

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: NoExpand
Aliases: ResourceName

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group that virtual network belongs to.

```yaml
Type: String
Parameter Sets: Expand
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: NoExpand
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### -ExpandResource
```yaml
Type: String
Parameter Sets: Expand
Aliases: 

Required: True
Position: Named
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

[New-AzureRmVirtualNetwork](xref:ResourceManager/AzureRM.Network/v3.1.0/New-AzureRmVirtualNetwork.md)

[Remove-AzureRmVirtualNetwork](xref:ResourceManager/AzureRM.Network/v3.1.0/Remove-AzureRmVirtualNetwork.md)

[Set-AzureRmVirtualNetwork](xref:ResourceManager/AzureRM.Network/v3.1.0/Set-AzureRmVirtualNetwork.md)
