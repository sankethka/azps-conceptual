---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
ms.assetid: 7F7D1F05-617C-4EC5-8FF5-D816E9148841
online version: 
schema: 2.0.0
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.3.0/Start-AzureRmVmss.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.3.0/Start-AzureRmVmss.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.3.0/Start-AzureRmVmss.md
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

# Start-AzureRmVmss

## SYNOPSIS
Starts the VMSS or a set of virtual machines within the VMSS.

## SYNTAX

```
Start-AzureRmVmss [-ResourceGroupName] <String> [-VMScaleSetName] <String> [[-InstanceId] <String[]>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Start-AzureRmVmss** cmdlet starts all the virtual machines within the Virtual Machine Scale Set (VMSS) or a set of virtual machines.
You can use the *InstanceId* parameter to select a set of virtual machines.

## EXAMPLES

### Example 1: Start a specific set of virtual machines within the VMSS
```
PS C:\>Start-AzureRmVmss -ResourceGroupName "ContosOrg" -VMScaleSetName "ContosoVMSS"-InstanceId "0", "1"
```

This command starts a specific set of virtual machines specified by the instance ID string array that belong to the VMSS named ContosoVMSS.

### Example 2: Start all virtual machines within the VMSS
```
PS C:\>Start-AzureRmVmss -ResourceGroupName "ContosOrg" -VMScaleSetName "ContosoVMSS"
```

This command starts all virtual machines that belong to the VMSS named ContosoVMSS.

## PARAMETERS

### -InstanceId
Specifies, as a string array, the ID or IDs of the instances that cmdlet starts.
For instance: `-InstanceId "0", "3"`

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

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
Specifies the name of the VMSS that this cmdlet starts the virtual machines.

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

###  
This cmdlet does not generate any output.

## NOTES

## RELATED LINKS

[Get-AzureRmVmss](xref:ResourceManager/AzureRM.Compute/v2.3.0/Get-AzureRmVmss.md)

[New-AzureRmVmss](xref:ResourceManager/AzureRM.Compute/v2.3.0/New-AzureRmVmss.md)

[Remove-AzureRmVmss](xref:ResourceManager/AzureRM.Compute/v2.3.0/Remove-AzureRmVmss.md)

[Restart-AzureRmVmss](xref:ResourceManager/AzureRM.Compute/v2.3.0/Restart-AzureRmVmss.md)

[Set-AzureRmVmss](xref:ResourceManager/AzureRM.Compute/v2.3.0/Set-AzureRmVmss.md)

[Stop-AzureRmVmss](xref:ResourceManager/AzureRM.Compute/v2.3.0/Stop-AzureRmVmss.md)

[Update-AzureRmVmss](xref:ResourceManager/AzureRM.Compute/v2.3.0/Update-AzureRmVmss.md)


