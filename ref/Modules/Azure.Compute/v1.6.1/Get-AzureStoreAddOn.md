---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: CEB557B5-E9AF-4797-8385-94078DE84662
updated_at: 10/24/2016 11:55 PM
ms.date: 10/24/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Get-AzureStoreAddOn.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Get-AzureStoreAddOn.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/4377291ee360e58e2c1c5d644155daf6a0279055/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v1.6.1/Get-AzureStoreAddOn.md
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

# Get-AzureStoreAddOn

## SYNOPSIS
Gets the available Azure Store add-ons.

## SYNTAX

### ListAvailable
```
Get-AzureStoreAddOn [-ListAvailable] [[-Country] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### GetAddOn
```
Get-AzureStoreAddOn [[-Name] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
powershell_prelim

Gets all the available add-ons for purchasing from the Azure Store, or gets the existing add-on instances for the current subscription.

## EXAMPLES

### Example 1
```
PS C:\>Get-AzureStoreAddOn
```

This example gets all purchased add-on instances for the current subscription.

### Example 2
```
PS C:\>Get-AzureStoreAddOn -ListAvailable
```

This example gets all the available add-ons for purchasing in United States from the Azure Store.

### Example 3
```
PS C:\>Get-AzureStoreAddOn -Name MyAddOn
```

This example gets an add-on named MyAddOn from the purchased add-on instance in the current subscription.

## PARAMETERS

### -ListAvailable
If specified, gets available add-ons for purchasing from the Azure Store.

```yaml
Type: SwitchParameter
Parameter Sets: ListAvailable
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Country
If specified, returns only the Azure Store add-on instances available in the specified country.
The default is "US".

```yaml
Type: String
Parameter Sets: ListAvailable
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Returns the add-on that matches the specified name.

```yaml
Type: String
Parameter Sets: GetAddOn
Aliases: 

Required: False
Position: 3
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

[New-AzureStoreAddOn](xref:ServiceManagement/Azure.Compute/v1.6.1/New-AzureStoreAddOn.md)

[Remove-AzureStoreAddOn](xref:ServiceManagement/Azure.Compute/v1.6.1/Remove-AzureStoreAddOn.md)

[Set-AzureStoreAddOn](xref:ServiceManagement/Azure.Compute/v1.6.1/Set-AzureStoreAddOn.md)


