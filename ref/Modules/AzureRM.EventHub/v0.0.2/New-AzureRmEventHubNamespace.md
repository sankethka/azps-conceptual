---
external help file: Microsoft.Azure.Commands.EventHub.dll-Help.xml
online version: 
schema: 2.0.0
updated_at: 2/22/2017 11:02 PM
ms.date: 2/22/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/New-AzureRmEventHubNamespace.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/New-AzureRmEventHubNamespace.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/d4a7f3e9ebef5fb5f18b7fb966e74a8d47d7302e/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/New-AzureRmEventHubNamespace.md
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

# New-AzureRmEventHubNamespace

## SYNOPSIS
Creates an Event Hubs namespace.

## SYNTAX

```
New-AzureRmEventHubNamespace [-ResourceGroupName] <String> [-NamespaceName] <String> [-Location] <String>
 [[-SkuName] <String>] [[-SkuCapacity] <Int32>] [[-Tag] <Hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmEventHubNamespace** cmdlet creates a namespace of type Event Hubs.

## EXAMPLES

### Example 1: Create an Event Hubs namespace
```
PS C:\> New-AzureRmEventHubNamespace -ResourceGroupName "MyResourceGroupName" -NamespaceName "MyNamespaceName" -Location "USWest"
```

This command creates an Event Hubs namespace named MyNamespaceName in the specified geographic location USWest that belongs to the resource group named MyResourceGroupName.

## PARAMETERS

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Location
Specifies the geographic location of the Event Hubs namespace.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -NamespaceName
Specifies the name of the Event Hubs namespace that this cmdlet creates.


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

### -ResourceGroupName
Specifies the name of the resource group that contains the Event Hub.


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

### -SkuCapacity
Specifies the SKU capacity of the Event Hub namespace.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SkuName
Specifies the name of the SKU in the Event Hub namespace.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 
Accepted values: Basic, Standard, Premium

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Tag
Specifies a hashtable that represent resource tags.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases: 

Required: False
Position: 6
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
System.Nullable\`1\[\[System.Int32, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089\]\] System.Nullable\`1\[\[System.Boolean, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089\]\] System.Collections.Hashtable

## OUTPUTS

### Microsoft.Azure.Commands.EventHub.Models.NamespaceAttributes

## NOTES

## RELATED LINKS

[Get-AzureRmEventHubNamespace](xref:ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHubNamespace.md)

[Remove-AzureRmEventHubNamespace](xref:ResourceManager/AzureRM.EventHub/v0.0.2/Remove-AzureRmEventHubNamespace.md)

[Set-AzureRmEventHubNamespace](xref:ResourceManager/AzureRM.EventHub/v0.0.2/Set-AzureRmEventHubNamespace.md)
