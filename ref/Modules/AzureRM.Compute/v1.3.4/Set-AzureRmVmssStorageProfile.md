---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: DF8920E8-10DC-480D-BD93-D3878F0E04EB
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v1.3.4/Set-AzureRmVmssStorageProfile.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v1.3.4/Set-AzureRmVmssStorageProfile.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v1.3.4/Set-AzureRmVmssStorageProfile.md
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

# Set-AzureRmVmssStorageProfile

## SYNOPSIS
Sets the storage profile properties for the VMSS.

## SYNTAX

```
Set-AzureRmVmssStorageProfile [-VirtualMachineScaleSet] <VirtualMachineScaleSet>
 [[-ImageReferencePublisher] <String>] [[-ImageReferenceOffer] <String>] [[-ImageReferenceSku] <String>]
 [[-ImageReferenceVersion] <String>] [[-Name] <String>] [[-OsDiskCaching] <CachingTypes>]
 [[-OsDiskCreateOption] <DiskCreateOptionTypes>] [[-OsDiskOsType] <OperatingSystemTypes>] [[-Image] <String>]
 [[-VhdContainer] <String[]>] [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmVmssStorageProfile** cmdlet sets the storage profile properties for the Virtual Machine Scale Set (VMSS).

## EXAMPLES

### Example 1: Set the storage profile properties for the VMSS
```
PS C:\>Set-AzureRmVmssStorageProfile -VirtualMachineScaleSet "ContosoVMSS" -Name "Test" -OsDiskCreateOption "FromImage" -OsDiskCaching "None" `
            -ImageReferenceOffer $ImgRef.Offer -ImageReferenceSku $ImgRef.Skus -ImageReferenceVersion $ImgRef.Version `
            -ImageReferencePublisher $ImgRef.PublisherName -VhdContainer $VhdContainer
```

This command sets the storage profile properties for the VMSS named ContosoVMSS.

## PARAMETERS

### -VirtualMachineScaleSet
Specifies the VMSS object.
To obtain the object, use the New-AzureRmVmssConfig object.

```yaml
Type: VirtualMachineScaleSet
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ImageReferencePublisher
Specifies the name of a publisher of a VMImage.
To obtain a publisher, use the Get-AzureRmVMImagePublisher cmdlet.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ImageReferenceOffer
Specifies the type of virtual machine image (VMImage) offer.
To obtain an image offer, use the Get-AzureRmVMImageOffer cmdlet.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ImageReferenceSku
Specifies the VMImage SKU.
To obtain SKUs, use the Get-AzureRmVMImageSku cmdlet.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ImageReferenceVersion
Specifies the version of the VMImage.
To use the latest version, specify a value of latest instead of a particular version.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of the operating system disk.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -OsDiskCaching
Specifies the caching mode of the operating system disk. 
psdx_paramvalues

- ReadOnly
- ReadWrite

The default value is ReadWrite.
If you change the caching value, the cmdlet will restart the virtual machine.

This setting affects the consistency and performance of the disk.

```yaml
Type: CachingTypes
Parameter Sets: (All)
Aliases: 

Required: False
Position: 6
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -OsDiskCreateOption
Specifies how this cmdlet creates the VMSS virtual machines.

psdx_paramvalues

- Attach : This value is used when you are using a specialized disk to create the VMSS virtual machine. 
- FromImage : This value is used when you are using an image to create the VMSS virtual machine.
If you are using a platform image, you will also use the *imageReference* parameter.

```yaml
Type: DiskCreateOptionTypes
Parameter Sets: (All)
Aliases: 

Required: False
Position: 7
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -OsDiskOsType
Specifies the type of operating system on the disk.
This is only needed for user image scenarios and not for a platform image.

```yaml
Type: OperatingSystemTypes
Parameter Sets: (All)
Aliases: 

Required: False
Position: 8
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Image
Specifies the blob URI for the user image.
VMSS creates an operating system disk in the same container of the user image.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 9
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VhdContainer
Specifies the container URLs that are used to store operating system disks for the VMSS.

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: 10
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

###  
This cmdlet does not generate any output.

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureRmVMImageOffer](xref:ResourceManager/AzureRM.Compute/v1.3.4/Get-AzureRmVMImageOffer.md)

[Get-AzureRmVMImagePublisher](xref:ResourceManager/AzureRM.Compute/v1.3.4/Get-AzureRmVMImagePublisher.md)

[Get-AzureRmVMImageSku](xref:ResourceManager/AzureRM.Compute/v1.3.4/Get-AzureRmVMImageSku.md)

[New-AzureRmVmssConfig](xref:ResourceManager/AzureRM.Compute/v1.3.4/New-AzureRmVmssConfig.md)


