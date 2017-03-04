---
external help file: Microsoft.Azure.Commands.ResourceManager.Automation.dll-Help.xml
ms.assetid: BD32B909-296B-4E46-A24F-6E2BD4B9764B
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v2.4.0/Get-AzureRMAutomationJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v2.4.0/Get-AzureRMAutomationJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v2.4.0/Get-AzureRMAutomationJob.md
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

# Get-AzureRmAutomationJob

## SYNOPSIS
Gets Automation runbook jobs.

## SYNTAX

### ByAll (Default)
```
Get-AzureRmAutomationJob [-Status <String>] [-StartTime <DateTimeOffset>] [-EndTime <DateTimeOffset>]
 [-ResourceGroupName] <String> [-AutomationAccountName] <String> [<CommonParameters>]
```

### ByJobId
```
Get-AzureRmAutomationJob -Id <Guid> [-ResourceGroupName] <String> [-AutomationAccountName] <String>
 [<CommonParameters>]
```

### ByRunbookName
```
Get-AzureRmAutomationJob -RunbookName <String> [-Status <String>] [-StartTime <DateTimeOffset>]
 [-EndTime <DateTimeOffset>] [-ResourceGroupName] <String> [-AutomationAccountName] <String>
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmAutomationJob** cmdlet gets runbook jobs in Azure Automation.

## EXAMPLES

### Example 1: Get a specific runbook job
```
PS C:\>Get-AzureRmAutomationJob -AutomationAccountName "Contoso17" -Id 2989b069-24fe-40b9-b3bd-cb7e5eac4b647
```

This command gets the job that has the specified GUID.

### Example 2: Get all jobs for a runbook
```
PS C:\>Get-AzureRmAutomationJob -AutomationAccountName "Contoso17" -ResourceGroupName "ResourceGroup01" -RunbookName "Runbook02"
```

This command gets all jobs associated with a runbook named Runbook02.

### Example 3: Get all running jobs
```
PS C:\>Get-AzureRmAutomationJob -AutomationAccountName "Contoso17" -ResourceGroupName "ResourceGroup01" -Status "Running"
```

This command gets all running jobs in the Automation account named Contoso17.

## PARAMETERS

### -AutomationAccountName
Specifies the name of an Automation account for which this cmdlet gets jobs.

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
Specifies the end time for a job as a **DateTimeOffset** object.
You can specify a string that can be converted to a valid **DateTimeOffset**.
This cmdlet gets jobs that have an end time at or before the value that this parameter specifies.

```yaml
Type: DateTimeOffset
Parameter Sets: ByAll, ByRunbookName
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Id
Specifies the ID of a job that this cmdlet gets.

```yaml
Type: Guid
Parameter Sets: ByJobId
Aliases: JobId

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of a resource group in which this cmdlet gets jobs.

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

### -RunbookName
Specifies the name of a runbook for which this cmdlet gets jobs.

```yaml
Type: String
Parameter Sets: ByRunbookName
Aliases: Name

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StartTime
Specifies the start time of a job as a **DateTimeOffset** object.
This cmdlet gets jobs that have a start time at or after the value that this parameter specifies.

```yaml
Type: DateTimeOffset
Parameter Sets: ByAll, ByRunbookName
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Status
Specifies the status of a job.
This cmdlet gets jobs that have a status matching this parameter.

The acceptable values for this parameter are:

- Activating
- Completed
- Failed
- Queued
- Resuming
- Running
- Starting
- Stopped
- Stopping
- Suspended
- Suspending

```yaml
Type: String
Parameter Sets: ByAll, ByRunbookName
Aliases: 
Accepted values: Completed, Failed, Queued, Starting, Resuming, Running, Stopped, Stopping, Suspended, Suspending, Activating

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

### Microsoft.Azure.Commands.Automation.Model.Job

## NOTES

## RELATED LINKS

[Get-AzureRmAutomationJobOutput](xref:ResourceManager/AzureRM.Automation/v2.4.0/Get-AzureRMAutomationJobOutput.md)

[Resume-AzureRmAutomationJob](xref:ResourceManager/AzureRM.Automation/v2.4.0/Resume-AzureRMAutomationJob.md)

[Stop-AzureRmAutomationJob](xref:ResourceManager/AzureRM.Automation/v2.4.0/Stop-AzureRMAutomationJob.md)

[Suspend-AzureRmAutomationJob](xref:ResourceManager/AzureRM.Automation/v2.4.0/Suspend-AzureRMAutomationJob.md)
