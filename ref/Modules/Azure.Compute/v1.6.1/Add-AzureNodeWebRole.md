---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 72BE1E83-84E2-49FC-AA52-B3D3DD0490A3
updated_at: 10/24/2016 11:55 PM
ms.date: 10/24/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Add-AzureNodeWebRole.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Add-AzureNodeWebRole.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/4377291ee360e58e2c1c5d644155daf6a0279055/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Add-AzureNodeWebRole.md
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

# Add-AzureNodeWebRole

## SYNOPSIS
Creates required files and folders for a Node.js application.

## SYNTAX

```
Add-AzureNodeWebRole [[-Name] <String>] [[-Instances] <Int32>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
powershell_prelim

The **Add-AzureNodeWebRole** creates required files and folders (sometimes referred to as scaffolding) for a Node.js application to be hosted in the cloud via IIS.

## EXAMPLES

### 1: Single instance web role
```
PS C:\>>Add-AzureNodeWebRole -Name MyWebRole
```

This example adds scaffolding for a single web role named **MyWebRole** to the current application.

### 2: Multiple instance web role
```
PS C:\>Add-AzureNodeWebRole MyWebRole -I 2
```

This example adds scaffolding for a new web role named **MyWebRole** to the current application, with a role instance count of 2.

## PARAMETERS

### -Name
Specifies the name of the web role.
It also determines the name of the directory that contains the scaffolding for the node.js application that will be hosted in the web role.
The default is WebRole#, where # indicates the number of web roles in the service.

```yaml
Type: String
Parameter Sets: (All)
Aliases: n

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Instances
The number of role instances for this web role.
The default is 1.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: i

Required: False
Position: 2
Default value: None
Accept pipeline input: False
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

[Add-AzureNodeWorkerRole](xref:ServiceManagement/Azure.Compute/v1.6.1/Add-AzureNodeWorkerRole.md)

[New-AzureServiceProject](xref:ServiceManagement/Azure.Compute/v1.6.1/New-AzureServiceProject.md)


