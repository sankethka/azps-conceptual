---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 905DA55F-9488-4206-AC00-6C89CDEF465D
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Remove-WAPackVM.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Remove-WAPackVM.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Remove-WAPackVM.md
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

# Remove-WAPackVM

## SYNOPSIS
Removes virtual machine objects.

## SYNTAX

```
Remove-WAPackVM [-VM] <VirtualMachine> [-PassThru] [-Force] [-Profile <AzureSMProfile>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
ps_redir_wap This topic describes the cmdlet in the 0.8.1 version of the Microsoft Azure PowerShell module.
To find out the version of the module you're using, from the Azure PowerShell console, type (get-module azure).version.

The **Remove-WAPackVM** cmdlet removes virtual machine objects.

## EXAMPLES

### Example 1: Remove a virtual machine
```
PS C:\>$VirtualMachine = Get-WAPackVM -Name "ContosoV126"
PS C:\> Remove-WAPackVM -VM $VirtualMachine
```

The first command gets the virtual machine named ContosoV126 by using the **Get-WAPackVM** cmdlet, and then stores that object in the $VirtualMachine variable.

The second command removes the virtual machine stored in $VirtualMachine.
The command prompts you for confirmation.

### Example 2: Remove a virtual machine without confirmation
```
PS C:\>$VirtualMachine = Get-WAPackVM -Name "ContosoV126"
PS C:\> Remove-WAPackVM -VM $VirtualMachine -Force
```

The first command gets the virtual machine named ContosoV126 by using the **Get-WAPackVM** cmdlet, and then stores that object in the $VirtualMachine variable.

The second command removes the virtual machine stored in $VirtualMachine.
This command includes the *Force* parameter.
The command does not prompt you for confirmation.

## PARAMETERS

### -Force
Indicates that the cmdlet removes a virtual machine without prompting you for confirmation.

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

### -PassThru
Indicates that the cmdlet returns a Boolean value.
If the operation succeeds, the cmdlet returns a value of $True.
Otherwise, it returns a value of $False.
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

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: False
Accept pipeline input: False
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

[Restart-WAPackVM](xref:ServiceManagement/Azure.Compute/v1.6.1/Restart-WAPackVM.md)

[Resume-WAPackVM](xref:ServiceManagement/Azure.Compute/v1.6.1/Resume-WAPackVM.md)

[Set-WAPackVM](xref:ServiceManagement/Azure.Compute/v1.6.1/Set-WAPackVM.md)

[Start-WAPackVM](xref:ServiceManagement/Azure.Compute/v1.6.1/Start-WAPackVM.md)

[Stop-WAPackVM](xref:ServiceManagement/Azure.Compute/v1.6.1/Stop-WAPackVM.md)

[Suspend-WAPackVM](xref:ServiceManagement/Azure.Compute/v1.6.1/Suspend-WAPackVM.md)


