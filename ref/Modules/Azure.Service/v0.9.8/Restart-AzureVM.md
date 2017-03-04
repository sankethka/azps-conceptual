---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: D88F22E0-CEF0-47F8-92AA-C4367C91F003
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Restart-AzureVM.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Restart-AzureVM.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Restart-AzureVM.md
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

# Restart-AzureVM

## SYNOPSIS
Restarts an Azure virtual machine.

## SYNTAX

### ByName (Default)
```
Restart-AzureVM [-Name] <String> [-ServiceName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

### Input
```
Restart-AzureVM -VM <PersistentVM> [-ServiceName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Restart-AzureVM** cmdlet requests a restart of an Azure virtual machine.

## EXAMPLES

### Example 1: Restart a virtual machine
```
PS C:\>Restart-AzureVM -ServiceName "MyService01" -Name "MyVM"
```

This command restarts the VirtualMachine27 virtual machine running in the Azure service named Service01.

### Example 2: Restart a virtual machine by using a virtual machine object
```
PS C:\>Get-AzureVM -ServiceName "MyService01" -Name "VirtualMachine27" | Restart-AzureVM
```

This command retrieves the virtual machine object for the virtual machine named MyVM and then restarts it.

## PARAMETERS

### -Name
Specifies the name of the virtual machine to restart.

```yaml
Type: String
Parameter Sets: ByName
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ServiceName
Specifies the name of the Azure service that contains the virtual machine to restart.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VM
Specifies a virtual machine object that identifies the virtual machine to restart.

```yaml
Type: PersistentVM
Parameter Sets: Input
Aliases: InputObject

Required: True
Position: Named
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureVM](xref:ServiceManagement/Azure.Service/v0.9.8/Get-AzureVM.md)

[Remove-AzureVM](xref:ServiceManagement/Azure.Service/v0.9.8/Remove-AzureVM.md)

[Start-AzureVM](xref:ServiceManagement/Azure.Service/v0.9.8/Start-AzureVM.md)

[Stop-AzureVM](xref:ServiceManagement/Azure.Service/v0.9.8/Stop-AzureVM.md)

[Update-AzureVM](xref:ServiceManagement/Azure.Service/v0.9.8/Update-AzureVM.md)


