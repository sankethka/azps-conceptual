---
external help file: Microsoft.Azure.Commands.ResourceManager.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: B9B92318-EC04-4191-8709-DF35494924B4
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Import-AzureAutomationRunbook.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Import-AzureAutomationRunbook.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Import-AzureAutomationRunbook.md
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

# Import-AzureAutomationRunbook

## SYNOPSIS
Imports an Automation runbook.

## SYNTAX

```
Import-AzureAutomationRunbook [-Path] <String> [-Description <String>] [-Tags <IDictionary>] -Type <String>
 [-LogProgress <Boolean>] [-LogVerbose <Boolean>] [-Published] [-Force] [-ResourceGroupName] <String>
 [-AutomationAccountName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Import-AzureAutomationRunbook** cmdlet imports an Azure Automation runbook .
Specify the path to a PowerShell script (.ps1 ) file to import (for PowerShell and PowerShell Workflow runbooks), or to a graphical runbook (.graphrunbook) file (for graphical runbooks).
The name of the file becomes the name of the runbook.
For PowerShell Workflow runbooks, the script must contain a single PowerShell Workflow definition, matching the name of the file.

## EXAMPLES


## PARAMETERS

### -AutomationAccountName
Specifies the name of the Automation account into which this cmdlet imports a runbook.

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
Specifies a description for the imported runbook.

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

### -Force
Forces the command to run without asking for user confirmation.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogProgress
Specifies whether the runbook logs progress information.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -LogVerbose
Specifies whether the runbook logs detailed information.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Path
Specifies the path of a .ps1 or .graphrunbook file that this cmdlet imports.

```yaml
Type: String
Parameter Sets: (All)
Aliases: SourcePath

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

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

### -Published
Indicates that this cmdlet publishes the runbook that it imports.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group for which this cmdlet imports a runbook.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Tags
Specifies a dictionary of tags for the imported runbook.

```yaml
Type: IDictionary
Parameter Sets: (All)
Aliases: Tag

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Type
Specifies the type of runbook that this cmdlet creates.
Valid values are:

- Graph
- PowerShell
- PowerShellWorkflow

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: Graph, PowerShell, PowerShellWorkflow

Required: True
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

[Export-AzureAutomationRunbook](xref:ResourceManager/AzureRM.Automation/v0.9.8/Export-AzureAutomationRunbook.md)

[Get-AzureAutomationRunbook](xref:ResourceManager/AzureRM.Automation/v0.9.8/Get-AzureAutomationRunbook.md)

[Import-AzureAutomationRunbook](xref:ResourceManager/AzureRM.Automation/v0.9.8/Import-AzureAutomationRunbook.md)

[New-AzureAutomationRunbook](xref:ResourceManager/AzureRM.Automation/v0.9.8/New-AzureAutomationRunbook.md)

[Publish-AzureAutomationRunbook](xref:ResourceManager/AzureRM.Automation/v0.9.8/Publish-AzureAutomationRunbook.md)

[Remove-AzureAutomationRunbook](xref:ResourceManager/AzureRM.Automation/v0.9.8/Remove-AzureAutomationRunbook.md)

[Set-AzureAutomationRunbook](xref:ResourceManager/AzureRM.Automation/v0.9.8/Set-AzureAutomationRunbook.md)

[Start-AzureAutomationRunbook](xref:ResourceManager/AzureRM.Automation/v0.9.8/Start-AzureAutomationRunbook.md)
