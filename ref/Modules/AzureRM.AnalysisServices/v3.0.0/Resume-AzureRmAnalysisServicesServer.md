---
external help file: Microsoft.Azure.Commands.AnalysisServices.dll-Help.xml
online version: 
schema: 2.0.0
updated_at: 1/24/2017 10:29 PM
ms.date: 1/24/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AnalysisServices/v3.0.0/Resume-AzureRmAnalysisServicesServer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AnalysisServices/v3.0.0/Resume-AzureRmAnalysisServicesServer.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/57b39ce21cec7c2b25920e4856b649798e4bf898/azureps-cmdlets-docs/ResourceManager/AzureRM.AnalysisServices/v3.0.0/Resume-AzureRmAnalysisServicesServer.md
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

# Resume-AzureRmAnalysisServicesServer

## SYNOPSIS
Resumes an Analysis Services server.

## SYNTAX

```
Resume-AzureRmAnalysisServicesServer [[-ResourceGroupName] <String>] [-Name] <String> [-PassThru] [-WhatIf]
 [-Confirm]
```

## DESCRIPTION
The **Resume-AzureRmAnalysisServicesServer** cmdlet resumes a Microsoft SQL Server Analysis Services server.

## EXAMPLES

### Example 1: Resume an Analysis Services server
```
PS C:\> Resume-AzureRmAnalysisServicesServer -Name "ContosoServer03" -ResourceGroupName "ContosoResourceGroup"
```

This command resumes a paused Analysis Services server named ContosoServer03 in ContosoResourceGroup.

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
Alias: **Resume-AzureAs**

## RELATED LINKS

[Get-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Get-AzureRmAnalysisServicesServer.md)

[New-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/New-AzureRmAnalysisServicesServer.md)

[Remove-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Remove-AzureRmAnalysisServicesServer.md)

[Set-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Set-AzureRmAnalysisServicesServer.md)

[Suspend-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Suspend-AzureRmAnalysisServicesServer.md)

[Test-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Test-AzureRmAnalysisServicesServer.md)
