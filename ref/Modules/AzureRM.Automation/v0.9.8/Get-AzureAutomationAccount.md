---
external help file: Microsoft.Azure.Commands.ResourceManager.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 37962F81-2C4A-4CCA-B566-9E90E4A876F8
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Get-AzureAutomationAccount.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Get-AzureAutomationAccount.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Get-AzureAutomationAccount.md
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

# Get-AzureAutomationAccount

## SYNOPSIS
Gets Automation accounts in a resource group.

## SYNTAX

### ByAll (Default)
```
Get-AzureAutomationAccount [[-ResourceGroupName] <String>] [-Profile <AzureProfile>] [<CommonParameters>]
```

### ByAutomationAccountName
```
Get-AzureAutomationAccount [-ResourceGroupName] <String> [-Name] <String> [-Profile <AzureProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureAutomationAccount** cmdlet gets Azure Automation accounts in a resource group.

For more information about Automation accounts, type `Get-Help New-AzureAutomationAccount`.

## EXAMPLES

### Example 1: Get all accounts
```
PS C:\>Get-AzureAutomationAccount -ResourceGroupName "MyResourceGroup" -Name "MyAutomationAccount"
```

This command gets all Automation accounts in the resource group named MyResourceGroup.

### Example 2: Get an account
```
PS C:\>Get-AzureAutomationAccount -ResourceGroupName "MyResourceGroup" -Name "MyAutomationAccount"
```

This command gets the Automation account named MyAutomationAccount in the resource group named MyResourceGroup.

## PARAMETERS

### -Name
Specifies the name of the Automation account that this cmdlet gets.

```yaml
Type: String
Parameter Sets: ByAutomationAccountName
Aliases: AutomationAccountName

Required: True
Position: 2
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

### -ResourceGroupName
Specifies the name of a resource group in which this cmdlet gets Automation accounts.

```yaml
Type: String
Parameter Sets: ByAll
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: ByAutomationAccountName
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

[New-AzureAutomationAccount](xref:ResourceManager/AzureRM.Automation/v0.9.8/New-AzureAutomationAccount.md)

[Remove-AzureAutomationAccount](xref:ResourceManager/AzureRM.Automation/v0.9.8/Remove-AzureAutomationAccount.md)

[Set-AzureAutomationAccount](xref:ResourceManager/AzureRM.Automation/v0.9.8/Set-AzureAutomationAccount.md)


