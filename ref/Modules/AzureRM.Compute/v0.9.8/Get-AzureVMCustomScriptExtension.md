---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 91C5EA1E-088A-4C03-B364-1A43F3BB2DA0
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v0.9.8/Get-AzureVMCustomScriptExtension.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v0.9.8/Get-AzureVMCustomScriptExtension.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v0.9.8/Get-AzureVMCustomScriptExtension.md
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

# Get-AzureVMCustomScriptExtension

## SYNOPSIS
Gets information about a custom script extension.

## SYNTAX

```
Get-AzureVMCustomScriptExtension [-ResourceGroupName] <String> [-VMName] <String> [-Name] <String> [-Status]
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureVMCustomScriptExtension** cmdlet gets information about a custom script Virtual Machine Extension on a virtual machine.

## EXAMPLES

### Example 1: Get a custom script extension
```
PS C:\>$VMCustomScriptExtension = Get-AzureVMCustomScriptExtension -ResourceGroupName "ResourceGroup11" -VMName "VirtualMachine07" -Name "ContosoCustomScript"
```

This command gets the custom script extension named ContosoCustomScript for the virtual machine named VirtualMachine07.

### Example 2: Get the instance view of a custom script extension
```
PS C:\>$VMCustomScriptExtension = Get-AzureVMCustomScriptExtension -ResourceGroupName "ResourceGroup11" -VMName "VirtualMachine07" -Name "ContosoCustomScript" -Status
```

This command gets the instance view of the custom script extension named ContosoCustomScript for the virtual machine named VirtualMachine07.

## PARAMETERS

### -Name
Specifies the name of the custom script extension about which this cmdlet gets information.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ExtensionName

Required: True
Position: 3
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
Specifies the name of the resource group of the virtual machine.

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

### -Status
Indicates that this cmdlet gets the instance view of the custom script extension.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VMName
Specifies the name of a virtual machine for which this cmdlet gets the custom script extension.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ResourceName

Required: True
Position: 2
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

[Get-AzureVMExtension](xref:ResourceManager/AzureRM.Compute/v0.9.8/Get-AzureVMExtension.md)

[Get-AzureVMExtensionImage](xref:ResourceManager/AzureRM.Compute/v0.9.8/Get-AzureVMExtensionImage.md)

[Get-AzureVMAccessExtension](xref:ResourceManager/AzureRM.Compute/v0.9.8/Get-AzureVMAccessExtension.md)


