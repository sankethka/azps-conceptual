---
external help file: Microsoft.Azure.Commands.Scheduler.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 5D736BE1-7F64-4431-974F-3D77B029F959
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Scheduler/v0.11.0/Get-AzureRmSchedulerJobCollection.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Scheduler/v0.11.0/Get-AzureRmSchedulerJobCollection.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Scheduler/v0.11.0/Get-AzureRmSchedulerJobCollection.md
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

# Get-AzureRmSchedulerJobCollection

## SYNOPSIS
Gets job collections.

## SYNTAX

```
Get-AzureRmSchedulerJobCollection [-ResourceGroupName <String>] [-JobCollectionName <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmSchedulerJobCollection** cmdlet gets job collections in Azure Scheduler.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -ResourceGroupName
Specifies resource group from which this cmdlet gets job collections.

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

### -JobCollectionName
Specifies the name of a job collection.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Name, ResourceName

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

[Disable-AzureRmSchedulerJobCollection](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/Disable-AzureRmSchedulerJobCollection.md)

[Enable-AzureRmSchedulerJobCollection](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/Enable-AzureRmSchedulerJobCollection.md)

[New-AzureRmSchedulerJobCollection](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/New-AzureRmSchedulerJobCollection.md)

[Remove-AzureRmSchedulerJobCollection](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/Remove-AzureRmSchedulerJobCollection.md)

[Set-AzureRmSchedulerJobCollection](xref:ResourceManager/AzureRM.Scheduler/v0.11.0/Set-AzureRmSchedulerJobCollection.md)


