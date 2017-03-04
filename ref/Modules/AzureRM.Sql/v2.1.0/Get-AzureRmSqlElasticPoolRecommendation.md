---
external help file: Microsoft.Azure.Commands.Sql.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 25C3CB17-F1B1-498E-9BB1-0FDE10FF3073
updated_at: 11/22/2016 8:52 PM
ms.date: 11/22/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.1.0/Get-AzureRmSqlElasticPoolRecommendation.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.1.0/Get-AzureRmSqlElasticPoolRecommendation.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/0cedc8f73bc96cf5ac4c69144e17b3de601fd3cc/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.1.0/Get-AzureRmSqlElasticPoolRecommendation.md
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

# Get-AzureRmSqlElasticPoolRecommendation

## SYNOPSIS
Gets elastic pool recommendations.

## SYNTAX

```
Get-AzureRmSqlElasticPoolRecommendation [-ServerName] <String> [-ResourceGroupName] <String>
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmSqlElasticPoolRecommendation** cmdlet gets elastic pool recommendations for a server.
These recommendations include the following values:

- DatabaseCollection. Collection of database names that belong to the pool. 
- DatabaseDtuMin. Data Transmission Unit (DTU) guarantee for databases in the elastic pool. 
 -- DatabaseDtuMax. DTU cap for databases in the elastic pool. 
- Dtu. DTU guarantee for the elastic pool. 
- StorageMb. Storage in megabytes for the elastic pool. 
- Edition. Edition for the elastic pool. The acceptable values for this parameter are: Basic, Standard, and Premium. 
- IncludeAllDatabases. Indicates whether to all databases in the elastic pool are returned. 
- Name. Name of the elastic pool.

## EXAMPLES

### Example 1: Get recommendations for a server
```
PS C:\>Get-AzureRmSqlElasticPoolRecommendation -ResourceGroupName "ResourceGroup01" -ServerName "Server01"
```

This command gets the elastic pool recommendations for the server named Server01.

## PARAMETERS

### -ServerName
Specifies the name of the server for which this cmdlet gets recommendations.

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
Specifies name of the resource group to which the server is assigned.

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

### -InformationAction
Specifies how this cmdlet responds to an information event.

The acceptable values for this parameter are:

- Continue
- Ignore
- Inquire
- SilentlyContinue
- Stop
- Suspend

```yaml
Type: ActionPreference
Parameter Sets: (All)
Aliases: infa

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InformationVariable
Specifies an information variable.

```yaml
Type: String
Parameter Sets: (All)
Aliases: iv

Required: False
Position: Named
Default value: None
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

[Azure SQL Database Cmdlets](xref:ResourceManager/AzureRM.Sql/v2.1.0/AzureRM.Sql.md)


