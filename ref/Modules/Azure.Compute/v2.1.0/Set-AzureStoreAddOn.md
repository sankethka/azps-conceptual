---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: D7C83601-59C6-4014-9664-D5CE812A8DC6
updated_at: 10/24/2016 11:55 PM
ms.date: 10/24/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v2.1.0/Set-AzureStoreAddOn.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v2.1.0/Set-AzureStoreAddOn.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/4377291ee360e58e2c1c5d644155daf6a0279055/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v2.1.0/Set-AzureStoreAddOn.md
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

# Set-AzureStoreAddOn

## SYNOPSIS
Updates an existing add-on instance.

## SYNTAX

```
Set-AzureStoreAddOn [-Name] <String> [-Plan] <String> [[-PromotionCode] <String>] [-PassThru]
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
This topic describes the cmdlet in the 0.8.10 version of the Microsoft Azure PowerShell module.
To get the version of the module you're using, in the Azure PowerShell console, type (Get-Module -Name Azure).Version.

This cmdlet updates an existing add-on instance from the current subscription.

## EXAMPLES

### Example 1
```
PS C:\>Set-AzureStoreAddOn MyAddOn NewPlanId
```

This example updates an add-on with a new plan ID.

### Example 2
```
PS C:\>Set-AzureStoreAddOn MyAddOn NewPlanId MyPromoCode
```

This example updates an add-on with a new plan ID and promotional code.

## PARAMETERS

### -Name
Specifies the name of the add-on instance.

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

### -Plan
Specifies the plan ID.

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

### -PromotionCode
Specifies the promotional code.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PassThru
If specified, the cmdlet returns true if the command succeeds and false if it fails.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile
In-memory profile.

```yaml
Type: AzureSMProfile
Parameter Sets: (All)
Aliases: 

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

[Get-AzureStoreAddOn](xref:ServiceManagement/Azure.Compute/v2.1.0/Get-AzureStoreAddOn.md)

[New-AzureStoreAddOn](xref:ServiceManagement/Azure.Compute/v2.1.0/New-AzureStoreAddOn.md)

[Remove-AzureStoreAddOn](xref:ServiceManagement/Azure.Compute/v2.1.0/Remove-AzureStoreAddOn.md)


