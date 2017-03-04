---
external help file: Microsoft.Azure.Commands.StreamAnalytics.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 2D419C9C-70BD-4888-A237-C2A22CB3162A
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v0.9.8/Remove-AzureStreamAnalyticsInput.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v0.9.8/Remove-AzureStreamAnalyticsInput.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v0.9.8/Remove-AzureStreamAnalyticsInput.md
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

# Remove-AzureStreamAnalyticsInput

## SYNOPSIS
Asynchronously removes a specific input from a Stream Analytics job in Microsoft Azure.

## SYNTAX

```
Remove-AzureStreamAnalyticsInput [-JobName] <String> [-Name] <String> [-Force] [-ResourceGroupName] <String>
 [-Profile <AzureProfile>] [-PipelineVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureStreamAnalyticsInput** cmdlet asynchronously removes a specific input from a Stream Analytics job in Microsoft Azure.
If you specify the *Force* parameter the input is deleted without confirmation.

## EXAMPLES

### Example 1: Remove an input from a job
```
PS C:\>Remove-AzureStreamAnalyticsInput -ResourceGroupName "StreamAnalytics-Default-West-US" -JobName "StreamingJob" -Name "EventStream"
```

This command removes the input named EventStream from the job named StreamingJob.

## PARAMETERS

### -JobName
Specifies the name of the Azure Stream Analytics job that the desired Azure Stream Analytics input belongs to.

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
Specifies the name of the Azure Stream Analytics input to remove.

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

### -Force
Forces the command to run without asking for user confirmation.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the resource group that contains the input to remove.

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

[Get-AzureStreamAnalyticsInput](xref:ResourceManager/AzureRM.StreamAnalytics/v0.9.8/Get-AzureStreamAnalyticsInput.md)

[New-AzureStreamAnalyticsInput](xref:ResourceManager/AzureRM.StreamAnalytics/v0.9.8/New-AzureStreamAnalyticsInput.md)

[Test-AzureStreamAnalyticsInput](xref:ResourceManager/AzureRM.StreamAnalytics/v0.9.8/Test-AzureStreamAnalyticsInput.md)


