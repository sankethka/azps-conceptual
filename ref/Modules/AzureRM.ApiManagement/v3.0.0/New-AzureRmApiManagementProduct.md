---
external help file: Microsoft.Azure.Commands.ApiManagement.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 609CC8E3-1BB8-476A-A5E6-7BAB2BC25228
updated_at: 1/11/2017 9:45 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/New-AzureRmApiManagementProduct.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/New-AzureRmApiManagementProduct.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/84ecefa3a481a03bbc48780f89a552511570cb53/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/New-AzureRmApiManagementProduct.md
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

# New-AzureRmApiManagementProduct

## SYNOPSIS
Creates an API Management product.

## SYNTAX

```
New-AzureRmApiManagementProduct -Context <PsApiManagementContext> [-ProductId <String>] -Title <String>
 [-Description <String>] [-LegalTerms <String>] [-SubscriptionRequired <Boolean>] [-ApprovalRequired <Boolean>]
 [-SubscriptionsLimit <Int32>] [-State <PsApiManagementProductState>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmApiManagementProduct** cmdlet creates an API Management product.

## EXAMPLES

### Example 1: Create a product that does not require a subscription
```
PS C:\> New-AzureRmApiManagementProduct -Context $APImContext -ProductId "0123456789" -Title "Starter" -Description "Starter Product" -LegalTerms "Free for all" -SubscriptionRequired $False -State "Published"
```

This command creates an API Management product.
No subscription is required.

### Example 2: Create a product that requires a subscription and approval
```
PS C:\> New-AzureRmApiManagementProduct -Context $APImContext -ProductId "9876543210" -Title "Unlimited" -Description "Subscribers have completely unlimited access to the API. Administrator approval is required." -LegalTerms "Free for all" -ApprovalRequired $True -State "Published" -NotificationPeriod "D10" -SubscriptionPeriod "Y1"
```

This command creates a product.
A subscription and approval are required.
This command sets the notification period to 10 days.
The subscription duration is set to one year.

## PARAMETERS

### -Context
Specifies an instance of a **PsApiManagementContext** object.

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

### -ProductId
Specifies the identifier of new product.
If you do not specify this parameter, a new product is generated.

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

### -Title
Specifies the product title.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Description
Specifies the product description.

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

### -LegalTerms
Specifies the legal terms of use of the product.

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

### -SubscriptionRequired
Indicates whether the product requires a subscription.
The default value is $True.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ApprovalRequired
Indicates whether the subscription to the product requires approval or not.
By default, this parameter is $False.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SubscriptionsLimit
Specifies the maximum number of simultaneous subscriptions.
The default value is 1.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -State
Specifies the product state.
The acceptable values for this parameter are:

- NotPublished
- Published 

The default value is NotPublished.

```yaml
Type: PsApiManagementProductState
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

### Microsoft.Azure.Commands.ApiManagement.ServiceManagement.Models.PsApiManagementProduct

## NOTES

## RELATED LINKS

[Get-AzureRmApiManagementProduct](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Get-AzureRmApiManagementProduct.md)

[Remove-AzureRmApiManagementProduct](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Remove-AzureRmApiManagementProduct.md)

[Set-AzureRmApiManagementProduct](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Set-AzureRmApiManagementProduct.md)
