---
external help file: Microsoft.Azure.Commands.ResourceManager.Automation.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 8A32923B-A0C6-490E-86BB-572F35FA4C94
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Remove-AzureAutomationAccount.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Remove-AzureAutomationAccount.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Automation/v0.9.8/Remove-AzureAutomationAccount.md
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

# Remove-AzureAutomationAccount

## SYNOPSIS
Removes an Automation account.

## SYNTAX

```
Remove-AzureAutomationAccount [-ResourceGroupName] <String> [-Name] <String> [-Force] [-Profile <AzureProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureAutomationAccount** cmdlet removes an Azure Automation account from a resource group.

For more information about Automation accounts, type `Get-Help New-AzureAutomationAccount`.

## EXAMPLES

### Example 1: Remove an automation account
```
PS C:\>Remove-AzureAutomationAccount -Name "MyAutomationAccount" -Force -ResourceGroupName "ResourceGroup01"
```

This command removes an automation account named MyAutomationAccount without prompting for user validation.

## PARAMETERS

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

### -Name
Specifies the name of the Automation account that this cmdlet removes.

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
Specifies the name of the resource group from which this cmdlet removes an Automation account.

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

[Get-AzureAutomationAccount](xref:ResourceManager/AzureRM.Automation/v0.9.8/Get-AzureAutomationAccount.md)

[New-AzureAutomationAccount](xref:ResourceManager/AzureRM.Automation/v0.9.8/New-AzureAutomationAccount.md)

[Set-AzureAutomationAccount](xref:ResourceManager/AzureRM.Automation/v0.9.8/Set-AzureAutomationAccount.md)


