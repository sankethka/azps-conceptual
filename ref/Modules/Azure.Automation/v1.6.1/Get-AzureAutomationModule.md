---
external help file: Microsoft.Azure.Commands.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 883822FD-E142-411A-9C0B-38B88D7DD696
updated_at: 11/18/2016 8:33 AM
ms.date: 11/18/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v1.6.1/Get-AzureAutomationModule.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v1.6.1/Get-AzureAutomationModule.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/2537e371256820c5575d89299741a8f7b6f7e585/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v1.6.1/Get-AzureAutomationModule.md
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

# Get-AzureAutomationModule

## SYNOPSIS
Get an Azure Automation module.

## SYNTAX

### ByAll (Default)
```
Get-AzureAutomationModule [-AutomationAccountName] <String> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### ByName
```
Get-AzureAutomationModule [-Name] <String> [-AutomationAccountName] <String> [-Profile <AzureSMProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureAutomationModule** cmdlet gets one or more Microsoft Azure Automation modules.
By default, all modules are returned.
To get a specific module, specify its name.

## EXAMPLES

### Example 1: Get all modules
```
PS C:\> Get-AzureAutomationModule -AutomationAccountName "Contoso17"
```

This command gets all modules in the Azure Automation account named Contoso17.

### Example 2: Get a module
```
PS C:\> Get-AzureAutomationModule -AutomationAccountName "Contoso17" -Name "ContosoModule"
```

This command gets a module named ContosoModule in the Azure Automation account named Contoso17.

## PARAMETERS

### -AutomationAccountName
Specifies the name of the Automation account with the runbook to retrieve.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of a module to retrieve.

```yaml
Type: String
Parameter Sets: ByName
Aliases: 

Required: True
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

### Microsoft.Azure.Commands.Automation.Model.Module

## NOTES

## RELATED LINKS

[New-AzureAutomationModule](xref:ServiceManagement/Azure.Automation/v1.6.1/New-AzureAutomationModule.md)

[Remove-AzureAutomationModule](xref:ServiceManagement/Azure.Automation/v1.6.1/Remove-AzureAutomationModule.md)

[Set-AzureAutomationModule](xref:ServiceManagement/Azure.Automation/v1.6.1/Set-AzureAutomationModule.md)


