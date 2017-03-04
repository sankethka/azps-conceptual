---
external help file: Microsoft.Azure.Commands.ResourceManager.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 3376F904-27E1-452C-8AEC-E8A12598D5F2
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Get-AzureAutomationDscNodeReport.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Get-AzureAutomationDscNodeReport.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Get-AzureAutomationDscNodeReport.md
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

# Get-AzureAutomationDscNodeReport

## SYNOPSIS
Gets reports sent from a DSC node to Automation.

## SYNTAX

### ByAll (Default)
```
Get-AzureAutomationDscNodeReport -NodeId <Guid> [-StartTime <DateTimeOffset>] [-EndTime <DateTimeOffset>]
 [-ResourceGroupName] <String> [-AutomationAccountName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

### ByLatest
```
Get-AzureAutomationDscNodeReport -NodeId <Guid> [-Latest] [-ResourceGroupName] <String>
 [-AutomationAccountName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

### ById
```
Get-AzureAutomationDscNodeReport -NodeId <Guid> -Id <Guid> [-ResourceGroupName] <String>
 [-AutomationAccountName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureAutomationDscNodeReport** cmdlet gets reports sent from a PowerShell Desired State Configuration (DSC) node to Azure Automation.

## EXAMPLES

### Example 1: Get all reports for a DSC node
```
PS C:\>$Node = Get-AzureAutomationDscNode -ResourceGroupName "MyResourceGroup" -AutomationAccountName "Contoso17" -Name "MyComputer"
PS C:\> Get-AzureAutomationDscNodeReport -ResourceGroupName "MyResourceGroup" -AutomationAccountName "Contoso17" -NodeId $Node.Id
```

This set of commands gets metadata on all reports sent from the DSC node named MyComputer to the Automation account named Contoso17.

### Example 2: Get a report for a DSC node by report ID
```
PS C:\>$Node = Get-AzureAutomationDscNode -ResourceGroupName "MyResourceGroup" -AutomationAccountName "Contoso17" -Name "MyComputer"
PS C:\> Get-AzureAutomationDscNodeReport -ResourceGroupName "MyResourceGroup" -AutomationAccountName "Contoso17" -NodeId $Node.Id -Id 00000000-0000-0000-0000-000000000000
```

This set of commands gets metadata on a report with the specified ID, sent from the DSC node named MyComputer to the Automation account Contoso17.

### Example 3: Get the latest report for a DSC node
```
PS C:\>$Node = Get-AzureAutomationDscNode -ResourceGroupName "MyResourceGroup" -AutomationAccountName "Contoso17" -Name "MyComputer"
PS C:\> Get-AzureAutomationDscNodeReport -ResourceGroupName "MyResourceGroup" -AutomationAccountName "Contoso17" -NodeId $Node.Id -Latest
```

This set of commands gets metadata on the latest report sent from the DSC node named MyComputer to the Automation account named Contoso17.

## PARAMETERS

### -AutomationAccountName
Specifies the name of an Automation account.
This cmdlet exports reports for a DSC node that belongs to the account that this parameter specifies.

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

### -EndTime
Specifies an end time.
This cmdlet gets reports that Automation received before this time.

```yaml
Type: DateTimeOffset
Parameter Sets: ByAll
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Id
Specifies the unique ID of the DSC node report for this cmdlet to get.

```yaml
Type: Guid
Parameter Sets: ById
Aliases: ReportId

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Latest
Indicates that this cmdlet gets the latest DSC report for the specified node only.

```yaml
Type: SwitchParameter
Parameter Sets: ByLatest
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NodeId
Specifies the unique ID of the DSC node for which this cmdlet gets reports.

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

### -ResourceGroupName
Specifies the name of a resource group that contains the DSC node for which this cmdlet gets reports.

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

### -StartTime
Specifies a start time.
This cmdlet gets reports that Automation received after this time.

```yaml
Type: DateTimeOffset
Parameter Sets: ByAll
Aliases: 

Required: False
Position: Named
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

[Export-AzureAutomationDscNodeReportContent](xref:ResourceManager/AzureRM.Automation/v0.9.8/Export-AzureAutomationDscNodeReportContent.md)


