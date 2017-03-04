---
external help file: Microsoft.Azure.Commands.ApiManagement.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 15BB07F9-2961-4530-BD64-7362058529E5
updated_at: 1/11/2017 8:34 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Get-AzureRmApiManagementSubscription.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Get-AzureRmApiManagementSubscription.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/1e1f15e9dfe7a1d13d21733b3111880550e35887/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/Get-AzureRmApiManagementSubscription.md
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

# Get-AzureRmApiManagementSubscription

## SYNOPSIS
Gets subscriptions.

## SYNTAX

### Get all subscriptions (Default)
```
Get-AzureRmApiManagementSubscription -Context <PsApiManagementContext> [<CommonParameters>]
```

### Get by subsctiption ID
```
Get-AzureRmApiManagementSubscription -Context <PsApiManagementContext> [-SubscriptionId <String>]
 [<CommonParameters>]
```

### Get by user ID
```
Get-AzureRmApiManagementSubscription -Context <PsApiManagementContext> [-UserId <String>] [<CommonParameters>]
```

### Get by product ID
```
Get-AzureRmApiManagementSubscription -Context <PsApiManagementContext> [-ProductId <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmApiManagementSubscription** cmdlet gets a specified subscription, or all subscriptions, if no subscription is specified.

## EXAMPLES

### Example 1: Get all subscriptions
```
PS C:\> Get-AzureRmApiManagementSubscription -Context $apimContext
```

This command gets all subscriptions.

### Example 2: Get a subscription with a specified ID
```
PS C:\> Get-AzureRmApiManagementSubscription -Context $apimContext -SubscriptionId "0123456789"
```

This command gets a subscription by ID.

### Example 3: Get all subscriptions for a user
```
PS C:\> Get-AzureRmApiManagementSubscription -Context $apimContext -UserId "777"
```

This command gets a user's subscriptions.

### Example 4: Get all subscriptions for a product
```
PS C:\> Get-AzureRmApiManagementSubscription -Context $apimContext -ProductId "999"
```

This command gets all subscriptions for the product.

## PARAMETERS

### -Context
Specifies a **PsApiManagementContext** object.

```yaml
Type: PsApiManagementContext
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SubscriptionId
Specifies a subscription identifier.
If specified, this cmdlet finds subscription by the identifier.

```yaml
Type: String
Parameter Sets: Get by subsctiption ID
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -UserId
Specifies a user identifier.
If specified, this cmdlet finds all subscriptions by the user identifier.

```yaml
Type: String
Parameter Sets: Get by user ID
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ProductId
Specifies a product identifier.
If specified, this cmdlet finds all subscriptions by the product identifier.

```yaml
Type: String
Parameter Sets: Get by product ID
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

### IList<Microsoft.Azure.Commands.ApiManagement.ServiceManagement.Models.PsApiManagementSubscription>

## NOTES

## RELATED LINKS

[New-AzureRmApiManagementSubscription](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/New-AzureRmApiManagementSubscription.md)

[Remove-AzureRmApiManagementSubscription](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Remove-AzureRmApiManagementSubscription.md)

[Set-AzureRmApiManagementSubscription](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Set-AzureRmApiManagementSubscription.md)


