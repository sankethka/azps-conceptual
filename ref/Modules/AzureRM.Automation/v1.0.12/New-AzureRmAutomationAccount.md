---
external help file: Microsoft.Azure.Commands.ResourceManager.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 1A996E7A-1DE8-4533-A39A-C17CF1AB18FD
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v1.0.12/New-AzureRmAutomationAccount.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v1.0.12/New-AzureRmAutomationAccount.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v1.0.12/New-AzureRmAutomationAccount.md
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

# New-AzureRmAutomationAccount

## SYNOPSIS
Creates an Automation account.

## SYNTAX

```
New-AzureRmAutomationAccount [-ResourceGroupName] <String> [-Name] <String> [-Location] <String>
 [-Plan <String>] [-Tags <IDictionary>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmAutomationAccount** cmdlet creates an Azure Automation account in a resource group.

An Automation account is a container for Automation resources that is isolated from the resources of other Automation accounts.
Automation resources include runbooks, Desired State Configuration (DSC) configurations, jobs, and assets.

## EXAMPLES

### Example 1: Create an automation account
```
PS C:\> New-AzureRmAutomationAccount -Name "ContosoAutomationAccount" -Location "East US" -ResourceGroupName "ResourceGroup01"
```

This command creates a new automation account named ContosoAutomationAccount in the East US region.

## PARAMETERS

### -Location
Specifies the location in which this cmdlet creates the Automation account.
To obtain valid locations, use the Get-AzureRMLocation cmdlet.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies a name for the Automation account.

```yaml
Type: String
Parameter Sets: (All)
Aliases: AutomationAccountName

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Plan
Specifies the plan for the Automation account.
Valid values are: 

- Basic 
- Free

```yaml
Type: String
Parameter Sets: (All)
Aliases: 
Accepted values: Free, Basic

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of a resource group to which this cmdlet adds an Automation account.

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

### -Tags
Specifies tags for the Automation account.

```yaml
Type: IDictionary
Parameter Sets: (All)
Aliases: Tag

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

[Get-AzureRmAutomationAccount](xref:ResourceManager/AzureRM.Automation/v1.0.12/Get-AzureRmAutomationAccount.md)

[Remove-AzureRmAutomationAccount](xref:ResourceManager/AzureRM.Automation/v1.0.12/Remove-AzureRmAutomationAccount.md)

[Set-AzureRmAutomationAccount](xref:ResourceManager/AzureRM.Automation/v1.0.12/Set-AzureRmAutomationAccount.md)


