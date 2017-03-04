---
external help file: Microsoft.Azure.Commands.Scheduler.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: C2CBB94C-E22A-4197-A89D-DAAC813E6A6F
updated_at: 11/22/2016 8:52 PM
ms.date: 11/22/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Scheduler/v0.11.0/New-AzureRmSchedulerJobCollection.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Scheduler/v0.11.0/New-AzureRmSchedulerJobCollection.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/0cedc8f73bc96cf5ac4c69144e17b3de601fd3cc/azureps-cmdlets-docs/ResourceManager/AzureRM.Scheduler/v0.11.0/New-AzureRmSchedulerJobCollection.md
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

# New-AzureRmSchedulerJobCollection

## SYNOPSIS
Creates a job collection.

## SYNTAX

```
New-AzureRmSchedulerJobCollection -ResourceGroupName <String> -JobCollectionName <String> -Location <String>
 [-Plan <String>] [-MaxJobCount <Int32>] [-Frequency <String>] [-Interval <Int32>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmSchedulerJobCollection** cmdlet creates a job collection in Azure Scheduler.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -ResourceGroupName
Specifies the resource group for the job collection.

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
Specifies a name for the job collection.

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

### -Location
Specifies the Azure region in which this cmdlet creates the job collection.

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

### -Plan
Specifies the job collection plan.
The acceptable values for this parameter are:

- Free 
- Standard 
- P10Premium 
- P20Premium

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

### -MaxJobCount
Specifies the maximum number of jobs that you can create in the job collection.
The maximum depends on the plan that the *Plan* parameter specifies.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Frequency
Specifies the maximum frequency that you can specify on any job in the job collection.
The acceptable values for this parameter are:

- Minute 
- Hour 
- Day 
- Week 
- Month

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Interval
Specifies an interval of recurrence.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Disable-AzureRmSchedulerJobCollection](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/Disable-AzureRmSchedulerJobCollection.md)

[Enable-AzureRmSchedulerJobCollection](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/Enable-AzureRmSchedulerJobCollection.md)

[Get-AzureRmSchedulerJobCollection](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/Get-AzureRmSchedulerJobCollection.md)

[Remove-AzureRmSchedulerJobCollection](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/Remove-AzureRmSchedulerJobCollection.md)

[Set-AzureRmSchedulerJobCollection](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/Set-AzureRmSchedulerJobCollection.md)


