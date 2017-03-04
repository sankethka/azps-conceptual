---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 830BFB1D-056E-4F94-8B0E-97051DF57CA2
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.2.0/Get-AzureRmVM.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.2.0/Get-AzureRmVM.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.2.0/Get-AzureRmVM.md
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

# Get-AzureRmVM

## SYNOPSIS
Gets the properties of a virtual machine.

## SYNTAX

### ListAllVirtualMachinesParamSet (Default)
```
Get-AzureRmVM [<CommonParameters>]
```

### ListVirtualMachineInResourceGroupParamSet
```
Get-AzureRmVM [-ResourceGroupName] <String> [<CommonParameters>]
```

### GetVirtualMachineInResourceGroupParamSet
```
Get-AzureRmVM [-ResourceGroupName] <String> [-Name] <String> [-Status] [<CommonParameters>]
```

### ListNextLinkVirtualMachinesParamSet
```
Get-AzureRmVM [-NextLink] <Uri> [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmVM** cmdlet gets the model view and instance view of an Azure virtual machine.
The model view is the user specified properties of the virtual machine.
The instance view is the instance level status of the virtual machine.
Specify the *Status* parameter to get only the instance view of a virtual machine.

## EXAMPLES

### Example 1: Get model and instance view properties
```
PS C:\>Get-AzureRmVM -ResourceGroupName "ResourceGroup11" -Name "VirtualMachine07"
```

This command gets the model view and instance view properties of the virtual machine named VirtualMachine07.

### Example 2: Get instance view properties
```
PS C:\>Get-AzureRmVM -ResourceGroupName "ResourceGroup11" -Name "VirtualMachine07" -Status
```

This command gets properties of the virtual machine named VirtualMachine07.
This command specifies the *Status* parameter.
Therefore, the command gets only the instance view properties.

### Example 3: Get properties for all virtual machines in a resource group
```
PS C:\>Get-AzureRmVM -ResourceGroupName "ResourceGroup11"
```

This command gets properties for all the virtual machines in the resource group named ResourceGroup11.

### Example 4: Get all virtual machines in your subscription
```
PS C:\>Get-AzureRmVM
```

This command gets all the virtual machines in your subscription.

## PARAMETERS

### -Name
Specifies the name of the virtual machine to get.

```yaml
Type: String
Parameter Sets: GetVirtualMachineInResourceGroupParamSet
Aliases: ResourceName, VMName

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -NextLink
Specifies the next link.

```yaml
Type: Uri
Parameter Sets: ListNextLinkVirtualMachinesParamSet
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of a resource group.

```yaml
Type: String
Parameter Sets: ListVirtualMachineInResourceGroupParamSet, GetVirtualMachineInResourceGroupParamSet
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Status
Indicates that this cmdlet gets only the instance view of the virtual machine.

```yaml
Type: SwitchParameter
Parameter Sets: GetVirtualMachineInResourceGroupParamSet
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[New-AzureRmVM](xref:ResourceManager/AzureRM.Compute/v2.2.0/New-AzureRmVM.md)

[Remove-AzureRmVM](xref:ResourceManager/AzureRM.Compute/v2.2.0/Remove-AzureRmVM.md)

[Restart-AzureRmVM](xref:ResourceManager/AzureRM.Compute/v2.2.0/Restart-AzureRmVM.md)

[Start-AzureRmVM](xref:ResourceManager/AzureRM.Compute/v2.2.0/Start-AzureRmVM.md)

[Stop-AzureRmVM](xref:ResourceManager/AzureRM.Compute/v2.2.0/Stop-AzureRmVM.md)

[Update-AzureRmVM](xref:ResourceManager/AzureRM.Compute/v2.2.0/Update-AzureRmVM.md)


