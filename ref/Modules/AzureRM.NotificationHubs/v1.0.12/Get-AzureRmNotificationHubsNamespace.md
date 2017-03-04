---
external help file: Microsoft.Azure.Commands.NotificationHubs.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: F167BBA1-B756-49FD-81B7-CFAFCE463593
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.NotificationHubs/v1.0.12/Get-AzureRmNotificationHubsNamespace.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.NotificationHubs/v1.0.12/Get-AzureRmNotificationHubsNamespace.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.NotificationHubs/v1.0.12/Get-AzureRmNotificationHubsNamespace.md
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

# Get-AzureRmNotificationHubsNamespace

## SYNOPSIS
Gets information about a notification hub namespace.

## SYNTAX

```
Get-AzureRmNotificationHubsNamespace [[-ResourceGroup] <String>] [[-Namespace] <String>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
**The Get-AzureRmNotificationHubsNamespace** cmdlet gets information about notification hub namespaces.
This cmdlet provides you the option of getting information for all your namespaces, information about the namespaces assigned to a specified resource group; or for returning information about a specific namespace.

Namespaces are logical containers that help you organize and manage your notification hubs.
You must have at least one notification hub namespace: all notification hubs must be assigned to a namespace.
A single namespace can house multiple hubs which means that you might only need one namespace in your organization.
However, you can also have multiple namespaces to better organize your hubs, or to give specific individuals permission to manage a selected subset of hubs.

The **Get-AzureRmNotificationHubsNamespace** cmdlet returns basic information about the namespace itself.
To get information about the authorization rules associated with a namespace use Get-AzureRmNotificationHubsNamespaceAuthorizationRules.

## EXAMPLES

### Example 1: Get information for all notification hub namespaces
```
PS C:\>Get-AzureRmNotificationHubsNamespace
```

This command returns information for all your notification hub namespaces.

### Example 2: Get information for a single notification hub namespace
```
PS C:\>Get-AzureRmNotificationHubsNamespace -Namespace "ContosoNamespace"
```

This command gets information for a single notification hub namespace: ContosoNamespace.

### Example 3: Get information for all notification hubs assigned to a specific namespace
```
PS C:\>Get-AzureRmNotificationHubsNamespace -ResourceGroup "ContosoNotificationsGroup"
```

This command gets information for all notification hub namespaces assigned to the resource group ContosoNotificationsGroup.

## PARAMETERS

### -ResourceGroup
Specifies the resource group to which the namespace is assigned.

Resource groups organize items such as namespaces, notification hubs, and authorization rules in ways that help simply inventory management and Azure administration.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Namespace
Specifies a unique name for the namespace.

Namespaces provide a way to group and categorize notification hubs.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
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

[Get-AzureRmNotificationHubsNamespaceAuthorizationRules](xref:ResourceManager/AzureRM.NotificationHubs/v1.0.12/Get-AzureRmNotificationHubsNamespaceAuthorizationRules.md)

[New-AzureRmNotificationHubsNamespace](xref:ResourceManager/AzureRM.NotificationHubs/v1.0.12/New-AzureRmNotificationHubsNamespace.md)

[Remove-AzureRmNotificationHubsNamespace](xref:ResourceManager/AzureRM.NotificationHubs/v1.0.12/Remove-AzureRmNotificationHubsNamespace.md)

[Set-AzureRmNotificationHubsNamespace](xref:ResourceManager/AzureRM.NotificationHubs/v1.0.12/Set-AzureRmNotificationHubsNamespace.md)


