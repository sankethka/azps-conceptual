---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 569E1687-2E48-4CA8-85D3-6113675274CC
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v1.6.1/Update-AzureVM.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v1.6.1/Update-AzureVM.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v1.6.1/Update-AzureVM.md
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

# Update-AzureVM

## SYNOPSIS
Modifies the configuration of an Azure virtual machine.

## SYNTAX

```
Update-AzureVM [-Name] <String> -VM <PersistentVM> [-ServiceName] <String> [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Update-AzureVM** cmdlet accepts update information for the specified virtual machine and initiates the update.
You can add or remove data disks, modify the cache mode of data or operating system disks, change the network endpoints, or change the size of the virtual machine.

## EXAMPLES

### Example 1: Update the size of a virtual machine
```
PS C:\>Get-AzureVM -ServiceName "ContosoService03" -Name "VirtualMachine04" | Set-AzureVMSize -InstanceSize "Medium" | Update-AzureVM
```

This command changes the size of the virtual machine named VirtualMachine04, running in the service named ContosoService03, to Medium.

### Example 2: Add a data disk to a virtual machine
```
PS C:\>Get-AzureVM -ServiceName "ContosoService03" -Name "VirtualMachine05" | Add-AzureDataDisk -CreateNew -MediaLocation "https://ContosoStore1.blob.core.azure.com/vhds/Disk22.vhd" -DiskSizeInGB 128 -DiskLabel "Data-128" -LUN 0 | Update-AzureVM
```

This command adds a new data disk to the virtual machine named VirtualMachine05, running in the service named ContosoService03.

## PARAMETERS

### -Name
Specifies the name of the virtual machine to update.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -VM
Specifies the virtual machine object that includes updated settings.

```yaml
Type: PersistentVM
Parameter Sets: (All)
Aliases: InputObject

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ServiceName
Specifies the name of the Azure service.

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

### -Profile
ps_azureprofile_description

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureVM](xref:ServiceManagement/Azure.Service/v1.6.1/Get-AzureVM.md)

[New-AzureVM](xref:ServiceManagement/Azure.Service/v1.6.1/New-AzureVM.md)

[New-AzureVMConfig](xref:ServiceManagement/Azure.Service/v1.6.1/New-AzureVMConfig.md)

[Remove-AzureVM](xref:ServiceManagement/Azure.Service/v1.6.1/Remove-AzureVM.md)

[Restart-AzureVM](xref:ServiceManagement/Azure.Service/v1.6.1/Restart-AzureVM.md)

[Set-AzureVMSize](xref:ServiceManagement/Azure.Service/v1.6.1/Set-AzureVMSize.md)

[Start-AzureVM](xref:ServiceManagement/Azure.Service/v1.6.1/Start-AzureVM.md)

[Stop-AzureVM](xref:ServiceManagement/Azure.Service/v1.6.1/Stop-AzureVM.md)


