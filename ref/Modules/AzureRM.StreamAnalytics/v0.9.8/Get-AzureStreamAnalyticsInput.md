---
external help file: Microsoft.Azure.Commands.StreamAnalytics.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: A70102C0-9ED6-4B08-823F-42408CD2E24F
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v0.9.8/Get-AzureStreamAnalyticsInput.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v0.9.8/Get-AzureStreamAnalyticsInput.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v0.9.8/Get-AzureStreamAnalyticsInput.md
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

# Get-AzureStreamAnalyticsInput

## SYNOPSIS
Lists all of the inputs that are defined in a specified Stream Analytics job or gets information about a specific input.

## SYNTAX

```
Get-AzureStreamAnalyticsInput [-JobName] <String> [[-Name] <String>] [-ResourceGroupName] <String>
 [-Profile <AzureProfile>] [-PipelineVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureStreamAnalyticsInput** cmdlet lists all of the inputs that are defined in a specified Stream Analytics job or gets information about a specific input.

## EXAMPLES

### Example 1: Get all inputs for a job
```
PS C:\>Get-AzureStreamAnalyticsInput -ResourceGroupName "StreamAnalytics-Default-West-US" -JobName "StreamingJob"
```

This command gets all of the inputs that are defined for the job named StreamingJob.

### Example 2: Get a specified input for a job
```
PS C:\>Get-AzureStreamAnalyticsInput -ResourceGroupName "StreamAnalytics-Default-West-US" -JobName "StreamingJob" -Name "EntryStream"
```

This command gets the input named EntryStream that is defined for the job named StreamingJob.

## PARAMETERS

### -JobName
Specifies the name of a Stream Analytics job that the desired Azure Stream Analytics input belongs to.

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
Specifies the name of the Azure Stream Analytics input to get.

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
Specifies the name of the resource group that contains the input to get.

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

### System.Collections.Generic.List`1[[Microsoft.Azure.Commands.StreamAnalytics.Models.PSInput, Microsoft.Azure.Commands.StreamAnalytics, Version=0.8.11.0, Culture=neutral, PublicKeyToken=null]]Microsoft.Azure.Commands.StreamAnalytics.Models.PSInput

## NOTES

## RELATED LINKS

[New-AzureStreamAnalyticsInput](xref:ResourceManager/AzureRM.StreamAnalytics/v0.9.8/New-AzureStreamAnalyticsInput.md)

[Remove-AzureStreamAnalyticsInput](xref:ResourceManager/AzureRM.StreamAnalytics/v0.9.8/Remove-AzureStreamAnalyticsInput.md)

[Test-AzureStreamAnalyticsInput](xref:ResourceManager/AzureRM.StreamAnalytics/v0.9.8/Test-AzureStreamAnalyticsInput.md)


