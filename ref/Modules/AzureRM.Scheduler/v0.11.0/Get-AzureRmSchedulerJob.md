---
external help file: Microsoft.Azure.Commands.Scheduler.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 0324DD5F-1C8D-4F82-9FFA-292E304578FF
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Scheduler/v0.11.0/Get-AzureRmSchedulerJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Scheduler/v0.11.0/Get-AzureRmSchedulerJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Scheduler/v0.11.0/Get-AzureRmSchedulerJob.md
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
 [-JobState <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmSchedulerJob** cmdlet gets Azure Scheduler jobs.

## EXAMPLES

### 1:
```

```

## PARAMETERS

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[New-AzureRmSchedulerHttpJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/New-AzureRmSchedulerHttpJob.md)

[New-AzureRmSchedulerJobCollection](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/New-AzureRmSchedulerJobCollection.md)

[New-AzureRmSchedulerServiceBusQueueJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/New-AzureRmSchedulerServiceBusQueueJob.md)

[New-AzureRmSchedulerServiceBusTopicJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/New-AzureRmSchedulerServiceBusTopicJob.md)

[New-AzureRmSchedulerStorageQueueJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/New-AzureRmSchedulerStorageQueueJob.md)

[Remove-AzureRmSchedulerJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/Remove-AzureRmSchedulerJob.md)

[Set-AzureRmSchedulerHttpJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/Set-AzureRmSchedulerHttpJob.md)

[Set-AzureRmSchedulerServiceBusQueueJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/Set-AzureRmSchedulerServiceBusQueueJob.md)

[Set-AzureRmSchedulerServiceBusTopicJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/Set-AzureRmSchedulerServiceBusTopicJob.md)

[Set-AzureRmSchedulerStorageQueueJob](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/Set-AzureRmSchedulerStorageQueueJob.md)


