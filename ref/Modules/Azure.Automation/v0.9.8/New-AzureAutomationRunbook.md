---
external help file: Microsoft.Azure.Commands.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 98D7B677-3B8F-4D8E-91D6-ED19C7E8D2B4
updated_at: 11/18/2016 8:33 AM
ms.date: 11/18/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v0.9.8/New-AzureAutomationRunbook.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v0.9.8/New-AzureAutomationRunbook.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/2537e371256820c5575d89299741a8f7b6f7e585/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v0.9.8/New-AzureAutomationRunbook.md
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

# New-AzureAutomationRunbook

## SYNOPSIS
Creates a new runbook.

## SYNTAX

### ByRunbookName (Default)
```
New-AzureAutomationRunbook [-Name] <String> [-Description <String>] [-Tags <String[]>]
 [-AutomationAccountName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

### ByPath
```
New-AzureAutomationRunbook [-Path] <String> [-Description <String>] [-Tags <String[]>]
 [-AutomationAccountName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureAutomationRunbook** cmdlet creates a new, empty Microsoft Azure Automation runbook.
Specify a name to create a new runbook.

You can also specify the path to a Windows PowerShell script (.ps1 ) file to import a runbook.
The script to import must contain a single Windows PowerShell Workflow definition.
The name of this Windows PowerShell Workflow becomes the name of the runbook.

## EXAMPLES

### Example 1: Create a runbook
```
PS C:\> New-AzureAutomationRunbook -AutomationAccountName "Contoso17" -Name "Runbook02"
```

This command creates a new runbook named Runbook02 in the Azure Automation account named Contoso17.

## PARAMETERS

### -AutomationAccountName

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

### -Description

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name for the runbook.

```yaml
Type: String
Parameter Sets: ByRunbookName
Aliases: RunbookName

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Path

```yaml
Type: String
Parameter Sets: ByPath
Aliases: RunbookPath

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Tags

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: Tag

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile
In-memory profile.

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

### Microsoft.Azure.Commands.Automation.Model.Runbook

## NOTES

## RELATED LINKS

[Get-AzureAutomationRunbook](xref:ServiceManagement/Azure.Automation/v0.9.8/Get-AzureAutomationRunbook.md)

[Publish-AzureAutomationRunbook](xref:ServiceManagement/Azure.Automation/v0.9.8/Publish-AzureAutomationRunbook.md)

[Remove-AzureAutomationRunbook](xref:ServiceManagement/Azure.Automation/v0.9.8/Remove-AzureAutomationRunbook.md)

[Set-AzureAutomationRunbook](xref:ServiceManagement/Azure.Automation/v0.9.8/Set-AzureAutomationRunbook.md)

[Start-AzureAutomationRunbook](xref:ServiceManagement/Azure.Automation/v0.9.8/Start-AzureAutomationRunbook.md)


