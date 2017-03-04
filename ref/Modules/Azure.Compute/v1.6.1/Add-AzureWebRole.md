---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: E973AE60-0350-4440-A0EA-03CA4DA295C5
updated_at: 10/24/2016 11:55 PM
ms.date: 10/24/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Add-AzureWebRole.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Add-AzureWebRole.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/4377291ee360e58e2c1c5d644155daf6a0279055/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Add-AzureWebRole.md
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

# Add-AzureWebRole

## SYNOPSIS
Adds a web worker role.

## SYNTAX

```
Add-AzureWebRole [[-TemplateFolder] <String>] [[-Name] <String>] [[-Instances] <Int32>]
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
powershell_prelim

The **Add-AzureWebRole** cmdlet adds a web worker role.

## EXAMPLES

### Example 1: Add a default role
```
PS C:\>Add-AzureWebRole
```

This command add web role that has the default configuration of Webrole1 as the name and a single instance.

### Example 2: Add a role with a name
```
PS C:\>Add-AzureWebRole -Name "MyWebRole"
```

This command adds a single web role named MyWebRole to the current application.

### Example 3: Add a role with a name and instance count
```
PS C:\>Add-AzureWebRole -Name "MyWebRole" -Instance 2
```

This command adds a web role named MyWebRole to the current application.
The cmdlet has a role instance count of 2.

### Example 4: Add a role with a name and template
```
PS C:\>Add-AzureWebRole -Name "MyWebRole" -TemplateFolder ".\MyWebTemplateFolder"
```

This command adds a single web role named MyWebRole to the current application.
The command specifies a folder named MyWebTemplateFolder as a scaffolding template.

## PARAMETERS

### -Name
Specifies the name of the web role.

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
Specifies the number of instances.

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
Specifies the template folder.

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

[Add-AzureWorkerRole](xref:ServiceManagement/Azure.Compute/v1.6.1/Add-AzureWorkerRole.md)

[New-AzureRoleTemplate](xref:ServiceManagement/Azure.Compute/v1.6.1/New-AzureRoleTemplate.md)


