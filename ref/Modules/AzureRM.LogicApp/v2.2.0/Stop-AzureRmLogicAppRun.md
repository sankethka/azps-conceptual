---
external help file: Microsoft.Azure.Commands.LogicApp.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: E36AB1E8-2A2F-4425-8EAF-7EA7A7FDAB56
updated_at: 11/22/2016 8:52 PM
ms.date: 11/22/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.LogicApp/v2.2.0/Stop-AzureRmLogicAppRun.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.LogicApp/v2.2.0/Stop-AzureRmLogicAppRun.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/0cedc8f73bc96cf5ac4c69144e17b3de601fd3cc/azureps-cmdlets-docs/ResourceManager/AzureRM.LogicApp/v2.2.0/Stop-AzureRmLogicAppRun.md
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

# Stop-AzureRmLogicAppRun

## SYNOPSIS
Cancels a run of a logic app.

## SYNTAX

```
Stop-AzureRmLogicAppRun -ResourceGroupName <String> -Name <String> -RunName <String> [-Force] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Stop-AzureRmLogicAppRun** cmdlet cancels a run of a logic app.
Specify the logic app, resource group, and run.

This module supports dynamic parameters.
To use a dynamic parameter, type it in the command.
To discover the names of dynamic parameters, type a hyphen (-) after the cmdlet name, and then press the Tab key repeatedly to cycle through the available parameters.
If you omit a required template parameter, the cmdlet prompts you for the value.

## EXAMPLES

### Example 1: Cancel a run of a logic app
```
PS C:\>Get-AzureRmLogicApp -ResourceGroupName "ResourceGroup11" -Name "LogicApp03" -RunName "08587489104702792076"
```

This command cancels a run of the logic app named LogicApp03.

## PARAMETERS

### -ResourceGroupName
Specifies the name for a resource group in which this cmdlet cancels a run.

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

### -Name
Specifies the name of a logic app for which this cmdlet cancels a run.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ResourceName

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -RunName
Specifies the name of a logic app run that this cmdlet cancels.

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

### -Force
Forces the command to run without asking for user confirmation.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Start-AzureRmLogicApp](xref:ResourceManager/AzureRM.LogicApp/v2.2.0/Start-AzureRmLogicApp.md)


