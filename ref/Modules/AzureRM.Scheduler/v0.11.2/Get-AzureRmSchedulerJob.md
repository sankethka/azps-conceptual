---
external help file: Microsoft.Azure.Commands.Scheduler.dll-Help.xml
ms.assetid: DC151161-72C0-40F7-B2F0-45FA01142AE1
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Scheduler/v0.11.2/Get-AzureRmSchedulerJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Scheduler/v0.11.2/Get-AzureRmSchedulerJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.Scheduler/v0.11.2/Get-AzureRmSchedulerJob.md
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

# Get-AzureRmSchedulerJob

## SYNOPSIS
Gets Scheduler jobs.

## SYNTAX

```
Get-AzureRmSchedulerJob -ResourceGroupName <String> -JobCollectionName <String> [-JobName <String>]
 [-JobState <String>] [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmSchedulerJob** cmdlet gets Azure Scheduler jobs.

## EXAMPLES

### 1:
```

```

## PARAMETERS

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

### -JobCollectionName
Specifies the name of a job collection that contains jobs to get.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Name, ResourceName

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -JobName
Specifies the name of a job to get.

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

### -JobState
Specifies a job state of jobs to get.
The acceptable values for this parameter are:

- Enabled 
- Disabled 
- Faulted 
- Completed

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

### -ResourceGroupName
Specifies the resource group of the jobs to get.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
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

[New-AzureRmSchedulerHttpJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.2/New-AzureRmSchedulerHttpJob.md)

[New-AzureRmSchedulerJobCollection](xref:ResourceManager/AzureRM.Scheduler/v0.11.2/New-AzureRmSchedulerJobCollection.md)

[New-AzureRmSchedulerServiceBusQueueJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.2/New-AzureRmSchedulerServiceBusQueueJob.md)

[New-AzureRmSchedulerServiceBusTopicJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.2/New-AzureRmSchedulerServiceBusTopicJob.md)

[New-AzureRmSchedulerStorageQueueJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.2/New-AzureRmSchedulerStorageQueueJob.md)

[Remove-AzureRmSchedulerJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.2/Remove-AzureRmSchedulerJob.md)

[Set-AzureRmSchedulerHttpJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.2/Set-AzureRmSchedulerHttpJob.md)

[Set-AzureRmSchedulerServiceBusQueueJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.2/Set-AzureRmSchedulerServiceBusQueueJob.md)

[Set-AzureRmSchedulerServiceBusTopicJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.2/Set-AzureRmSchedulerServiceBusTopicJob.md)

[Set-AzureRmSchedulerStorageQueueJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.2/Set-AzureRmSchedulerStorageQueueJob.md)


