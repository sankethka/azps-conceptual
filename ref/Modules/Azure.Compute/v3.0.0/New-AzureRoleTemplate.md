---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 44CE15BA-997D-417F-8437-3CA6E432343C
updated_at: 1/12/2017 6:01 PM
ms.date: 1/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.0.0/New-AzureRoleTemplate.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.0.0/New-AzureRoleTemplate.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/a72a97ed452f82624cbe43d1ad240418d55beae2/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.0.0/New-AzureRoleTemplate.md
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

# New-AzureRoleTemplate

## SYNOPSIS
Creates web and worker role templates.

## SYNTAX

### WebRole
```
New-AzureRoleTemplate [-Web] [[-Output] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### WorkerRole
```
New-AzureRoleTemplate [-Worker] [[-Output] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
This topic describes the cmdlet in the 0.8.10 version of the Microsoft Azure PowerShell module.
To get the version of the module you're using, in the Azure PowerShell console, type `(Get-Module -Name Azure).Version`.

The **New-AzureRoleTemplate** cmdlet creates web and worker role templates.

## EXAMPLES

### Example 1: Create a web role template
```
PS C:\> New-AzureRoleTemplate -Web
```

This example creates a new web role template in a folder named WebRoleTemplate in the current directory.

### Example 2: Create a worker role template
```
PS C:\> New-AzureRoleTemplate -Worker
```

This example creates a new worker role template in a folder named WebRoleTemplate in the current directory.

### Example 3: Create a role template in a custom directory
```
PS C:\> New-AzureRoleTemplate -Web -Output C:\MyWebRoleTemplate
```

This example creates a new web role template in directory named MyWebRoleTemplate, instead of in the current directory.

## PARAMETERS

### -Web
Specifies that you want to create a web role template.

```yaml
Type: SwitchParameter
Parameter Sets: WebRole
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Worker
Specifies that you want to create a worker role template.

```yaml
Type: SwitchParameter
Parameter Sets: WorkerRole
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Output
Specifies the output path of generated template.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AzureWebRole](xref:ServiceManagement/Azure.Compute/v3.0.0/Add-AzureWebRole.md)

[Add-AzureWorkerRole](xref:ServiceManagement/Azure.Compute/v3.0.0/Add-AzureWorkerRole.md)


