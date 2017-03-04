---
external help file: Microsoft.Azure.Commands.StreamAnalytics.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: EA793437-3C7C-451C-9CC4-5F8B09A5E139
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v0.9.8/Stop-AzureStreamAnalyticsJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v0.9.8/Stop-AzureStreamAnalyticsJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v0.9.8/Stop-AzureStreamAnalyticsJob.md
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

# Stop-AzureStreamAnalyticsJob

## SYNOPSIS
Asynchronously stops a Stream Analytics job from running in Microsoft Azure and de-allocates resources that were being used.

## SYNTAX

```
Stop-AzureStreamAnalyticsJob [-Name] <String> [-ResourceGroupName] <String> [-Profile <AzureProfile>]
 [-PipelineVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Stop-AzureStreamAnalyticsJob** cmdlet asynchronously stops a Stream Analytics job from running in Microsoft Azure and de-allocates resources that were being used.
The job definition and meta-data will remain available within your subscription through both the Azure Portal and Management APIs, such that the job can be edited and restarted.
You are not charged for a job in the Stopped state.

## EXAMPLES

### Example 1: Stop a job
```
PS C:\>Stop-AzureStreamAnalyticsJob -ResourceGroupName "StreamAnalytics-Default-West-US" -Name "StreamingJob"
```

This command stops the job named StreamingJob.

## PARAMETERS

### -Name
Specifies the name of the job to stop.

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

### -ResourceGroupName
Specifies the name of the resource group that contains the job to stop.

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

### System.Object

## NOTES

## RELATED LINKS

[Get-AzureStreamAnalyticsJob](xref:ResourceManager/AzureRM.StreamAnalytics/v0.9.8/Get-AzureStreamAnalyticsJob.md)

[New-AzureStreamAnalyticsJob](xref:ResourceManager/AzureRM.StreamAnalytics/v0.9.8/New-AzureStreamAnalyticsJob.md)

[Remove-AzureStreamAnalyticsJob](xref:ResourceManager/AzureRM.StreamAnalytics/v0.9.8/Remove-AzureStreamAnalyticsJob.md)

[Start-AzureStreamAnalyticsJob](xref:ResourceManager/AzureRM.StreamAnalytics/v0.9.8/Start-AzureStreamAnalyticsJob.md)


