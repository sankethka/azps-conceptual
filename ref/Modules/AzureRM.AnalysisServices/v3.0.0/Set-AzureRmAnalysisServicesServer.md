---
external help file: Microsoft.Azure.Commands.AnalysisServices.dll-Help.xml
online version: 
schema: 2.0.0
updated_at: 1/24/2017 7:09 PM
ms.date: 1/24/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AnalysisServices/v3.0.0/Set-AzureRmAnalysisServicesServer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AnalysisServices/v3.0.0/Set-AzureRmAnalysisServicesServer.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/d59f24a1f9cba84b6ab4adbaf9536a5c4661ea02/azureps-cmdlets-docs/ResourceManager/AzureRM.AnalysisServices/v3.0.0/Set-AzureRmAnalysisServicesServer.md
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

# Set-AzureRmAnalysisServicesServer

## SYNOPSIS
Modifies an Analysis Services server.

## SYNTAX

```
Set-AzureRmAnalysisServicesServer [-Name] <String> [[-ResourceGroupName] <String>] [[-Sku] <String>]
 [[-Tag] <Hashtable>] [[-Administrator] <String>] [-PassThru] [-WhatIf] [-Confirm]
```

## DESCRIPTION
The **Set-AzureRmAnalysisServicesServer** cmdlet modifies a Microsoft SQL Server Analysis Services server.

## EXAMPLES

### Example 1: Modify an Analysis Services server
```
PS C:\> Set-AzureRmAnalysisServicesServer -Name "ContosoServer03" -ResourceGroupName "ContosoResourceGroup" -Tag "key1:value1,key2:value2" -Administrator "PattiFuller@contoso.com"
```

This command modifies the server named ContosoServer03 in ContosoResourceGroup assign tags and set an administrator.

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

Required: False
Position: 2
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
Position: 3
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

### Microsoft.Azure.Management.Analysis.Models.AnalysisServicesServer

## NOTES
Alias: **Set-AzureAs**

## RELATED LINKS

[Get-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Get-AzureRmAnalysisServicesServer.md)

[New-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/New-AzureRmAnalysisServicesServer.md)

[Remove-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Remove-AzureRmAnalysisServicesServer.md)

[Resume-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Resume-AzureRmAnalysisServicesServer.md)

[Suspend-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Suspend-AzureRmAnalysisServicesServer.md)

[Test-AzureRmAnalysisServicesServer](xref:ResourceManager/AzureRM.AnalysisServices/v3.0.0/Test-AzureRmAnalysisServicesServer.md)
