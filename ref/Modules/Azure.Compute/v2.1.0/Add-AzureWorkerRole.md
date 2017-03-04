---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 5428629B-7D7A-4740-931B-349638EB7B0E
updated_at: 10/24/2016 11:55 PM
ms.date: 10/24/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v2.1.0/Add-AzureWorkerRole.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v2.1.0/Add-AzureWorkerRole.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/4377291ee360e58e2c1c5d644155daf6a0279055/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v2.1.0/Add-AzureWorkerRole.md
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

# Add-AzureWorkerRole

## SYNOPSIS
Creates required files and configuration (sometimes referred to as scaffolding) for a custom worker role.

## SYNTAX

```
Add-AzureWorkerRole [[-TemplateFolder] <String>] [[-Name] <String>] [[-Instances] <Int32>]
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
This topic describes the cmdlet in the 0.8.10 version of the Microsoft Azure PowerShell module.
To get the version of the module you're using, in the Azure PowerShell console, type (Get-Module -Name Azure).Version.

The **Add-AzureWorkerRole** cmdlet creates required files and configuration (sometimes referred to as scaffolding) for a custom worker role.

## EXAMPLES

### 1: Create a single instance worker role
```
PS C:\>Add-AzureWorkerRole -Name MyWorkerRole
```

This example adds scaffolding for a single worker role named MyWorkerRole to the current application.

### 2: Create a multiple instance worker role
```
PS C:\>Add-AzureWorkerRole MyWorkerRole -I 2
```

This example adds scaffolding for a new worker role named MyWorkerRole to the current application, with a role instance count of 2.

### 3: Create worker role with custom scaffolding
```
PS C:\>Add-AzureWorkerRole MyWorkerRole -TemplateFoldr .\MyWorkerRoleTemplate
```

This example creates a worker role with custom scaffolding.

## PARAMETERS

### -Name
Specifies the name of the worker role.
This value determines the folder name that contains the scaffolding for the custom application that will be hosted in the worker role.
The default is WorkerRolenumber, where number is the number of worker roles in the service.

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
Specifies the number of role instances for this worker role.
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

### -TemplateFolder
Specifies the scaffolding template folder to be used to create the worker role.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
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

[Add-AzureWebRole](xref:ServiceManagement/Azure.Compute/v2.1.0/Add-AzureWebRole.md)

[New-AzureRoleTemplate](xref:ServiceManagement/Azure.Compute/v2.1.0/New-AzureRoleTemplate.md)


