---
external help file: Microsoft.Azure.Commands.ResourceManager.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 4B289017-5B98-45BC-87C4-86B08E1AC322
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v1.0.12/Resume-AzureRMAutomationJob.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v1.0.12/Resume-AzureRMAutomationJob.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v1.0.12/Resume-AzureRMAutomationJob.md
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

# Resume-AzureRmAutomationJob

## SYNOPSIS
Resumes a suspended Automation job.

## SYNTAX

```
Resume-AzureRmAutomationJob [-Id] <Guid> [-ResourceGroupName] <String> [-AutomationAccountName] <String>
 [<CommonParameters>]
```

## DESCRIPTION
The **Resume-AzureRmAutomationJob** cmdlet resumes a suspended Azure Automation job.
Specify the suspended job.

To suspend a job, use the Suspend-AzureRmAutomationJob cmdlet.

## EXAMPLES

### Example 1: Resume a suspended job
```
PS C:\>Resume-AzureRmAutomationJob -AutomationAccountName "Contoso17" -Id 2989b069-24fe-40b9-b3bd-cb7e5eac4b64 -ResourceGroupName "ResourceGroup01"
```

This command resumes the job that has the specified ID.

## PARAMETERS

### -AutomationAccountName
Specifies the name of an Automation account in which this cmdlet resume a job.

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

### -Id
Specifies the ID of a job that this cmdlet resumes.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases: JobId

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of a resource group for which this cmdlet resumes a job.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureRmAutomationJob](xref:ResourceManager/AzureRM.Automation/v1.0.12/Get-AzureRMAutomationJob.md)

[Get-AzureRmAutomationJobOutput](xref:ResourceManager/AzureRM.Automation/v1.0.12/Get-AzureRMAutomationJobOutput.md)

[Stop-AzureRmAutomationJob](xref:ResourceManager/AzureRM.Automation/v1.0.12/Stop-AzureRMAutomationJob.md)

[Suspend-AzureRmAutomationJob](xref:ResourceManager/AzureRM.Automation/v1.0.12/Suspend-AzureRMAutomationJob.md)


