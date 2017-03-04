---
external help file: Microsoft.Azure.Commands.StreamAnalytics.dll-Help.xml
ms.assetid: 7F08A880-1FC5-4542-8AB8-927BB999A552
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v2.4.0/Get-AzureRmStreamAnalyticsFunction.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v2.4.0/Get-AzureRmStreamAnalyticsFunction.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v2.4.0/Get-AzureRmStreamAnalyticsFunction.md
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

# Get-AzureRmStreamAnalyticsFunction

## SYNOPSIS
Gets functions in a Stream Analytics job.

## SYNTAX

```
Get-AzureRmStreamAnalyticsFunction [-JobName] <String> [[-Name] <String>] [-ResourceGroupName] <String>
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmStreamAnalyticsFunction** cmdlet gets a list of the functions that are defined in an Azure Stream Analytics job or information about a specific function.

## EXAMPLES

### Example 1: Get all Stream Analytics functions
```
PS C:\>Get-AzureRmStreamAnalyticsFunction -ResourceGroupName "StreamAnalytics-Default-West-US" -JobName "StreamJob22"
```

This command gets the functions defined on the job named StreamJob22.

### Example 2: Get a specific Stream Analytics function
```
PS C:\>Get-AzureRmStreamAnalyticsFunction -ResourceGroupName "StreamAnalytics-Default-West-US" -JobName "StreamJob22" -Name "ScoreTweet"
```

This command gets information about the function named ScoreTweet defined on the job named StreamJob22.

## PARAMETERS

### -JobName
Specifies the name of the Stream Analytics job to which functions belong.
This cmdlet gets functions for the job that this parameter specifies.

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

### -Name
Specifies the name of the Stream Analytics function that this cmdlet gets.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group to which Stream Analytics functions belongs.
This cmdlet gets functions for the group that this parameter specifies.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### System.Collections.Generic.List[Microsoft.Azure.Commands.StreamAnalytics.Models.PSFunction, Microsoft.Azure.Commands.StreamAnalytics], Microsoft.Azure.Commands.StreamAnalytics.Models.PSFunction

## NOTES

## RELATED LINKS

[New-AzureRmStreamAnalyticsFunction](xref:ResourceManager/AzureRM.StreamAnalytics/v2.4.0/New-AzureRmStreamAnalyticsFunction.md)

[Remove-AzureRmStreamAnalyticsFunction](xref:ResourceManager/AzureRM.StreamAnalytics/v2.4.0/Remove-AzureRmStreamAnalyticsFunction.md)

[Test-AzureRmStreamAnalyticsFunction](xref:ResourceManager/AzureRM.StreamAnalytics/v2.4.0/Test-AzureRmStreamAnalyticsFunction.md)


