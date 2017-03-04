---
external help file: Microsoft.Azure.Commands.AnalysisServices.dll-Help.xml
online version: 
schema: 2.0.0
updated_at: 2/3/2017 7:21 PM
ms.date: 2/3/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AnalysisServices/v3.0.0/New-AzureRmAnalysisServicesServer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AnalysisServices/v3.0.0/New-AzureRmAnalysisServicesServer.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/22250ca6e752543bc5f30f9f71644979e8e5cace/azureps-cmdlets-docs/ResourceManager/AzureRM.AnalysisServices/v3.0.0/New-AzureRmAnalysisServicesServer.md
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

# New-AzureRmAnalysisServicesServer

## SYNOPSIS
Creates an Analysis Services server.

## SYNTAX

```
New-AzureRmAnalysisServicesServer [-ResourceGroupName] <String> [-Name] <String> [-Location] <String>
 [-Sku] <String> [[-Tag] <Hashtable>] [[-Administrator] <String>] [-WhatIf] [-Confirm]
```

## DESCRIPTION
The **New-AzureRmAnalysisServicesServer** cmdlet creates an Azure Server Analysis Services server.

## EXAMPLES

### Example 1: Create an Analysis Services server 
```
PS C:\> New-AzureRmAnalysisServicesServer -ResourceGroupName "ContosoResourceGroup" -Name "ContosoServer03" -Location "West-US" -Sku "S1"
```

This command creates an Analysis Services server named ContosoServer03 in the resource group named ContosoResourceGroup in the West-US Azure region.
The SKU level for the server is S1.

## PARAMETERS

### -Administrator
Specifies a comma separated list of users or groups that are administrators on the Analysis Services server.
Specify users and groups in UPN format, such as `PattiFuller@contoso.com` or `BasicAdmins@contoso.com`.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Location
Specifies the Azure region which hosts the Analysis Services server.

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

### -Name
Specifies a name for the Analysis Services server.

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

### -ResourceGroupName
Specifies the name of the Azure resource group to which the Analysis Services server belongs.

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

### -Sku
Specifies the name of the SKU for the Analysis Services server.
Valid values for the standard tier are:
- S1
- S2
- S4

Valid values for the development tier are:
- D1

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Tag
Specifies tags for the Analysis Services server as a hash table of key/value pairs.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
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
Alias: **New-AzureAs**

## RELATED LINKS

[Get-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Get-AzureRmAnalysisServicesServer.md)

[Remove-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Remove-AzureRmAnalysisServicesServer.md)

[Resume-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Resume-AzureRmAnalysisServicesServer.md)

[Set-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Set-AzureRmAnalysisServicesServer.md)

[Suspend-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Suspend-AzureRmAnalysisServicesServer.md)

[Test-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Test-AzureRmAnalysisServicesServer.md)
