---
external help file: Microsoft.Azure.Commands.NotificationHubs.dll-Help.xml
ms.assetid: 08D03498-D18D-47FE-8916-702FA2E7D719
online version: 
schema: 2.0.0
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.NotificationHubs/v2.3.0/Get-AzureRmNotificationHubsNamespaceAuthorizationRules.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.NotificationHubs/v2.3.0/Get-AzureRmNotificationHubsNamespaceAuthorizationRules.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.NotificationHubs/v2.3.0/Get-AzureRmNotificationHubsNamespaceAuthorizationRules.md
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

# Get-AzureRmNotificationHubsNamespaceAuthorizationRules

## SYNOPSIS
Gets information about the authorization rules associated with a notification hub namespace.

## SYNTAX

```
Get-AzureRmNotificationHubsNamespaceAuthorizationRules [-ResourceGroup] <String> [-Namespace] <String>
 [[-AuthorizationRule] <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmNotificationHubsNamespaceAuthorizationRules** cmdlet returns information about the Shared Access Signature (SAS) authorization rules associated with a notification hub namespace.
You can return information about all the rules associated with the namespace.
Alternatively, and by including the *AuthorizationRule* parameter, you can return information for a specific rule.

Authorization rules manage access to namespaces.
This is done through the creation of links, as URIs, based on different permission levels.
Platform levels can be one of the following: 

- Listen
- Send
- Manage

Clients are directed to one of these URIs based on the appropriate permission level.
For instance, a client given the Listen permission will be directed to the URI for that permission.

This cmdlet only gets the authorization rules associated with a namespace.
To get information about the namespace itself, use Get-AzureRmNotificationHubsNamespace.

## EXAMPLES

### Example 1: Get information about all authorization rules assigned to namespaces
```
PS C:\>Get-AzureRmNotificationHubsNamespaceAuthorizationRules -Namespace "ContosoNamespace" -ResourceGroup "ContosoNotificationsGroup"
```

This command gets information about all the authorization rules assigned to both the namespace ContosoNamespace and the ContosoNotificationsGroup resource group.

### Example 2: Get information about an authorization rule
```
PS C:\>Get-AzureRmNotificationHubsNamespaceAuthorizationRules -Namespace "ContosoNamespace" -ResourceGroup "ContosoNotificationsGroup" -AuthorizationRule "ListenRule"
```

This command gets information about a single namespace authorization rule named ListenRule.
You must include the namespace and the resource group when you get information for a specific authorization rule.

## PARAMETERS

### -ResourceGroup
Specifies the resource group to which the authorization rules are assigned.

Resource groups organize items such as namespaces, notification hubs, and authorization rules in ways that help simply inventory management and Azure administration.

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

### -Namespace
Specifies the namespace to which the authorization rules are assigned.
Namespaces provide a way to group and categorize notification hubs.

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

### -AuthorizationRule
Specifies the name of a SAS authentication rule.
These rules determine the type of access that users have to the namespace.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
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

[Get-AzureRmNotificationHubsNamespace](xref:ResourceManager/AzureRM.NotificationHubs/v2.3.0/Get-AzureRmNotificationHubsNamespace.md)

[New-AzureRmNotificationHubsNamespace](xref:ResourceManager/AzureRM.NotificationHubs/v2.3.0/New-AzureRmNotificationHubsNamespace.md)

[Remove-AzureRmNotificationHubsNamespace](xref:ResourceManager/AzureRM.NotificationHubs/v2.3.0/Remove-AzureRmNotificationHubsNamespace.md)

[Set-AzureRmNotificationHubsNamespace](xref:ResourceManager/AzureRM.NotificationHubs/v2.3.0/Set-AzureRmNotificationHubsNamespace.md)


