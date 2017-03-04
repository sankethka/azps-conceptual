---
external help file: Microsoft.Azure.Commands.NotificationHubs.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: E60E3A99-FC9D-4C4F-B7AA-CE1FB7B8792D
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.NotificationHubs/v2.1.0/Get-AzureRmNotificationHubsNamespaceListKeys.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.NotificationHubs/v2.1.0/Get-AzureRmNotificationHubsNamespaceListKeys.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.NotificationHubs/v2.1.0/Get-AzureRmNotificationHubsNamespaceListKeys.md
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

# Get-AzureRmNotificationHubsNamespaceListKeys

## SYNOPSIS
Gets the primary and secondary connection strings associated with a notification hub namespace authorization rule.

## SYNTAX

```
Get-AzureRmNotificationHubsNamespaceListKeys [-ResourceGroup] <String> [-Namespace] <String>
 [-AuthorizationRule] <String> [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmNotificationHubsNamespaceListKeys** cmdlet returns the primary and secondary connection strings for a Shared Access Signature (SAS) authorization rule assigned to a notification hub namespace.

Authorization rules manage user rights to a notification hub namespace.
Each rule includes a primary and a secondary connection string.

## EXAMPLES

### Example 1: Get the primary and secondary connection strings for an authorization rule
```
PS C:\>Get-AzureRmNotificationHubsNamespaceListKeys -Namespace "ContosoNamespace" -ResourceGroup "ContosoNotificationsGroup" -AuthorizationRule "ListenRule"
```

This command returns the primary and secondary connection strings for the authorization rule named ListenRule assigned to the ContosoNamespace namespace.
When you run this command you must include the name of the resource group that the namespace is assigned to.

## PARAMETERS

### -ResourceGroup
Specifies the resource group to which the namespace is assigned.

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
Specifies the namespace containing the connection strings that this cmdlet gets.

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
These rules determine the type of access that users have to the notification hub.

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

### -InformationAction
Specifies how this cmdlet responds to an information event.

The acceptable values for this parameter are:

- Continue
- Ignore
- Inquire
- SilentlyContinue
- Stop
- Suspend

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: infa

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InformationVariable
Specifies an information variable.

```yaml
Type: String
Parameter Sets: (All)
Aliases: iv

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

## NOTES

## RELATED LINKS

[Get-AzureRmNotificationHubsNamespace](xref:ResourceManager/AzureRM.NotificationHubs/v2.1.0/Get-AzureRmNotificationHubsNamespace.md)

[Get-AzureRmNotificationHubsNamespaceAuthorizationRules](xref:ResourceManager/AzureRM.NotificationHubs/v2.1.0/Get-AzureRmNotificationHubsNamespaceAuthorizationRules.md)


