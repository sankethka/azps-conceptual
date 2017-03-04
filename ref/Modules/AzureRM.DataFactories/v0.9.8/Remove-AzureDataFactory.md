---
external help file: Microsoft.Azure.Commands.DataFactories.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: F01D6A4E-2DC7-49FF-BB76-8A896920869D
updated_at: 10/31/2016 9:17 PM
ms.date: 10/31/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DataFactories/v0.9.8/Remove-AzureDataFactory.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DataFactories/v0.9.8/Remove-AzureDataFactory.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/70d99f0e924efe152eb73454f7898f92d5a5db64/azureps-cmdlets-docs/ResourceManager/AzureRM.DataFactories/v0.9.8/Remove-AzureDataFactory.md
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

# Remove-AzureDataFactory

## SYNOPSIS
Removes the specified Azure data factory.

## SYNTAX

### ByFactoryName (Default)
```
Remove-AzureDataFactory [-Name] <String> [-Force] [-ResourceGroupName] <String> [-Profile <AzureProfile>]
 [<CommonParameters>]
```

### ByFactoryObject
```
Remove-AzureDataFactory [-DataFactory] <PSDataFactory> [-Force] [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The Remove-AzureDataFactory cmdlet removes the specified Azure data factory.

## EXAMPLES

### -------------------------- EXAMPLE 1 --------------------------
```
PS C:\> Remove-AzureDataFactory WikiADF -ResourceGroupName ADF
```

Removes the Azure data factory 'WikiADF'.

## PARAMETERS

### -DataFactory
Specifies the  object to remove.

```yaml
Type: PSDataFactory
Parameter Sets: ByFactoryObject
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Force
```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
Name of the Azure data factory.

```yaml
Type: String
Parameter Sets: ByFactoryName
Aliases: DataFactoryName

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Name of the resource group.

```yaml
Type: String
Parameter Sets: ByFactoryName
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile

```yaml
Type: AzureProfile
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

### System.Boolean

## NOTES

## RELATED LINKS


