---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 4140906B-EB57-4F31-9EFE-EAA5FE4D747C
updated_at: 1/11/2017 6:32 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureVM.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureVM.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/34e1c9880d0370f1dd5f83ea8d5ee7f59cb5e559/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Get-AzureVM.md
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

# Get-AzureVM

## SYNOPSIS
Retrieves information from one or more Azure virtual machines.

## SYNTAX

### ListAllVMs (Default)
```
Get-AzureVM [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### GetVMByServiceAndVMName
```
Get-AzureVM [-ServiceName] <String> [[-Name] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureVM** cmdlet retrieves information about virtual machines running in Azure.
It returns an object with information on a specific virtual machine, or if no virtual machine is specified, for all the virtual machines in the specified service of the current subscription.

## EXAMPLES

### Example 1: Retrieve information on a specified virtual machine
```
PS C:\> Get-AzureVM -ServiceName "ContosoService01" -Name "VirtualMachine02"
```

This command returns an object with information on the VirtualMachine02 virtual machine running in the ContosoService01 cloud service.

### Example 2: Retrieve information on all virtual machines
```
PS C:\> Get-AzureVM -ServiceName "ContosoService01"
```

This command retrieves a list object with information on all of the virtual machines running in the ContosoService01 cloud service.

### Example 3: Display a table of virtual machine statuses
```
PS C:\> Get-AzureVM -ServiceName "ContosoService01"  | Format-Table AutoSize -Property "Name",@{Expression={$_.InstanceUpgradeDomain};Label="UpgDom";Align="Right"},"InstanceStatus"
```

This command displays a table showing the virtual machines running on the ContosoService01 service, their Upgrade Domain, and the current status of each virtual machine.

## PARAMETERS

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
Specifies the name of the cloud service for which to return virtual machine information.

```yaml
Type: String
Parameter Sets: GetVMByServiceAndVMName
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of the virtual machine for which to retrieve information.
If this parameter is not provided, the cmdlet returns a list object with information about all the virtual machines in the specified service.

```yaml
Type: String
Parameter Sets: GetVMByServiceAndVMName
Aliases: 

Required: False
Position: 1
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

[New-AzureVM](xref:ServiceManagement/Azure.Service/v3.0.0/New-AzureVM.md)

[New-AzureVMConfig](xref:ServiceManagement/Azure.Service/v3.0.0/New-AzureVMConfig.md)

[Remove-AzureVM](xref:ServiceManagement/Azure.Service/v3.0.0/Remove-AzureVM.md)

[Restart-AzureVM](xref:ServiceManagement/Azure.Service/v3.0.0/Restart-AzureVM.md)

[Start-AzureVM](xref:ServiceManagement/Azure.Service/v3.0.0/Start-AzureVM.md)

[Stop-AzureVM](xref:ServiceManagement/Azure.Service/v3.0.0/Stop-AzureVM.md)

[Update-AzureVM](xref:ServiceManagement/Azure.Service/v3.0.0/Update-AzureVM.md)


