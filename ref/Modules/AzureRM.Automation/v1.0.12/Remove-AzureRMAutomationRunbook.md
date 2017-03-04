---
external help file: Microsoft.Azure.Commands.ResourceManager.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 073FEDF2-2BBD-4173-946A-B79F88DC3C92
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v1.0.12/Remove-AzureRMAutomationRunbook.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v1.0.12/Remove-AzureRMAutomationRunbook.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v1.0.12/Remove-AzureRMAutomationRunbook.md
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

# Remove-AzureRmAutomationRunbook

## SYNOPSIS
Removes a runbook.

## SYNTAX

```
Remove-AzureRmAutomationRunbook [-Name] <String> [-Force] [-ResourceGroupName] <String>
 [-AutomationAccountName] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureRmAutomationRunbook** cmdlet removes a runbook from Azure Automation.

## EXAMPLES

### Example 1: Remove a runbook
```
PS C:\>Remove-AzureRmAutomationRunbook -AutomationAccountName "Contoso17" -Name "Runbook03" -ResourceGroupName "ResourceGroup01"
```

This command removes the runbook named Runbook03 in the Azure Automation account named Contoso17.

## PARAMETERS

### -AutomationAccountName
Specifies the name of the Automation account in which this cmdlet removes a runbook.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
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

### -Name
Specifies the name of the runbook that this cmdlet removes.

```yaml
Type: String
Parameter Sets: (All)
Aliases: RunbookName

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group for which this cmdlet publishes a runbook.

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

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Export-AzureRmAutomationRunbook](xref:ResourceManager/AzureRM.Automation/v1.0.12/Export-AzureRMAutomationRunbook.md)

[Get-AzureRmAutomationRunbook](xref:ResourceManager/AzureRM.Automation/v1.0.12/Get-AzureRMAutomationRunbook.md)

[Import-AzureRmAutomationRunbook](xref:ResourceManager/AzureRM.Automation/v1.0.12/Import-AzureRMAutomationRunbook.md)

[New-AzureRmAutomationRunbook](xref:ResourceManager/AzureRM.Automation/v1.0.12/New-AzureRMAutomationRunbook.md)

[New-AzureRmAutomationRunbook](xref:ResourceManager/AzureRM.Automation/v1.0.12/New-AzureRMAutomationRunbook.md)

[Publish-AzureRmAutomationRunbook](xref:ResourceManager/AzureRM.Automation/v1.0.12/Publish-AzureRMAutomationRunbook.md)

[Set-AzureRmAutomationRunbook](xref:ResourceManager/AzureRM.Automation/v1.0.12/Set-AzureRMAutomationRunbook.md)

[Start-AzureRmAutomationRunbook](xref:ResourceManager/AzureRM.Automation/v1.0.12/Start-AzureRMAutomationRunbook.md)


