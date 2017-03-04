---
external help file: Microsoft.Azure.Commands.ResourceManager.Automation.dll-Help.xml
ms.assetid: 38BB4F4E-B72B-460E-8DF2-2A7A9CACDB41
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v2.4.0/Get-AzureRmAutomationJobOutputRecord.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v2.4.0/Get-AzureRmAutomationJobOutputRecord.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v2.4.0/Get-AzureRmAutomationJobOutputRecord.md
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

# Get-AzureRmAutomationJobOutputRecord

## SYNOPSIS
Gets the full output of an Automation job output record.

## SYNTAX

```
Get-AzureRmAutomationJobOutputRecord [-JobId] <Guid> [-Id] <String> [-ResourceGroupName] <String>
 [-AutomationAccountName] <String> [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmAutomationJobOutputRecord** cmdlet gets the full output of an Automation job output record.

Although the [Get-AzureRmAutomationJobOutput](./Get-AzureRmAutomationJobOutput.md) cmdlet lists one or more job output records, it returns only a summary, as a string, of the value of any output record.
It does not return the full value of an output record's outputted value in its original type.
In addition, the summary has a maximum length, which the full value that this cmdlet outputs may exceed.
Unlike **Get-AzureRmAutomationJobOutput**, this cmdlet returns the full value in its originally outputted type, for any output record's outputted value.

## EXAMPLES

### Example 1: Get the full output of an Automation job
```
PS C:\>Get-AzureRmAutomationJobOutput -AutomationAccountName "Contoso17" -Id 2989b069-24fe-40b9-b3bd-cb7e5eac4b64 -ResourceGroupName "ResourceGroup01" -Stream "Any" | Get-AzureRmAutomationJobOutputRecord
```

This command gets the full output of the job that has the specified job ID.

## PARAMETERS

### -AutomationAccountName
Specifies the name of an Automation account for which this cmdlet gets a job output record.

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

### -Id
Specifies the ID of a job output record that this cmdlet gets.

```yaml
Type: String
Parameter Sets: (All)
Aliases: StreamRecordId

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -JobId
Specifies the ID of a job for which this cmdlet gets an output record.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of a resource group for which this cmdlet gets a job output record.

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

## NOTES

## RELATED LINKS

[Get-AzureRmAutomationJobOutput](xref:ResourceManager/AzureRM.Automation/v2.4.0/Get-AzureRMAutomationJobOutput.md)
