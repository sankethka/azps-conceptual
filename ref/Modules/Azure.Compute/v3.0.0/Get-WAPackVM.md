---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: ACA3DFD8-9CD5-4C1B-B990-B9D2D0BAC376
updated_at: 1/12/2017 6:01 PM
ms.date: 1/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.0.0/Get-WAPackVM.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.0.0/Get-WAPackVM.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/a72a97ed452f82624cbe43d1ad240418d55beae2/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.0.0/Get-WAPackVM.md
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

# Get-WAPackVM

## SYNOPSIS
Gets virtual machine objects.

## SYNTAX

### Empty (Default)
```
Get-WAPackVM [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### FromName
```
Get-WAPackVM [[-Name] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### FromId
```
Get-WAPackVM [[-ID] <Guid>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
These topics are deprecated and will be removed in the future.
For the updated topics, see  [Azure WAPack Cmdlets](http://msdn.microsoft.com/library/dn776450.aspx) (http://msdn.microsoft.com/library/dn776450.aspx).
This topic describes the cmdlet in the 0.8.1 version of the Microsoft Azure PowerShell module.
To find out the version of the module you're using, from the Azure PowerShell console, type `(Get-Module -Name Azure).Version`.

The **Get-WAPackVM** cmdlet gets virtual machine objects.

## EXAMPLES

### Example 1: Get a virtual machine by using a name
```
PS C:\> Get-WAPackVM -Name "ContosoV126"
```

This command gets the virtual machine named ContosoV126.

### Example 2: Get a virtual machine by using an ID
```
PS C:\> Get-WAPackVM -Id 66242D17-189F-480D-87CF-8E1D749998C8
```

This command gets the virtual machine that has the specified ID.

### Example 3: Get all virtual machines
```
PS C:\> Get-WAPackVM
```

This command gets all virtual machines.

## PARAMETERS

### -ID
Specifies the unique ID of a virtual machine.

```yaml
Type: Guid
Parameter Sets: FromId
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of a virtual machine.

```yaml
Type: String
Parameter Sets: FromName
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

```yaml
Type: AzureSMProfile
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

[New-WAPackVM](xref:ServiceManagement/Azure.Compute/v3.0.0/New-WAPackVM.md)

[Remove-WAPackVM](xref:ServiceManagement/Azure.Compute/v3.0.0/Remove-WAPackVM.md)

[Restart-WAPackVM](xref:ServiceManagement/Azure.Compute/v3.0.0/Restart-WAPackVM.md)

[Resume-WAPackVM](xref:ServiceManagement/Azure.Compute/v3.0.0/Resume-WAPackVM.md)

[Set-WAPackVM](xref:ServiceManagement/Azure.Compute/v3.0.0/Set-WAPackVM.md)

[Start-WAPackVM](xref:ServiceManagement/Azure.Compute/v3.0.0/Start-WAPackVM.md)

[Stop-WAPackVM](xref:ServiceManagement/Azure.Compute/v3.0.0/Stop-WAPackVM.md)

[Suspend-WAPackVM](xref:ServiceManagement/Azure.Compute/v3.0.0/Suspend-WAPackVM.md)

[Get-WAPackVMOSDisk](xref:ServiceManagement/Azure.Compute/v3.0.0/Get-WAPackVMOSDisk.md)


