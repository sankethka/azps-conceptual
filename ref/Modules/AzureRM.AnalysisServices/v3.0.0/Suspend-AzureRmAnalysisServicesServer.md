---
external help file: Microsoft.Azure.Commands.AnalysisServices.dll-Help.xml
online version: 
schema: 2.0.0
updated_at: 1/24/2017 7:09 PM
ms.date: 1/24/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AnalysisServices/v3.0.0/Suspend-AzureRmAnalysisServicesServer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AnalysisServices/v3.0.0/Suspend-AzureRmAnalysisServicesServer.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/d59f24a1f9cba84b6ab4adbaf9536a5c4661ea02/azureps-cmdlets-docs/ResourceManager/AzureRM.AnalysisServices/v3.0.0/Suspend-AzureRmAnalysisServicesServer.md
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

# Suspend-AzureRmAnalysisServicesServer

## SYNOPSIS
Suspends an Analysis Services server.

## SYNTAX

```
Suspend-AzureRmAnalysisServicesServer [[-ResourceGroupName] <String>] [-Name] <String> [-PassThru] [-WhatIf]
 [-Confirm]
```

## DESCRIPTION
The **Suspend-AzureRmAnalysisServicesServer** cmdlet suspends a Microsoft SQL Server Analysis Services server.

## EXAMPLES

### Example 1: Suspend an Analysis Services server
```
PS C:\> Suspend-AzureRmAnalysisServicesServer -Name "ContosoServer03" -ResourceGroupName "ContosoResourceGroup"
```

This command suspends an active Analysis Services server named ContosoServer03 in ContosoResourceGroup.

## PARAMETERS

### -Name
Specifies the name of an Analysis Services server.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PassThru
Indicates that this cmdlet returns the Analysis Services server details, if the operation succeeds.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of the Azure resource group to which the Analysis Services server belongs.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
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

## INPUTS

## OUTPUTS

### Microsoft.Azure.Commands.AnalysisServices.Models.AzureAnalysisServicesServer

## NOTES
Alias: **Suspend-AzureAs**

## RELATED LINKS

[Get-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Get-AzureRmAnalysisServicesServer.md)

[New-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/New-AzureRmAnalysisServicesServer.md)

[Remove-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Remove-AzureRmAnalysisServicesServer.md)

[Resume-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Resume-AzureRmAnalysisServicesServer.md)

[Set-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Set-AzureRmAnalysisServicesServer.md)

[Test-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Test-AzureRmAnalysisServicesServer.md)

