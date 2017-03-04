---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
ms.assetid: 38917534-49C6-47EA-B815-240F794EE655
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.4.0/Update-AzureRmVM.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.4.0/Update-AzureRmVM.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.4.0/Update-AzureRmVM.md
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

# Update-AzureRmVM

## SYNOPSIS
Updates the state of an Azure virtual machine.

## SYNTAX

### ResourceGroupNameParameterSetName (Default)
```
Update-AzureRmVM -VM <PSVirtualMachine> [-Tags <Hashtable>] [-ResourceGroupName] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### IdParameterSetName
```
Update-AzureRmVM -VM <PSVirtualMachine> [-Tags <Hashtable>] [-Id] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The **Update-AzureRmVM** cmdlet updates the state of an Azure virtual machine to the state of a virtual machine object.

## EXAMPLES

### Example 1: Update a virtual machine
```
PS C:\>Update-AzureRmVM -ResourceGroupName "ResourceGroup11" -Name "VirtualMachine07" -VM $VirtualMachine
```

This command updates the virtual machine named VirtualMachine07 in ResourceGroup11.
The command updates it by using another virtual machine object, stored in the $VirtualMachine variable.
To obtain a virtual machine object, use the **Get-AzureRmVM** cmdlet.

## PARAMETERS

### -Id
Specifies the Resource ID of the virtual machine.

```yaml
Type: String
Parameter Sets: IdParameterSetName
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group of the virtual machine.

```yaml
Type: String
Parameter Sets: ResourceGroupNameParameterSetName
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Tags
Specifies the resources and resource groups can be tagged with a set of name-value pairs.
Adding tags to resources enables you to group resources together across resource groups and to create your own views.
Each resource or resource group can have a maximum of 15 tags.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VM
Specifies a local virtual machine object.
To obtain a virtual machine object, use the Get-AzureRmVM cmdlet.
This virtual machine object contains the updated state for the virtual machine.

```yaml
Type: PSVirtualMachine
Parameter Sets: (All)
Aliases: VMProfile

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

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

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureRmVM](xref:ResourceManager/AzureRM.Compute/v2.4.0/Get-AzureRmVM.md)

[New-AzureRmVM](xref:ResourceManager/AzureRM.Compute/v2.4.0/New-AzureRmVM.md)

[Remove-AzureRmVM](xref:ResourceManager/AzureRM.Compute/v2.4.0/Remove-AzureRmVM.md)

[Restart-AzureRmVM](xref:ResourceManager/AzureRM.Compute/v2.4.0/Restart-AzureRmVM.md)

[Start-AzureRmVM](xref:ResourceManager/AzureRM.Compute/v2.4.0/Start-AzureRmVM.md)

[Stop-AzureRmVM](xref:ResourceManager/AzureRM.Compute/v2.4.0/Stop-AzureRmVM.md)

[New-AzureRmVMConfig](xref:ResourceManager/AzureRM.Compute/v2.4.0/New-AzureRmVMConfig.md)


