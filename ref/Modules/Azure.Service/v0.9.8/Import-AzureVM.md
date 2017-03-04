---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 349D54F9-A5F7-460E-B5C8-FDAADC5EB4C7
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Import-AzureVM.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Import-AzureVM.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Import-AzureVM.md
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

# Import-AzureVM

## SYNOPSIS
Imports an Azure virtual machine state from a file.

## SYNTAX

```
Import-AzureVM [-Path] <String> [<CommonParameters>]
```

## DESCRIPTION
The **Import-AzureVM** cmdlet imports the previously saved state of a virtual machine from an XML file.
This cmdlet is useful when you want to subsequently create a virtual machine from the imported data.

Running **Export-AzureVM**, followed by **Remove-AzureVM** and then **Import-AzureVM** to recreate a virtual machine can cause the resultant virtual machine to have a different IP address than the original.

## EXAMPLES

### Example 1: Import a virtual machine state
```
PS C:\>Import-AzureVM -Path "C:\VMstate.xml" | New-AzureVM -ServiceName "ContosoService02"
```

This command imports the state of a virtual machine from the VMstate.xml file, and then creates a virtual machine in the specified cloud service.

## PARAMETERS

### -Path
Specifies the path of the file with the previously saved virtual machine state.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Export-AzureVM](xref:ServiceManagement/Azure.Service/v0.9.8/Export-AzureVM.md)

[New-AzureVM](xref:ServiceManagement/Azure.Service/v0.9.8/New-AzureVM.md)


