---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
ms.assetid: BB6AFC7D-7E74-4D39-B336-A011B98D0682
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.4.0/Get-AzureRmVmssSku.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.4.0/Get-AzureRmVmssSku.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.4.0/Get-AzureRmVmssSku.md
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

# Get-AzureRmVmssSku

## SYNOPSIS
Gets the available SKUs for the VMSS.

## SYNTAX

```
Get-AzureRmVmssSku [-ResourceGroupName] <String> [-VMScaleSetName] <String> [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmVmssSku** cmdlet gets the available SKUs for the Virtual Machine Scale Set (VMSS).

## EXAMPLES

### Example 1: Get all available SKUs from the VMSS
```
PS C:\>Get-AzureRmVmssSku -ResourceGroupName "ContosoGroup" -VMScaleSetName "ContosoVMSS"
```

This command gets all the available SKUs from the VMSS named ContosoVMSS that belongs to the resource group named ContosoGroup.

## PARAMETERS

### -ResourceGroupName
Specifies the name of the resource group of the VMSS.

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

### -VMScaleSetName
Species the name of the VMSS.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Name

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

### This cmdlet does not produce any output.

## NOTES

## RELATED LINKS

[Get-AzureRmVmss](xref:ResourceManager/AzureRM.Compute/v2.4.0/Get-AzureRmVmss.md)


