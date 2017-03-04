---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 0AAEC8E4-13E6-4D24-8026-9CB8D9E24958
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v0.9.8/Remove-AzureVM.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v0.9.8/Remove-AzureVM.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v0.9.8/Remove-AzureVM.md
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

# Remove-AzureVM

## SYNOPSIS
Removes a virtual machine from Azure.

## SYNTAX

### ResourceGroupNameParameterSetName (Default)
```
Remove-AzureVM [-Name] <String> [-Force] [-ResourceGroupName] <String> [-Profile <AzureProfile>]
 [<CommonParameters>]
```

### IdParameterSetName
```
Remove-AzureVM [-Name] <String> [-Force] -Id <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureVM** cmdlet removes a virtual machine from Azure.

## EXAMPLES

### Example 1: Remove a virtual machine
```
PS C:\>Remove-AzureVM -ResourceGroupName "ResourceGroup11" -Name "VirtualMachine07"
```

This command removes the virtual machine named VirtualMachine07 in the resource group ResourceGroup11.

## PARAMETERS

### -Force
Forces the command to run without asking for user confirmation.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the name of the virtual machine to remove.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ResourceName, VMName

Required: True
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
Parameter Sets: ResourceGroupNameParameterSetName
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Id
The resource group name.

```yaml
Type: String
Parameter Sets: IdParameterSetName
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

[Get-AzureVM](xref:ResourceManager/AzureRM.Compute/v0.9.8/Get-AzureVM.md)

[New-AzureVM](xref:ResourceManager/AzureRM.Compute/v0.9.8/New-AzureVM.md)

[Restart-AzureVM](xref:ResourceManager/AzureRM.Compute/v0.9.8/Restart-AzureVM.md)

[Start-AzureVM](xref:ResourceManager/AzureRM.Compute/v0.9.8/Start-AzureVM.md)

[Stop-AzureVM](xref:ResourceManager/AzureRM.Compute/v0.9.8/Stop-AzureVM.md)

[Update-AzureVM](xref:ResourceManager/AzureRM.Compute/v0.9.8/Update-AzureVM.md)


