---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 798AD830-C5DE-4E34-9D84-AC5913FE5ABD
updated_at: 10/24/2016 11:55 PM
ms.date: 10/24/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v2.1.0/Get-AzureServiceProjectRoleRuntime.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v2.1.0/Get-AzureServiceProjectRoleRuntime.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/4377291ee360e58e2c1c5d644155daf6a0279055/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v2.1.0/Get-AzureServiceProjectRoleRuntime.md
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

# Get-AzureServiceProjectRoleRuntime

## SYNOPSIS
Get the runtimes available to install in a role.

## SYNTAX

```
Get-AzureServiceProjectRoleRuntime [[-Runtime] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
This topic describes the cmdlet in the 0.8.10 version of the Microsoft Azure PowerShell module.
To get the version of the module you're using, in the Azure PowerShell console, type (Get-Module -Name Azure).Version.

Gets the runtimes available to install in a role.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -Runtime
The name of the runtime.
If a runtime specified, only the specific versions of that runtime available to install in your role in Windows Azure will be returned.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
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

[Add-AzureNodeWebRole](xref:ServiceManagement/Azure.Compute/v2.1.0/Add-AzureNodeWebRole.md)

[Add-AzureNodeWorkerRole](xref:ServiceManagement/Azure.Compute/v2.1.0/Add-AzureNodeWorkerRole.md)

[Set-AzureServiceProjectRole](xref:ServiceManagement/Azure.Compute/v2.1.0/Set-AzureServiceProjectRole.md)

[Set-AzureServiceProject](xref:ServiceManagement/Azure.Compute/v2.1.0/Set-AzureServiceProject.md)


