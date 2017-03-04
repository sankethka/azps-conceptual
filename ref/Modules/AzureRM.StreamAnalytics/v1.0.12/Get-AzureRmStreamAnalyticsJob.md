---
external help file: Microsoft.Azure.Commands.StreamAnalytics.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 0A0A1917-9BD0-4554-AF32-AD564ADCD604
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v1.0.12/Get-AzureRmStreamAnalyticsJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v1.0.12/Get-AzureRmStreamAnalyticsJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v1.0.12/Get-AzureRmStreamAnalyticsJob.md
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

# Get-AzureRmStreamAnalyticsJob

## SYNOPSIS
Gets Stream Analytics jobs information.

## SYNTAX

### For stream analytics objects in the given resource group
```
Get-AzureRmStreamAnalyticsJob [-ResourceGroupName] <String> [[-Name] <String>] [-NoExpand]
 [-PipelineVariable <String>] [<CommonParameters>]
```

### For stream analytics objects in the given subscription
```
Get-AzureRmStreamAnalyticsJob [-NoExpand] [-PipelineVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmStreamAnalyticsJob** cmdlet lists all Stream Analytics jobs defined in the Azure subscription or specified resource group or gets job information about a specific job within a resource group.

## EXAMPLES

### EXAMPLE 1: Get information about all jobs in a subscription
```
PS C:\>Get-AzureRmStreamAnalyticsJob
```

This command returns information about all the Stream Analytics jobs in the Azure subscription.

### EXAMPLE 2: Get information about all jobs in a resource group
```
PS C:\>Get-AzureRmStreamAnalyticsJob -ResourceGroupName "StreamAnalytics-Default-West-US"
```

This command returns information about all the Stream Analytics jobs in the resource group StreamAnalytics-Default-West-US.

### EXAMPLE 3: Get information about a specific job in a resource group
```
PS C:\>Get-AzureRmStreamAnalyticsJob -ResourceGroupName "StreamAnalytics-Default-West-US" -Name "StreamingJob"
```

This command returns information about the Stream Analytics job StreamingJob in the resource group StreamAnalytics-Default-West-US.

## PARAMETERS

### -ResourceGroupName
Specifies the name of the resource group to which the Azure Stream Analytics job belongs.

```yaml
Type: String
Parameter Sets: For stream analytics objects in the given resource group
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of the Azure Stream Analytics job to retrieve.

```yaml
Type: String
Parameter Sets: For stream analytics objects in the given resource group
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -NoExpand
Indicates the cmdlet will retrieve the Azure Stream Analytics job, but not return information on its inputs, outputs, and transformation.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PipelineVariable
Not Specified

```yaml
Type: String
Parameter Sets: (All)
Aliases: pv

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

### System.Collections.Generic.List`1[[Microsoft.Azure.Commands.StreamAnalytics.Models.PSJob, Microsoft.Azure.Commands.StreamAnalytics]]            Microsoft.Azure.Commands.StreamAnalytics.Models.PSJob

## NOTES

## RELATED LINKS

[New-AzureRmStreamAnalyticsJob](xref:ResourceManager/AzureRM.StreamAnalytics/v1.0.12/New-AzureRmStreamAnalyticsJob.md)

[Remove-AzureRmStreamAnalyticsJob](xref:ResourceManager/AzureRM.StreamAnalytics/v1.0.12/Remove-AzureRmStreamAnalyticsJob.md)

[Start-AzureRmStreamAnalyticsJob](xref:ResourceManager/AzureRM.StreamAnalytics/v1.0.12/Start-AzureRmStreamAnalyticsJob.md)

[Stop-AzureRmStreamAnalyticsJob](xref:ResourceManager/AzureRM.StreamAnalytics/v1.0.12/Stop-AzureRmStreamAnalyticsJob.md)


