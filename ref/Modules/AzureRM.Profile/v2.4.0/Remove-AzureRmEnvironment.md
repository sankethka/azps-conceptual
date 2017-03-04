---
external help file: Microsoft.Azure.Commands.Profile.dll-Help.xml
ms.assetid: 5ED6878E-89C6-4211-93EF-718B794767D5
online version: 
schema: 2.0.0
updated_at: 1/11/2017 9:26 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Profile/v2.4.0/Remove-AzureRmEnvironment.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Profile/v2.4.0/Remove-AzureRmEnvironment.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cf5fb15dcd1fe2c86458f47e1a11dc88817021fc/azureps-cmdlets-docs/ResourceManager/AzureRM.Profile/v2.4.0/Remove-AzureRmEnvironment.md
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

# Remove-AzureRmEnvironment

## SYNOPSIS
Removes endpoints and metadata for connecting to an Azure instance.

## SYNTAX

```
Remove-AzureRmEnvironment [-Name] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureRmEnvironment** cmdlet removes endpoints and metadata information for connecting to an Azure instance.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -Name
Specifies the name of the environment to remove.

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

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AzureRmEnvironment](xref:ResourceManager/AzureRM.Profile/v2.4.0/Add-AzureRmEnvironment.md)

[Get-AzureRmEnvironment](xref:ResourceManager/AzureRM.Profile/v2.4.0/Get-AzureRmEnvironment.md)

[Set-AzureRmEnvironment](xref:ResourceManager/AzureRM.Profile/v2.4.0/Set-AzureRmEnvironment.md)


