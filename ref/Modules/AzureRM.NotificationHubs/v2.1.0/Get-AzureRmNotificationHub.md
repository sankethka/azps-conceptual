---
external help file: Microsoft.Azure.Commands.NotificationHubs.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: E8149B6A-A2C4-4C30-A1F3-F9A393F68120
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.NotificationHubs/v2.1.0/Get-AzureRmNotificationHub.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.NotificationHubs/v2.1.0/Get-AzureRmNotificationHub.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.NotificationHubs/v2.1.0/Get-AzureRmNotificationHub.md
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

# Get-AzureRmNotificationHub

## SYNOPSIS
Gets information about your notification hubs.

## SYNTAX

```
Get-AzureRmNotificationHub [-ResourceGroup] <String> [-Namespace] <String> [[-NotificationHub] <String>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmNotificationHub** cmdlet gets information about the notification hubs in a specified namespace and assigned to a specified resource group.
For example, you can get information for all the notification hubs in the namespace ContosoNamespace and assigned to the ContosoNotificationsGroup resource group.

Alternatively, you can use the *NotificationHub* parameter to limit the returned data to information about a specific notification hub.

Notification hubs are used to send push notifications to multiple clients regardless of the platform, such as iOS, Android, Windows Phone 8, and Windows Store, used by those clients.
These hubs are roughly equivalent to individual apps and each of your apps will typically have its own notification hub.

This cmdlet only gets information about the hub itself.
Other cmdlets, such as Get-AzureRmNotificationHubAuthorizationRules, Get-AzureRmNotificationHubListKeys, and Get-AzureRmNotificationHubPNSCredentials, are needed to get information about a hub's authorization rules, connection strings, and platform notification service credentials.

## EXAMPLES

### Example 1: Get information for all notification hubs in a specific namespace
```
PS C:\>Get-AzureRmNotificationHub -Namespace "ContosoNamespace" -ResourceGroup "ContosoNotificationsGroup"
```

This command gets information for all the notification hubs in the namespace named ContosoNamespace that have been assigned to the resource group ContosoNotificationsGroup.

## PARAMETERS

### -ResourceGroup
Specifies the resource group to which the notification hub is assigned.

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
Specifies the namespace to which the notification hub is assigned.

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

### -NotificationHub
Specifies the name of the notification hub that this cmdlet gets.

Notification hubs are used to send push notifications to multiple clients regardless of the platform used by those clients.

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

[Get-AzureRmNotificationHubAuthorizationRules](xref:ResourceManager/AzureRM.NotificationHubs/v2.1.0/Get-AzureRmNotificationHubAuthorizationRules.md)

[Get-AzureRmNotificationHubListKeys](xref:ResourceManager/AzureRM.NotificationHubs/v2.1.0/Get-AzureRmNotificationHubListKeys.md)

[Get-AzureRmNotificationHubPNSCredentials](xref:ResourceManager/AzureRM.NotificationHubs/v2.1.0/Get-AzureRmNotificationHubPNSCredentials.md)

[New-AzureRmNotificationHub](xref:ResourceManager/AzureRM.NotificationHubs/v2.1.0/New-AzureRmNotificationHub.md)

[Remove-AzureRmNotificationHub](xref:ResourceManager/AzureRM.NotificationHubs/v2.1.0/Remove-AzureRmNotificationHub.md)

[Set-AzureRmNotificationHub](xref:ResourceManager/AzureRM.NotificationHubs/v2.1.0/Set-AzureRmNotificationHub.md)


