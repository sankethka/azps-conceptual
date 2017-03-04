---
external help file: Microsoft.Azure.Commands.Sql.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: EB04DCDB-F729-4FE5-8CA8-8AF62845D61B
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v0.9.8/Get-AzureSqlDatabaseUpgradeHint.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v0.9.8/Get-AzureSqlDatabaseUpgradeHint.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v0.9.8/Get-AzureSqlDatabaseUpgradeHint.md
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

# Get-AzureSqlDatabaseUpgradeHint

## SYNOPSIS
Gets pricing tier hints for a database for upgrading SQL Database.

## SYNTAX

```
Get-AzureSqlDatabaseUpgradeHint [-ServerName] <String> [-DatabaseName <String>]
 [-ExcludeElasticPoolCandidates <Boolean>] [-ResourceGroupName] <String> [-Profile <AzureProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureSqlDatabaseUpgradeHint** cmdlet gets pricing tier hints for a database for upgrading Azure SQL Database.
Databases that are still in Web and Business pricing tiers get the hint to upgrade to the new Basic, Standard, or Premium pricing tiers.

## EXAMPLES

### Example 1: Get recommendations for all databases on a server
```
PS C:\>Get-AzureSqlDatabaseUpgradeHint -ResourceGroupName "ResourceGroup01" -ServerName "Server06"
```

This command returns upgrade hints for all databases on server.

### Example 2: Get recommendations for specific database
```
PS C:\>Get-AzureSqlDatabaseUpgradeHint -ResourceGroupName "ResourceGroup01" -ServerName "Server06" -DatabaseName "Database01"
```

This command returns upgrade hint for specific database.

### Example 3: Get recommendation for all databases that are not recommended for an elastic database pool
```
PS C:\>Get-AzureSqlDatabaseUpgradeHint -ResourceGroupName "ResourceGroup01" -ServerName "Server06" -ExcludeElasticPoolCandidates $True
```

This command returns upgrade hints for database that are not included in elastic database pool recommendations.

## PARAMETERS

### -DatabaseName
Specifies the name of the SQL database for which this cmdlet gets an upgrade hint.
If you do not specify a database, this cmdlet gets hints for all databases on the logical server.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ExcludeElasticPoolCandidates
Indicates whether to exclude databases that are included in elastic database pool recommendations.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

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

### -ResourceGroupName
Specifies the name of the resource group that contains the database for which this cmdlet gets an upgrade hint.

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

### -ServerName
Specifies the name of the server that hosts the database for which this cmdlet gets an upgrade hint.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureSqlDatabaseExpanded](xref:ResourceManager/AzureRM.Sql/v0.9.8/Get-AzureSqlDatabaseExpanded.md)

[Get-AzureSqlElasticPoolRecommendation](xref:ResourceManager/AzureRM.Sql/v0.9.8/Get-AzureSqlElasticPoolRecommendation.md)


