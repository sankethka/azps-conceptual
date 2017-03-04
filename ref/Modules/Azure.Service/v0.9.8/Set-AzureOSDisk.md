---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: EB90E879-02DF-4C75-A49F-EC7090347CDB
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Set-AzureOSDisk.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Set-AzureOSDisk.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Set-AzureOSDisk.md
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

# Set-AzureOSDisk

## SYNOPSIS
Modifies the host cache mode of an Azure virtual machine.

## SYNTAX

### NoResize
```
Set-AzureOSDisk [-HostCaching] <String> -VM <IPersistentVM> [-Profile <AzureProfile>] [<CommonParameters>]
```

### Resize
```
Set-AzureOSDisk [[-HostCaching] <String>] [-ResizedSizeInGB] <Int32> -VM <IPersistentVM>
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureOSDisk** cmdlet modifies the host cache mode of the operating system disk of an Azure virtual machine.
The supported host cache modes are ReadOnly and ReadWrite.
If you run this cmdlet on a virtual machine that is running, that virtual machine restarts.

## EXAMPLES

### Example 1: Set the host cache mode to ReadOnly by using the pipeline
```
PS C:\>Get-AzureVM -ServiceName "ContosoService" -Name "VirtualMachine02" | Set-AzureOSDisk -HostCaching "ReadOnly"
```

This command gets the virtual machine named VirtualMachine02 in the service named ContosoService by using the **Get-AzureVM** cmdlet.
The command passes the virtual machine to the current cmdlet by using the pipeline operator.
The current cmdlet sets the host cache mode of the operating system disk of that virtual machine to be ReadOnly.

### Example 2: Set the host cache mode to ReadWrite
```
PS C:\>$VM = Get-AzureVM -ServiceName "ContosoService" -Name "VirtualMachine02"
PS C:\> Set-AzureOSDisk "ReadWrite" -VM $myVM2
```

The first command gets the virtual machine named VirtualMachine02 in the service named ContosoService, and then stores it in the variable.

The second command sets the host cache mode of the operating system disk of that virtual machine to be ReadWrite.

## PARAMETERS

### -HostCaching
Specifies the host cache attribute for the operating system disk.
Valid values are: 

- ReadOnly 
- ReadWrite

```yaml
Type: String
Parameter Sets: NoResize
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: Resize
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VM
Specifies the virtual machine for which this cmdlet modifies the operating system disk.
To obtain a virtual machine object, use the Get-AzureVM cmdlet.

```yaml
Type: IPersistentVM
Parameter Sets: (All)
Aliases: InputObject

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ResizedSizeInGB
Specifies a new size, in gigabytes, for the operating system disk.
The size must be larger than the current size.

```yaml
Type: Int32
Parameter Sets: Resize
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AzureVMImage](xref:ServiceManagement/Azure.Service/v0.9.8/Add-AzureVMImage.md)

[Get-AzureOSDisk](xref:ServiceManagement/Azure.Service/v0.9.8/Get-AzureOSDisk.md)

[Get-AzureVM](xref:ServiceManagement/Azure.Service/v0.9.8/Get-AzureVM.md)

[Get-AzureVMImage](xref:ServiceManagement/Azure.Service/v0.9.8/Get-AzureVMImage.md)

[Set-AzureDataDisk](xref:ServiceManagement/Azure.Service/v0.9.8/Set-AzureDataDisk.md)

[Update-AzureVM](xref:ServiceManagement/Azure.Service/v0.9.8/Update-AzureVM.md)


