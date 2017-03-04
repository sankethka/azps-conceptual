---
external help file: Microsoft.Azure.Commands.StreamAnalytics.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 07B0C67A-6EFA-48EB-B795-8EAA4FC83646
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v1.0.12/New-AzureRmStreamAnalyticsJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v1.0.12/New-AzureRmStreamAnalyticsJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.StreamAnalytics/v1.0.12/New-AzureRmStreamAnalyticsJob.md
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

# New-AzureRmStreamAnalyticsJob

## SYNOPSIS
Creates or updates a Stream Analytics job.

## SYNTAX

```
New-AzureRmStreamAnalyticsJob [[-Name] <String>] [-File] <String> [-Force] [-ResourceGroupName] <String>
 [-PipelineVariable <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmStreamAnalyticsJob** cmdlet creates a new Stream Analytics job in Azure or updates the definition of an existing specified job.
The name of the job can be specified in the .JSON file or on the command line.
If both are specified, the name on command line must match the name in the file.

If you specify a job name that already exists and do not specify the *Force* parameter, the cmdlet will ask whether or not to replace the existing job.

If you specify the *Force* parameter and specify an existing job name, the job definition will be replaced without confirmation.

## EXAMPLES

### EXAMPLE 1: Create a job
```
PS C:\>New-AzureRmStreamAnalyticsJob -ResourceGroupName "StreamAnalytics-Default-West-US" -File "C:\JobDefinition.json"
```

This command creates a job from the definition in JobDefinition.json.
If an existing job with the specified name in the job definition file is already defined, the cmdlet will ask whether or not to replace it.

### EXAMPLE 2: Replace a job definition
```
PS C:\>New-AzureRmStreamAnalyticsJob -ResourceGroupName "StreamAnalytics-Default-West-US" -File "C:\JobDefinition.json" -Name "StreamingJob" -Force
```

This command replaces the job definition for StreamingJob without confirmation.

## PARAMETERS

### -Name
Specifies the name of the Azure Stream Analytics job to create.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -File
Specifies the path to a JSON file that contains the JSON representation of the Azure Stream Analytics job to create.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Force
ps_force

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
Specifies the name of the resource group to which the Azure Stream Analytics job should belong.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.Commands.StreamAnalytics.Models.PSJob

## NOTES

## RELATED LINKS

[Get-AzureRmStreamAnalyticsJob](xref:ResourceManager/AzureRM.StreamAnalytics/v1.0.12/Get-AzureRmStreamAnalyticsJob.md)

[Remove-AzureRmStreamAnalyticsJob](xref:ResourceManager/AzureRM.StreamAnalytics/v1.0.12/Remove-AzureRmStreamAnalyticsJob.md)

[Start-AzureRmStreamAnalyticsJob](xref:ResourceManager/AzureRM.StreamAnalytics/v1.0.12/Start-AzureRmStreamAnalyticsJob.md)

[Stop-AzureRmStreamAnalyticsJob](xref:ResourceManager/AzureRM.StreamAnalytics/v1.0.12/Stop-AzureRmStreamAnalyticsJob.md)

[Stop-AzureRmStreamAnalyticsJob](xref:ResourceManager/AzureRM.StreamAnalytics/v1.0.12/Stop-AzureRmStreamAnalyticsJob.md)


