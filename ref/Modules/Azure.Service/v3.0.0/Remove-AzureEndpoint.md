---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 078056DF-25CB-41C9-9E1C-F57866526315
updated_at: 1/11/2017 6:32 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Remove-AzureEndpoint.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Remove-AzureEndpoint.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/34e1c9880d0370f1dd5f83ea8d5ee7f59cb5e559/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v3.0.0/Remove-AzureEndpoint.md
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

# Remove-AzureEndpoint

## SYNOPSIS
Deletes an endpoint from an Azure virtual machine.

## SYNTAX

```
Remove-AzureEndpoint [-Name] <String> -VM <IPersistentVM> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureEndpoint** cmdlet deletes an endpoint from an Azure virtual machine object.

## EXAMPLES

### Example 1: Remove an endpoint
```
PS C:\> Get-AzureVM -ServiceName "ContosoService" -Name "VirutalMachine01" | Remove-AzureEndpoint -Name "HttpIn" | Update-AzureVM
```

This command retrieves the configuration of a virtual machine named VirtualMachine01 by using the **Get-AzureVM** cmdlet.
The command passes it to the current cmdlet by using the pipeline operator.
This cmdlet removes an endpoint named HttpIn.
The command passes the virtual machine object to the **Update-AzureVM** cmdlet, which implements your changes.

## PARAMETERS

### -Name
Specifies the name of the endpoint that this cmdlet deletes from the virtual machine.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VM
Specifies the virtual machine from which this cmdlet deletes an endpoint.

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

[Add-AzureEndpoint](xref:ServiceManagement/Azure.Service/v3.0.0/Add-AzureEndpoint.md)

[Get-AzureEndpoint](xref:ServiceManagement/Azure.Service/v3.0.0/Get-AzureEndpoint.md)

[Get-AzureVM](xref:ServiceManagement/Azure.Service/v3.0.0/Get-AzureVM.md)

[Set-AzureEndpoint](xref:ServiceManagement/Azure.Service/v3.0.0/Set-AzureEndpoint.md)

[Update-AzureVM](xref:ServiceManagement/Azure.Service/v3.0.0/Update-AzureVM.md)


