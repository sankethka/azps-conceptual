---
external help file: Microsoft.Azure.Commands.ServiceBus.dll-Help.xml
online version: 
schema: 2.0.0
updated_at: 2/3/2017 7:40 PM
ms.date: 2/3/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ServiceBus/v0.0.2/Remove-AzureRmServiceBusNamespaceAuthorizationRule.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ServiceBus/v0.0.2/Remove-AzureRmServiceBusNamespaceAuthorizationRule.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/141ad4d0f36a215ecc79ef71aa0cc5b4c08a99d0/azureps-cmdlets-docs/ResourceManager/AzureRM.ServiceBus/v0.0.2/Remove-AzureRmServiceBusNamespaceAuthorizationRule.md
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

# Remove-AzureRmServiceBusNamespaceAuthorizationRule

## SYNOPSIS
Removes the authorization rule of a Service Bus namespace from the specified resource group.

## SYNTAX

```
Remove-AzureRmServiceBusNamespaceAuthorizationRule [-ResourceGroup] <String> [-NamespaceName] <String>
 [-AuthorizationRuleName] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureRmServiceBusNamespaceAuthorizationRule** cmdlet removes the authorization rule of a Service Bus namespace for the specified resource group.

## EXAMPLES

### Example 1
```
PS C:\> Remove-AzureRmServiceBusNamespaceAuthorizationRule -ResourceGroup Default-ServiceBus-WestUS -NamespaceName SB-Example1 -AuthorizationRuleName AuthoRule1
```

Removes the authorization rule `SBAuthoRule1` of namespace `SB-Example1` from the specified resource group.

## PARAMETERS

### -AuthorizationRuleName
The namespace authorization rule name.

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
The Service Bus namespace name.

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

### -ResourceGroup
The name of the resource group.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

###-ResourceGroup
 System.String

###-NamespaceName
 System.String

###-AuthorizationRuleName
 System.String

## OUTPUTS


## NOTES

## RELATED LINKS

