---
external help file: Microsoft.Azure.Commands.ResourceManager.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 57139A0B-0F71-4E61-BCEC-5482DDE0DEDA
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Export-AzureAutomationDscNodeReportContent.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Export-AzureAutomationDscNodeReportContent.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Export-AzureAutomationDscNodeReportContent.md
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

# Export-AzureAutomationDscNodeReportContent

## SYNOPSIS
Exports the raw content of a DSC report sent from a DSC node to Automation.

## SYNTAX

```
Export-AzureAutomationDscNodeReportContent -NodeId <Guid> -ReportId <Guid> [-OutputFolder <String>] [-Force]
 [-ResourceGroupName] <String> [-AutomationAccountName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Export-AzureAutomationDscNodeReportContent** cmdlet exports the raw contents of a PowerShell Desired State Configuration (DSC) report.
A DSC node sends a DSC report to Azure Automation.

## EXAMPLES

### Example 1: Export a report from a DSC node
```
PS C:\>$Node = Get-AzureAutomationDscNode -ResourceGroupName "MyResourceGroup" -AutomationAccountName "MyAutomationAccount" -Name "MyComputer"
PS C:\> $Report = Get-AzureAutomationDscNodeReport -ResourceGroupName "MyResourceGroup" -AutomationAccountName "MyAutomationAccount" -NodeId $Node.Id -Latest
PS C:\> $Report | Export-AzureAutomationDscNodeReportContent -OutputFolder C:\Users\PattiFuller\Desktop
```

This set of commands exports the latest report from the DSC node named MyComputer to the user's desktop.

## PARAMETERS

### -AutomationAccountName
Specifies the name of an Automation account.
This cmdlet exports report content for a DSC node that belongs to the Automation account that this parameter specifies.

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
Indicates that this cmdlet can replace an existing local file with a new file that has the same name.

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

### -NodeId
Specifies the unique ID of the DSC node for which this cmdlet exports report contents.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -OutputFolder
Specifies the output folder where this cmdlet exports report contents.

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

### -ReportId
Specifies the unique ID of the DSC node report that this cmdlet exports.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases: Id

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of a resource group.
This cmdlet exports the contents of a report for the DSC node that belongs to the resource group that this cmdlet specifies.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureAutomationDscNodeReport](xref:ResourceManager/AzureRM.Automation/v0.9.8/Get-AzureAutomationDscNodeReport.md)


