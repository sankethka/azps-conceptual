---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: E47AA091-BCE3-4637-9D34-C5AD9E8E04D9
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Get-AzureEndpoint.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Get-AzureEndpoint.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Get-AzureEndpoint.md
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

# Get-AzureEndpoint

## SYNOPSIS
Gets information about the endpoints that are assigned to an Azure virtual machine.

## SYNTAX

```
Get-AzureEndpoint [[-Name] <String>] -VM <IPersistentVM> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureEndpoint** cmdlet gets information about the endpoints that are assigned to an Azure virtual machine.

## EXAMPLES

### Example 1: Get endpoint information for a virtual machine
```
PS C:\>Get-AzureVM -ServiceName "ContosoService" -Name "VirtualMachine12" | Get-AzureEndpoint
```

This command retrieves the configuration of a virtual machine named VirtualMachine12 by using the Get-AzureVM cmdlet.
The command passes it to the current cmdlet by using the pipeline operator.
This cmdlet gets endpoint information for that virtual machine.

## PARAMETERS

### -Name
Specifies the name of the endpoint for which this cmdlet gets information.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VM
Specifies the virtual machine from which this cmdlet gets endpoint information.

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

[Add-AzureEndpoint](xref:ServiceManagement/Azure.Service/v0.9.8/Add-AzureEndpoint.md)

[Get-AzureVM](xref:ServiceManagement/Azure.Service/v0.9.8/Get-AzureVM.md)

[Remove-AzureEndpoint](xref:ServiceManagement/Azure.Service/v0.9.8/Remove-AzureEndpoint.md)

[Set-AzureEndpoint](xref:ServiceManagement/Azure.Service/v0.9.8/Set-AzureEndpoint.md)


