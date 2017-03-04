---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 7978A980-40C9-46BD-9C40-5ECC2650D0AE
updated_at: 1/11/2017 6:32 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/New-AzureVMImageDiskConfigSet.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/New-AzureVMImageDiskConfigSet.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/34e1c9880d0370f1dd5f83ea8d5ee7f59cb5e559/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/New-AzureVMImageDiskConfigSet.md
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

# New-AzureVMImageDiskConfigSet

## SYNOPSIS
Creates a disk configuration set object.

## SYNTAX

```
New-AzureVMImageDiskConfigSet [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureVMImageDiskConfigSet** cmdlet creates a disk configuration set object that is passed to the image update cmdlet.
It encapsulates the OSDiskConfig and the DataDiskConfig object.
Use the Set-AzureVMImageOSDiskConfig and Set-AzureVMImageDataDiskConfig cmdlets to set the OS Disk and Data Disk properties for the virtual machine image.

## EXAMPLES

### Example 1: Create a disk configuration set object
```
PS C:\> $Disk = New-AzureDiskConfigSet
PS C:\> $Disk = Set-AzureOSDiskConfig -DiskConfig $Disk -HostCaching ReadWrite
PS C:\> $Disk = Set-AzureDataDiskConfig -DiskConfig $Disk -Name "Test" -HostCaching "ReadWrite" -LUN 0
PS C:\> Update-AzureVMImage -ImageName "Image2" -Label "Test1" -Description "Test1" -DiskConfigSet $Disk;
```

This command creates a disk configuration set object and stores the results in the variable named $Disk.
After the disk configuration is created, it is used to set the OSDiskConfig and DataDiskConfig.
Then the virtual machine is updated with the configuration.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.WindowsAzure.Commands.ServiceManagement.Model.VirtualMachineImageDiskConfigSet

## NOTES

## RELATED LINKS

[Get-AzureVMImageDiskConfigSet](xref:ServiceManagement/Azure.Service/v3.0.0/Get-AzureVMImageDiskConfigSet.md)

[Set-AzureVMImageOSDiskConfig](xref:ServiceManagement/Azure.Service/v3.0.0/Set-AzureVMImageOSDiskConfig.md)

[Set-AzureVMImageDataDiskConfig](xref:ServiceManagement/Azure.Service/v3.0.0/Set-AzureVMImageDataDiskConfig.md)


