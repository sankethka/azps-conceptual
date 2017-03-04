---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 3820F15E-E66E-4106-8B12-C15535B35F95
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v0.9.8/Save-AzureVMImage.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v0.9.8/Save-AzureVMImage.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v0.9.8/Save-AzureVMImage.md
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

# Save-AzureVMImage

## SYNOPSIS
Captures a virtual machine as a VMImage.

## SYNTAX

### ResourceGroupNameParameterSetName (Default)
```
Save-AzureVMImage -Name <String> [-DestinationContainerName] <String> [-VHDNamePrefix] <String> [-Overwrite]
 [-Path <String>] [-ResourceGroupName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

### IdParameterSetName
```
Save-AzureVMImage -Name <String> [-DestinationContainerName] <String> [-VHDNamePrefix] <String> [-Overwrite]
 [-Path <String>] -Id <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Save-AzureVMImage** cmdlet captures a virtual machine as a **VMImage**.
Before you create a virtual machine image, sysprep the virtual machine, and then mark it as generalized by using the **Set-AzureVM** cmdlet.

The output of this cmdlet is a JavaScript Object Notation (JSON) template.
You can deploy virtual machines from your captured image.

## EXAMPLES

### Example 1: Capture a virtual machine
```
PS C:\>Set-AzureVM -ResourceGroupName "ResourceGroup11" -Name "VirtualMachine07" -Generalized 
PS C:\> Save-AzureVMImage -ResourceGroupName "ResourceGroup11" -VMName "VirtualMachine07" -DestinationContainerName "VMContainer01" -VHDNamePrefix "VM07"
```

The first marks the virtual machine named VirtualMachine07 as generalized.

The second command captures a virtual machine named VirtualMachine07 as a **VMImage**.
The **Output** property returns a JSON template.

## PARAMETERS

### -DestinationContainerName
Specifies the name of a container. The virtual hard disks (VHDs) that constitute the VMImage reside in the container that this parameter specifies. If the VHDs are spread across multiple storage accounts, this cmdlet creates one container that has this name in each storage account.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Overwrite
Indicates that this cmdlet overwrites any VHDs that have the same prefix in the destination container.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
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
Parameter Sets: ResourceGroupNameParameterSetName
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VHDNamePrefix
Specifies the prefix in the name of the blobs that constitute the storage profile of the VMImage. For example, a prefix vhdPrefix for operating system disk results in the name vhdPrefix-osdisk.

```yaml
Type: String
Parameter Sets: (All)
Aliases: VirtualHardDiskNamePrefix

Required: True
Position: 4
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

### -Name
The VM Name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: VMName

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Path
The file path in which the template of the captured image is stored

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
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

[Get-AzureVMImage](xref:ResourceManager/AzureRM.Compute/v0.9.8/Get-AzureVMImage.md)

[Get-AzureVMImageOffer](xref:ResourceManager/AzureRM.Compute/v0.9.8/Get-AzureVMImageOffer.md)

[Get-AzureVMImagePublisher](xref:ResourceManager/AzureRM.Compute/v0.9.8/Get-AzureVMImagePublisher.md)

[Get-AzureVMImageSku](xref:ResourceManager/AzureRM.Compute/v0.9.8/Get-AzureVMImageSku.md)

[Set-AzureVM](xref:ResourceManager/AzureRM.Compute/v0.9.8/Set-AzureVM.md)


