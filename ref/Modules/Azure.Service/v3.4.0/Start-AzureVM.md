---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
ms.assetid: C60F78AE-3803-4D9F-A4F3-EAA42052C0E4
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.4.0/Start-AzureVM.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.4.0/Start-AzureVM.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.4.0/Start-AzureVM.md
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

# Start-AzureVM

## SYNOPSIS
Starts an Azure virtual machine.

## SYNTAX

### ByName (Default)
```
Start-AzureVM [-Name] <String[]> [-ServiceName] <String> [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### Input
```
Start-AzureVM -VM <IPersistentVM[]> [-ServiceName] <String> [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Start-AzureVM** cmdlet requests the start of an Azure virtual machine.

## EXAMPLES

### Example 1: Start a virtual machine
```
PS C:\> Start-AzureVM -ServiceName "ContosoService03" -Name "VirtualMachine04"
```

This command starts the virtual machine named VirtualMachine04 that runs in the Azure service named ContosoService03.

### Example 2: Start a virtual machine by using a virtual machine object
```
PS C:\> Get-AzureVM -ServiceName "ContosoService03" -Name "DatabaseServer" | Start-AzureVM
```

This command retrieves the virtual machine object for the virtual machine whose name is DatabaseServer, and then requests to start it.

## PARAMETERS

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

### -Name
Specifies the name of the virtual machine to start.

```yaml
Type: String[]
Parameter Sets: ByName
Aliases: 

Required: True
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

### -ServiceName
Specifies the name of the Azure service that contains the virtual machine to start.

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
Specifies a virtual machine object that identifies the virtual machine to start.

```yaml
Type: IPersistentVM[]
Parameter Sets: Input
Aliases: InputObject

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureVM](xref:ServiceManagement/Azure.Service/v3.4.0/Get-AzureVM.md)

[Remove-AzureVM](xref:ServiceManagement/Azure.Service/v3.4.0/Remove-AzureVM.md)

[Restart-AzureVM](xref:ServiceManagement/Azure.Service/v3.4.0/Restart-AzureVM.md)

[Stop-AzureVM](xref:ServiceManagement/Azure.Service/v3.4.0/Stop-AzureVM.md)

[Update-AzureVM](xref:ServiceManagement/Azure.Service/v3.4.0/Update-AzureVM.md)


