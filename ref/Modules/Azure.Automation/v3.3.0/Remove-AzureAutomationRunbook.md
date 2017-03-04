---
external help file: Microsoft.Azure.Commands.Automation.dll-Help.xml
ms.assetid: 0C156A1C-72DC-4B3C-9033-1B985139A732
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v3.3.0/Remove-AzureAutomationRunbook.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v3.3.0/Remove-AzureAutomationRunbook.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ServiceManagement/Azure.Automation/v3.3.0/Remove-AzureAutomationRunbook.md
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

# Remove-AzureAutomationRunbook

## SYNOPSIS
Removes a runbook.

## SYNTAX

```
Remove-AzureAutomationRunbook [-Name] <String> [-Force] [-AutomationAccountName] <String>
 [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>] [-InformationVariable <String>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureAutomationRunbook** cmdlet removes a runbook from Microsoft Azure Automation.

## EXAMPLES

### Example 1: Remove a runbook
```
PS C:\> Remove-AzureAutomationRunbook -AutomationAccountName "Contoso17" -Name "MyRunbook"
```

This command removes the runbook named MyRunbook in the Automation account named Contoso17.

## PARAMETERS

### -AutomationAccountName
Specifies the name of the Automation account.

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

### -InformationAction
Specifies how this cmdlet responds to an information event.

The acceptable values for this parameter are:

- Continue
- Ignore
- Inquire
- SilentlyContinue
- Stop
- Suspend

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: infa

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InformationVariable
Specifies an information variable.

```yaml
Type: String
Parameter Sets: (All)
Aliases: iv

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Specifies the name of the runbook to remove.

```yaml
Type: String
Parameter Sets: (All)
Aliases: RunbookName

Required: True
Position: 1
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

[Get-AzureAutomationRunbook](xref:ServiceManagement/Azure.Automation/v3.3.0/Get-AzureAutomationRunbook.md)

[New-AzureAutomationRunbook](xref:ServiceManagement/Azure.Automation/v3.3.0/New-AzureAutomationRunbook.md)

[Publish-AzureAutomationRunbook](xref:ServiceManagement/Azure.Automation/v3.3.0/Publish-AzureAutomationRunbook.md)

[Set-AzureAutomationRunbook](xref:ServiceManagement/Azure.Automation/v3.3.0/Set-AzureAutomationRunbook.md)

[Start-AzureAutomationRunbook](xref:ServiceManagement/Azure.Automation/v3.3.0/Start-AzureAutomationRunbook.md)


