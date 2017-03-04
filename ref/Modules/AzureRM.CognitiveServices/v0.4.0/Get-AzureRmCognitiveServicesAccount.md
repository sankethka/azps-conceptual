---
external help file: Microsoft.Azure.Commands.Management.CognitiveServices.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: F1CA1013-A5FD-4CA6-B4DD-D2B451F04A6B
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.CognitiveServices/v0.4.0/Get-AzureRmCognitiveServicesAccount.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.CognitiveServices/v0.4.0/Get-AzureRmCognitiveServicesAccount.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.CognitiveServices/v0.4.0/Get-AzureRmCognitiveServicesAccount.md
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

# Get-AzureRmCognitiveServicesAccount

## SYNOPSIS
Gets an account.

## SYNTAX

### AccountNameParameterSet
```
Get-AzureRmCognitiveServicesAccount [-ResourceGroupName] <String> [-Name] <String> [<CommonParameters>]
```

### ResourceGroupParameterSet
```
Get-AzureRmCognitiveServicesAccount [[-ResourceGroupName] <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmCognitiveServicesAccount** cmdlet gets the provisioned Cognitive Services accounts in the resource group specified by the *ResoureGroupName* parameter.

If you do not specify the *ResoureGroupName* parameter, this cmdlet gets all Cognitive Services accounts for the current subscription.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -ResourceGroupName
Specifies the name of the resource group the Cognitive Services account is assigned to.

```yaml
Type: String
Parameter Sets: AccountNameParameterSet
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: ResourceGroupParameterSet
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
Specifies the name of the Cognitive Services account to get.

```yaml
Type: String
Parameter Sets: AccountNameParameterSet
Aliases: CognitiveServicesAccountName, AccountName

Required: True
Position: 1
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

[New-AzureRmCognitiveServicesAccount](xref:ResourceManager/AzureRM.CognitiveServices/v0.4.0/New-AzureRmCognitiveServicesAccount.md)

[Remove-AzureRmCognitiveServicesAccount](xref:ResourceManager/AzureRM.CognitiveServices/v0.4.0/Remove-AzureRmCognitiveServicesAccount.md)

[Set-AzureRmCognitiveServicesAccount](xref:ResourceManager/AzureRM.CognitiveServices/v0.4.0/Set-AzureRmCognitiveServicesAccount.md)


