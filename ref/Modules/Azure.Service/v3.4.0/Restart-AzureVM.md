---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
ms.assetid: 596B8A6F-D3C2-4170-BCD7-B7A1CDB656D8
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.4.0/Restart-AzureVM.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.4.0/Restart-AzureVM.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.4.0/Restart-AzureVM.md
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
Restart-AzureVM [-ServiceName] <String> [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

### RestartByName
```
Restart-AzureVM [-Name] <String> [-ServiceName] <String> [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### RedeployByName
```
Restart-AzureVM [-Name] <String> [-Redeploy] [-ServiceName] <String> [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### RestartInput
```
Restart-AzureVM -VM <PersistentVM> [-ServiceName] <String> [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### RedeployInput
```
Restart-AzureVM -VM <PersistentVM> [-Redeploy] [-ServiceName] <String> [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Restart-AzureVM** cmdlet requests a restart of an Azure virtual machine.

## EXAMPLES

### Example 1: Restart a virtual machine
```
PS C:\> Restart-AzureVM -ServiceName "MyService01" -Name "MyVM"
```

This command restarts the VirtualMachine27 virtual machine running in the Azure service named Service01.

### Example 2: Restart a virtual machine by using a virtual machine object
```
PS C:\> Get-AzureVM -ServiceName "MyService01" -Name "VirtualMachine27" | Restart-AzureVM
```

This command retrieves the virtual machine object for the virtual machine named MyVM and then restarts it.

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
Specifies the name of the virtual machine to restart.

```yaml
Type: String
Parameter Sets: RestartByName, RedeployByName
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

### -Redeploy
Indicates that the cmdlet redeploys the virtual machine.

```yaml
Type: SwitchParameter
Parameter Sets: RedeployByName, RedeployInput
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
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
Parameter Sets: RestartInput, RedeployInput
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

[Start-AzureVM](xref:ServiceManagement/Azure.Service/v3.4.0/Start-AzureVM.md)

[Stop-AzureVM](xref:ServiceManagement/Azure.Service/v3.4.0/Stop-AzureVM.md)

[Update-AzureVM](xref:ServiceManagement/Azure.Service/v3.4.0/Update-AzureVM.md)


