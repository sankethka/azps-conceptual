---
external help file: Microsoft.Azure.Commands.EventHub.dll-Help.xml
online version: 
schema: 2.0.0
updated_at: 2/23/2017 1:02 AM
ms.date: 2/23/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Set-AzureRmEventHubNamespaceAuthorizationRule.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Set-AzureRmEventHubNamespaceAuthorizationRule.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/dd8e1f33e1d480cad4885c78d4fbc77f95b7ef5c/azureps-cmdlets-docs/ResourceManager/AzureRM.EventHub/v0.0.2/Set-AzureRmEventHubNamespaceAuthorizationRule.md
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

# Set-AzureRmEventHubNamespaceAuthorizationRule

## SYNOPSIS
Updates the authorization rule on the specified Event Hubs namespace.

## SYNTAX

```
Set-AzureRmEventHubNamespaceAuthorizationRule [-ResourceGroupName] <String> [-NamespaceName] <String>
 -AuthRuleObj <SharedAccessAuthorizationRuleAttributes> [-AuthorizationRuleName <String>] [-Rights <String[]>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmEventHubNamespaceAuthorizationRule** cmdlet updates the authorization rule on the specified Event Hubs namespace.

## EXAMPLES

### Example 1
```
PS C:\> Set-AzureRmEventHubNamespaceAuthorizationRule -ResourceGroupName "MyResourceGroupName" -NamespaceName "MyNamespaceName" -AuthorizationRuleName "MyAuthRuleName" -Rights @("Manage")
```

This command updates the authorization rule named MyAuthRuleName to grant **Manage** rights.

## PARAMETERS

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

### -NamespaceName
Specifies the name of the Event Hubs namespace.


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
Specifies the name of the resource group that contains the Event Hub.

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

### -AuthorizationRuleName
Specifies the authorization rule name that this cmdlet modifies. Required if *AuthruleObj* is not specified.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -AuthRuleObj
Specifies the Event Hubs namespace authorization rule object.

```yaml
Type: SharedAccessAuthorizationRuleAttributes
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Rights
Specifies rights that this cmdlet sets when this cmdlet creates the authorization rule.
For instance, @("Listen","Send","Manage").

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

## OUTPUTS

### Microsoft.Azure.Commands.EventHub.Models.SharedAccessAuthorizationRuleAttributes

## NOTES

## RELATED LINKS

[Get-AzureRmEventHubNamespaceAuthorizationRule](xref:ResourceManager/AzureRM.EventHub/v0.0.2/Get-AzureRmEventHubNamespaceAuthorizationRule.md)

[New-AzureRmEventHubNamespaceAuthorizationRule](xref:ResourceManager/AzureRM.EventHub/v0.0.2/New-AzureRmEventHubNamespaceAuthorizationRule.md)

[Remove-AzureRmEventHubNamespaceAuthorizationRule](xref:ResourceManager/AzureRM.EventHub/v0.0.2/Remove-AzureRmEventHubNamespaceAuthorizationRule.md)
