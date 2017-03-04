---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 7013FB4B-8A4A-48B9-A6D8-3EBC9919219A
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Get-AzureVMImageDiskConfigSet.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Get-AzureVMImageDiskConfigSet.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Get-AzureVMImageDiskConfigSet.md
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

# Get-AzureVMImageDiskConfigSet

## SYNOPSIS
Gets a disk configuration set object from the input image context.

## SYNTAX

```
Get-AzureVMImageDiskConfigSet [[-ImageContext] <OSImageContext>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureVMImageDiskConfigSet** cmdlet gets a disk configuration set object from the input image context.

## EXAMPLES

### Example 1: Get a disk configuration set object from a virtual machine
```
PS C:\>Get-AzureVMImage -ImageName $Img | Get-AzureVMImageDiskConfigSet
```

This command gets a disk configuration set object from a virtual machine.

## PARAMETERS

### -ImageContext
Specifies the virtual machine image context.

```yaml
Type: OSImageContext
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.WindowsAzure.Commands.ServiceManagement.Model.VirtualMachineImageDiskConfigSet

## NOTES

## RELATED LINKS

[New-AzureVMImageDiskConfigSet](xref:ServiceManagement/Azure.Service/v0.9.8/New-AzureVMImageDiskConfigSet.md)

[Get-AzureVMImage](xref:ServiceManagement/Azure.Service/v0.9.8/Get-AzureVMImage.md)


