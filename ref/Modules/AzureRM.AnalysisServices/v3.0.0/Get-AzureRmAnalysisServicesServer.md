---
external help file: Microsoft.Azure.Commands.AnalysisServices.dll-help.xml
online version: 
schema: 2.0.0
updated_at: 1/24/2017 10:29 PM
ms.date: 1/24/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AnalysisServices/v3.0.0/Get-AzureRmAnalysisServicesServer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AnalysisServices/v3.0.0/Get-AzureRmAnalysisServicesServer.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/57b39ce21cec7c2b25920e4856b649798e4bf898/azureps-cmdlets-docs/ResourceManager/AzureRM.AnalysisServices/v3.0.0/Get-AzureRmAnalysisServicesServer.md
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

# Get-AzureRmAnalysisServicesServer

## SYNOPSIS
Gets details of an Analysis Services server.

## SYNTAX

```
Get-AzureRmAnalysisServicesServer [[-ResourceGroupName] <String>] [[-Name] <String>]
```

## DESCRIPTION
The **Get-AzureRmAnalysisServicesServer** cmdlet gets details for a Microsoft SQL Server Analysis Services server.

## EXAMPLES

### Example 1: Get Analysis Services servers in a resource group 
```
PS C:\> Get-AzureRmAnalysisServicesServer -ResourceGroupName "ContosoResourceGroup"
```

This command gets all Analysis Services servers in the resource group named ContosoResourceGroup.

### Example 2: Get a server
```
PS C:\> Get-AzureRmAnalysisServicesServer -ResourceGroupName "ContosoResourceGroup" -Name "ContosoServer03"
```

This command gets an Analysis Services server named ContosoServer03 in the resource group named ContosoResourceGroup.

## PARAMETERS

### -Name
Specifies the name of an Analysis Services server.

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

### -ResourceGroupName
Specifies the name of the Azure resource group to which the Analysis Services server belongs.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

## INPUTS

## OUTPUTS

## NOTES
Alias: **Get-AzureAs**

## RELATED LINKS

[New-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/New-AzureRmAnalysisServicesServer.md)

[Remove-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Remove-AzureRmAnalysisServicesServer.md)

[Resume-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Resume-AzureRmAnalysisServicesServer.md)

[Set-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Set-AzureRmAnalysisServicesServer.md)

[Suspend-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Suspend-AzureRmAnalysisServicesServer.md)

[Test-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Test-AzureRmAnalysisServicesServer.md)
