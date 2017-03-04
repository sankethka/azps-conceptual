---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 2A15E4B7-B10F-412E-94BD-ADF86168A7A5
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Resume-WAPackVM.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Resume-WAPackVM.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Resume-WAPackVM.md
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

# Resume-WAPackVM

## SYNOPSIS
Resumes paused virtual machines.

## SYNTAX

```
Resume-WAPackVM [-VM] <VirtualMachine> [-PassThru] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
ps_redir_wap This topic describes the cmdlet in the 0.8.1 version of the Microsoft Azure PowerShell module.
To find out the version of the module you're using, from the Azure PowerShell console, type (get-module azure).version.

The **Resume-WAPackVM** cmdlet resumes paused virtual machines.

## EXAMPLES

### Example 1: Resume a virtual machine
```
PS C:\>$VirtualMachine = Get-WAPackVM -Name "ContosoV126"PS C:\> Resume-WAPackVM -VM $VirtualMachine
```

The first command gets the virtual machine named ContosoV126 by using the **Get-WAPackVM** cmdlet, and then stores that object in the $VirtualMachine variable.

The second command resumes the virtual machine stored in $VirtualMachine.

## PARAMETERS

### -PassThru
Returns an object representing the item with which you are working.
By default, this cmdlet does not generate any output.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VM
Specifies a virtual machine.
To obtain a virtual machine, use the **Get-WAPackVM** cmdlet.

```yaml
Type: VirtualMachine
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Profile
In-memory profile.

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

[Get-WAPackVM](xref:ServiceManagement/Azure.Compute/v1.6.1/Get-WAPackVM.md)

[New-WAPackVM](xref:ServiceManagement/Azure.Compute/v1.6.1/New-WAPackVM.md)

[Remove-WAPackVM](xref:ServiceManagement/Azure.Compute/v1.6.1/Remove-WAPackVM.md)

[Restart-WAPackVM](xref:ServiceManagement/Azure.Compute/v1.6.1/Restart-WAPackVM.md)

[Set-WAPackVM](xref:ServiceManagement/Azure.Compute/v1.6.1/Set-WAPackVM.md)

[Start-WAPackVM](xref:ServiceManagement/Azure.Compute/v1.6.1/Start-WAPackVM.md)

[Stop-WAPackVM](xref:ServiceManagement/Azure.Compute/v1.6.1/Stop-WAPackVM.md)

[Suspend-WAPackVM](xref:ServiceManagement/Azure.Compute/v1.6.1/Suspend-WAPackVM.md)


