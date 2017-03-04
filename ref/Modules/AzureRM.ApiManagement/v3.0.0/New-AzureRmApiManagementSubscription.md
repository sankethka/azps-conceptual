---
external help file: Microsoft.Azure.Commands.ApiManagement.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 09D35642-47E1-4479-901A-0F786C9D2F99
updated_at: 1/11/2017 8:34 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/New-AzureRmApiManagementSubscription.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/New-AzureRmApiManagementSubscription.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/1e1f15e9dfe7a1d13d21733b3111880550e35887/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v3.0.0/New-AzureRmApiManagementSubscription.md
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

# New-AzureRmApiManagementSubscription

## SYNOPSIS
Creates a subscription.

## SYNTAX

```
New-AzureRmApiManagementSubscription -Context <PsApiManagementContext> [-SubscriptionId <String>]
 -Name <String> -UserId <String> -ProductId <String> [-PrimaryKey <String>] [-SecondaryKey <String>]
 [-State <PsApiManagementSubscriptionState>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmApiManagementSubscription** cmdlet creates a subscription.

## EXAMPLES

### Example 1: Subscribe a user to a product
```
PS C:\> New-AzureRmApiManagementSubscription -Context $apimContext -UserId "777" -ProductId "999"
```

This command subscribes an existing user to a product.

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
Specifies the subscription ID.
This parameter is generated if not specified.

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

### -Name
Specifies the subscription name.

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

### -UserId
Specifies the subscriber ID.

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

### -ProductId
Specifies the ID of the product to which to subscribe.

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

### -PrimaryKey
Specifies the subscription primary key.
If this parameter is not specified the key is generated automatically.
This parameter must be 1 to 300 characters long.

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

### -SecondaryKey
Specifies the subscription secondary key.
This parameter is generated automatically if it is not specified.
This parameter must be 1 to 300 characters long.

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

### -State
Specifies the subscription state.
The default value is $Null.

```yaml
Type: PsApiManagementSubscriptionState
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

### Microsoft.Azure.Commands.ApiManagement.ServiceManagement.Models.PsApiManagementSubscription

## NOTES

## RELATED LINKS

[Get-AzureRmApiManagementSubscription](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Get-AzureRmApiManagementSubscription.md)

[Remove-AzureRmApiManagementSubscription](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Remove-AzureRmApiManagementSubscription.md)

[Set-AzureRmApiManagementSubscription](xref:ResourceManager/AzureRM.ApiManagement/v3.0.0/Set-AzureRmApiManagementSubscription.md)


