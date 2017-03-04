---
external help file: Microsoft.Azure.Commands.Compute.dll-Help.xml
ms.assetid: A1EA7D34-A8B4-4FA0-BD8C-3E846715AFBA
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.4.0/Set-AzureRmVMPlan.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.4.0/Set-AzureRmVMPlan.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.Compute/v2.4.0/Set-AzureRmVMPlan.md
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

# Set-AzureRmVMPlan

## SYNOPSIS
Sets the Marketplace plan information on a virtual machine.

## SYNTAX

```
Set-AzureRmVMPlan [-VM] <PSVirtualMachine> [-Name] <String> [[-Product] <String>] [[-PromotionCode] <String>]
 [[-Publisher] <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmVMPlan** cmdlet sets the Azure Marketplace plan information for a virtual machine.

Before being able to deploy a Marketplace image through the command-line, programmatic access must be enabled or the virtual machine must be deployed by using the Azure portal.

## EXAMPLES

## PARAMETERS

### -Name
Specifies the name of the image from the Marketplace.
This is the same value that is returned by the Get-AzureRmVMImageSku cmdlet.
For more information about how to find image information, see Navigating and Selecting Azure Virtual Machine images with PowerShell and the Azure CLIhttps://azure.microsoft.com/documentation/articles/resource-groups-vm-searching/ (https://azure.microsoft.com/documentation/articles/resource-groups-vm-searching/) in the Microsoft Azure documentation.

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

### -Product
Specifies the product of the image from the Marketplace.
This is the same information as the **Offer** value of the **imageReference** element.

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

### -PromotionCode
Specifies a promotion code.

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

### -Publisher
Specifies the publisher of the image.
You can find this information by using the Get-AzureRmVMImagePublisher cmdlet.

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

### -VM
Specifies the virtual machine object for which to set a Marketplace plan.
You can use the Get-AzureRmVM cmdlet to obtain a virtual machine object.
You can use the New-AzureRmVMConfig cmdlet to create a virtual machine object.

```yaml
Type: PSVirtualMachine
Parameter Sets: (All)
Aliases: VMProfile

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureRmVM](xref:ResourceManager/AzureRM.Compute/v2.4.0/Get-AzureRmVM.md)

[Get-AzureRmVMImagePublisher](xref:ResourceManager/AzureRM.Compute/v2.4.0/Get-AzureRmVMImagePublisher.md)

[Get-AzureRmVMImageSku](xref:ResourceManager/AzureRM.Compute/v2.4.0/Get-AzureRmVMImageSku.md)

[New-AzureRmVMConfig](xref:ResourceManager/AzureRM.Compute/v2.4.0/New-AzureRmVMConfig.md)
