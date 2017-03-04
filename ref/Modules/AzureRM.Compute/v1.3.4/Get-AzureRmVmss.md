---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: E633B1C7-B87E-4390-A1EE-9D73C767F242
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v1.3.4/Get-AzureRmVmss.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v1.3.4/Get-AzureRmVmss.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v1.3.4/Get-AzureRmVmss.md
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

# Get-AzureRmVmss

## SYNOPSIS
Gets the properties of a VMSS.

## SYNTAX

### InvokeByDynamicParameters (Default)
```
Get-AzureRmVmss [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [[-ResourceGroupName] <String>] [[-VMScaleSetName] <String>] [<CommonParameters>]
```

### InvokeByDynamicParametersForFriendMethod
```
Get-AzureRmVmss [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [[-ResourceGroupName] <String>] [[-VMScaleSetName] <String>] [-InstanceView] [<CommonParameters>]
```

### InvokeByStaticParametersForFriendMethod
```
Get-AzureRmVmss [-InformationAction <ActionPreference>] [-InformationVariable <String>] [-InstanceView]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmVmss** cmdlet gets the model and instance view of a Virtual Machine Scale Set (VMSS).
The model view is the user specified properties of the virtual machine.
The instance view is the instance level status of the virtual machine.
Specify the *Status* parameter to get only the instance view of a virtual machine.

## EXAMPLES

### Example 1: Get the properties of a VMSS
```
PS C:\>Get-AzureRmVmss -ResourceGroupName "Group001" -VMScaleSetName "VMSS001"
```

This command gets the properties of the VMSS named VMSS001 that belongs to the resource group named Group001.
Since the command does not specify the *InstanceView* switch parameter, the cmdlet gets the model view of the virtual machine.

## PARAMETERS

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

### -ResourceGroupName
Specifies the name of the Resource Group of the VMSS.

```yaml
Type: String
Parameter Sets: InvokeByDynamicParameters, InvokeByDynamicParametersForFriendMethod
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VMScaleSetName
Species the name of the VMSS.

```yaml
Type: String
Parameter Sets: InvokeByDynamicParameters, InvokeByDynamicParametersForFriendMethod
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InstanceView
Indicates that this cmdlet gets only the instance view of the virtual machine.

```yaml
Type: SwitchParameter
Parameter Sets: InvokeByDynamicParametersForFriendMethod, InvokeByStaticParametersForFriendMethod
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### This cmdlet does not generate any output.

## NOTES

## RELATED LINKS

[New-AzureRmVmss](xref:ResourceManager/AzureRM.Compute/v1.3.4/New-AzureRmVmss.md)

[Remove-AzureRmVmss](xref:ResourceManager/AzureRM.Compute/v1.3.4/Remove-AzureRmVmss.md)

[Restart-AzureRmVmss](xref:ResourceManager/AzureRM.Compute/v1.3.4/Restart-AzureRmVmss.md)

[Set-AzureRmVmss](xref:ResourceManager/AzureRM.Compute/v1.3.4/Set-AzureRmVmss.md)

[Start-AzureRmVmss](xref:ResourceManager/AzureRM.Compute/v1.3.4/Start-AzureRmVmss.md)

[Stop-AzureRmVmss](xref:ResourceManager/AzureRM.Compute/v1.3.4/Stop-AzureRmVmss.md)

[Update-AzureRmVmss](xref:ResourceManager/AzureRM.Compute/v1.3.4/Update-AzureRmVmss.md)


