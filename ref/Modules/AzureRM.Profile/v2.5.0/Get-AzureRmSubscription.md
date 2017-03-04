---
external help file: Microsoft.Azure.Commands.Profile.dll-Help.xml
ms.assetid: 0B5DA1D4-7CD3-4EBA-98D1-F6C0B5AB46FF
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Profile/v2.5.0/Get-AzureRmSubscription.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Profile/v2.5.0/Get-AzureRmSubscription.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ResourceManager/AzureRM.Profile/v2.5.0/Get-AzureRmSubscription.md
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

# Get-AzureRmSubscription

## SYNOPSIS
Gets subscriptions that the current account can access.

## SYNTAX

### ListByIdInTenant (Default)
```
Get-AzureRmSubscription [-SubscriptionId <String>] [-TenantId <String>] [<CommonParameters>]
```

### ListByNameInTenant
```
Get-AzureRmSubscription [-SubscriptionName <String>] [-TenantId <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmSubscription** cmdlet gets the subscription ID, subscription name, and home tenant for Azure subscriptions that the current account can access.

## EXAMPLES

### Example 1: Get all subscriptions for a specific tenant
```
PS C:\>Get-AzureRmSubscription -TenantId 'xxxx-xxxx-xxxx-xxxx'
SubscriptionId: yyyy-yyyy-yyyy-yyyy
TenantId: xxxx-xxxx-xxxx-xxxx
Subscription Name: Contoso Subscription 1


SubscriptionId: yyyy-yyyy-yyyy-yyyy
TenantId: xxxx-xxxx-xxxx-xxxxSubscription Name: Contoso Subscription 2
```

This cmdlet displays the subscriptions in the given tenant that are authorized for the current account.
These examples use placeholder values for the tenant ID and the subscription ID.

### Example 2: Get all subscriptions in the current tenant
```
PS C:\>Get-AzureRmSubscription
SubscriptionId: yyyy-yyyy-yyyy-yyyy
TenantId: xxxx-xxxx-xxxx-xxxx
Subscription Name: Contoso Subscription 1


SubscriptionId: yyyy-yyyy-yyyy-yyyy
TenantId: xxxx-xxxx-xxxx-xxxx
Subscription Name: Contoso Subscription 2
```

This command gets all subscriptions in the current tenant that are authorized for the current user.

### Example 3: Change the current context to use a specific subscription
```
PS C:\>Get-AzureRmSubscription -SubscriptionId 'xxxx-xxxx-xxxx-xxxx' -TenantId 'yyyy-yyyy-yyyy-yyyy' | Set-AzureRmContext
SubscriptionId: xxxx-xxxx-xxxx-xxxx
TenantId: yyyy-yyyy-yyyy-yyyy
Subscription Name: Contoso Subscription 1
```

This command gets the specified subscription, and then passes it to the Set-AzureRmContext cmdlet by using the pipeline operator.
That cmdlet sets the current context to use that subscription.
By default, all subsequent cmdlets in this session use the specified subscription.

## PARAMETERS

### -SubscriptionId
Specifies the ID of the subscription to get.

```yaml
Type: String
Parameter Sets: ListByIdInTenant
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SubscriptionName
Specifies the name of the subscription to get.

```yaml
Type: String
Parameter Sets: ListByNameInTenant
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TenantId
Specifies the ID of the tenant that contains subscriptions to get.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Set-AzureRmContext](xref:ResourceManager/AzureRM.Profile/v2.5.0/Set-AzureRmContext.md)


