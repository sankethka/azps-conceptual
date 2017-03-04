---
external help file: Microsoft.Azure.Commands.Profile.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: EB9E969E-680B-4DDA-98E8-7732ED396F56
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Profile/v1.0.12/Enable-AzureRmDataCollection.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Profile/v1.0.12/Enable-AzureRmDataCollection.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Profile/v1.0.12/Enable-AzureRmDataCollection.md
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

# Enable-AzureRmDataCollection

## SYNOPSIS
Enables collection of data to improve user experience.

## SYNTAX

```
Enable-AzureRmDataCollection [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Enable-AzureRmDataCollection** cmdlet enables collection of data to improve the user experience with APS cmdlets.

You can improve the experience of using the APS by opting in to data collection.
Microsoft aggregates collected data to identify patterns of usage, to identify common issues, and to improve the experience of using APS.
Microsoft does not collect any private data, or any personally identifiable information.

APS does not collect data unless you explicitly opt in, either by using this cmdlet or when APS prompts you about collecting data the first time that you run a cmdlet.

If you run the current cmdlet before you run any APS cmdlets, APS does not prompt you about data collection the first time that you run a cmdlet.

To disable data collection for the current user, run the Disable-AzureRmDataCollection cmdlet.

## EXAMPLES

### Example 1: Enable data collection
```
PS C:\>Enable-AzureRmDataCollection
```

This command enables data collection for the current user on the current computer.

## PARAMETERS

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

[Disable-AzureRmDataCollection](xref:ResourceManager/AzureRM.Profile/v1.0.12/Disable-AzureRmDataCollection.md)


