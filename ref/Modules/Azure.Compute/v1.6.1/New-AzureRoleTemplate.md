---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 03FBB075-4258-4EB3-A5D1-3AE0F599E361
updated_at: 11/22/2016 12:25 AM
ms.date: 11/22/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/New-AzureRoleTemplate.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/New-AzureRoleTemplate.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/e5245f9c2ed759dca260172c12d4ef03cef0982a/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/New-AzureRoleTemplate.md
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
powershell_prelim

The **New-AzureRoleTemplate** cmdlet creates web and worker role templates.

## EXAMPLES

### 1: Create a web role template
```
PS C:\>New-AzureRoleTemplate -Web
```

This example creates a new web role template in a folder named WebRoleTemplate in the current directory.

### 2: Create a worker role template
```
PS C:\>New-AzureRoleTemplate -Worker
```

This example creates a new worker role template in a folder named WebRoleTemplate in the current directory.

### 3: Create a role template in a custom directory
```
PS C:\>New-AzureRoleTemplate -Web -Output C:\MyWebRoleTemplate
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

[Add-AzureWebRole](xref:ServiceManagement/Azure.Compute/v1.6.1/Add-AzureWebRole.md)

[Add-AzureWorkerRole](xref:ServiceManagement/Azure.Compute/v1.6.1/Add-AzureWorkerRole.md)


