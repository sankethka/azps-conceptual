---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: BBEE4727-DE53-4A1B-B280-DD69A6EBDD55
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v1.3.4/Set-AzureRmVMSourceImage.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v1.3.4/Set-AzureRmVMSourceImage.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v1.3.4/Set-AzureRmVMSourceImage.md
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

# Set-AzureRmVMSourceImage

## SYNOPSIS
Specifies the platform image for a virtual machine.

## SYNTAX

```
Set-AzureRmVMSourceImage [-VM] <PSVirtualMachine> [-PublisherName] <String> [-Offer] <String> [-Skus] <String>
 [-Version] <String> [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmVMSourceImage** cmdlet specifies the platform image to use for a virtual machine.

## EXAMPLES

### Example 1: Set values for an image
```
PS C:\>AvailabilitySet = Get-AzureRmAvailabilitySet -ResourceGroupName "ResourceGroup11" -Name "AvailabilitySet03"
PS C:\> $VirtualMachine = New-AzureRmVMConfig -VMName "VirtualMachine07" -VMSize "Standard_A1" -AvailabilitySetID $AvailabilitySet.Id 
PS C:\> Set-AzureRmVMSourceImage -VM $VirtualMachine -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2012-R2-Datacenter" -Version "latest"
```

The first command gets the availability set named AvailablitySet03 in the resource group named ResourceGroup11, and then stores that object in the $AvailabilitySet variable.

The second command creates a virtual machine object, and then stores it in the $VirtualMachine variable.
The command assigns a name and size to the virtual machine.
The virtual machine belongs to the availability set stored in $AvailabilitySet.

The final command sets values for publisher name, offer, SKU, and version.
The **Get-AzureRmVMImagePublisher**, **Get-AzureRmVMImageOffer**, **Get-AzureRmVMImageSku**, and **Get-AzureRmVMImage** cmdlets can discover these settings.

## PARAMETERS

### -VM
Specifies the local virtual machine object to configure.

```yaml
Type: PSVirtualMachine
Parameter Sets: (All)
Aliases: VMProfile

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -PublisherName
Specifies the name of a publisher of a VMImage.
To obtain a publisher, use the Get-AzureRmVMImagePublisher cmdlet.

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

### -Offer
Specifies the type of VMImage offer.
To obtain an image offer, use the Get-AzureRmVMImageOffer cmdlet.

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

### -Skus
Specifies a VMImage SKU.
To obtain SKUs, use the Get-AzureRmVMImageSku cmdlet.

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

### -Version
Specifies a version of a VMImage.
To use the latest version, specify a value of latest instead of a particular version.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 4
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

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureRmAvailabilitySet](xref:ResourceManager/AzureRM.Compute/v1.3.4/Get-AzureRmAvailabilitySet.md)

[Get-AzureRmVMImage](xref:ResourceManager/AzureRM.Compute/v1.3.4/Get-AzureRmVMImage.md)

[Get-AzureRmVMImageOffer](xref:ResourceManager/AzureRM.Compute/v1.3.4/Get-AzureRmVMImageOffer.md)

[Get-AzureRmVMImagePublisher](xref:ResourceManager/AzureRM.Compute/v1.3.4/Get-AzureRmVMImagePublisher.md)

[Get-AzureRmVMImageSku](xref:ResourceManager/AzureRM.Compute/v1.3.4/Get-AzureRmVMImageSku.md)

[New-AzureRmVMConfig](xref:ResourceManager/AzureRM.Compute/v1.3.4/New-AzureRmVMConfig.md)


