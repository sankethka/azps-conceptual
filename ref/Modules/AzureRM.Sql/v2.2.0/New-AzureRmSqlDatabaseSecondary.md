---
external help file: Microsoft.Azure.Commands.Sql.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: DC670D6E-118B-42CC-82E9-F5E90ED9E17D
updated_at: 11/22/2016 8:52 PM
ms.date: 11/22/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.2.0/New-AzureRmSqlDatabaseSecondary.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.2.0/New-AzureRmSqlDatabaseSecondary.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/0cedc8f73bc96cf5ac4c69144e17b3de601fd3cc/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.2.0/New-AzureRmSqlDatabaseSecondary.md
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

# New-AzureRmSqlDatabaseSecondary

## SYNOPSIS
Creates a secondary database for an existing database and starts data replication.

## SYNTAX

```
New-AzureRmSqlDatabaseSecondary [-DatabaseName] <String> [-SecondaryServiceObjectiveName <String>]
 [-SecondaryElasticPoolName <String>] [-Tags <Hashtable>] -PartnerResourceGroupName <String>
 -PartnerServerName <String> [-AllowConnections <AllowConnections>] [-ServerName] <String>
 [-ResourceGroupName] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRMSqlDatabaseSecondary** cmdlet replaces the Start-AzureSqlDatabaseCopy cmdlet when used for setting up geo-replication for a database.
It returns the geo-replication link object from the primary to the secondary database.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -DatabaseName
Specifies the name of the database to act as primary.

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

### -SecondaryServiceObjectiveName
Specifies the name of the service objective to assign to the secondary database.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SecondaryElasticPoolName
Specifies the name of the elastic pool in which to put the secondary database.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tags
Specifies the tags to associate with the SQL Database replication link.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases: Tag

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PartnerResourceGroupName
Specifies the name of the Azure Resource Group to which this cmdlet assigns the secondary database.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PartnerServerName
Specifies the name of the Azure SQL database server to act as secondary.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowConnections
Specifies the read intent of the secondary Azure SQL Database.
The acceptable values for this parameter are:

- No
- All

```yaml
Type: AllowConnections
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerName
Specifies the name of the SQL Server of the primary  SQL Database.

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
Specifies the name of the Azure Resource Group to which this cmdlet assigns the primary database.

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

###  
You can pipe instances of the **Database** object for the primary database to this cmdlet.

## OUTPUTS

###  
This cmdlet returns **ReplicationLink** objects.

## NOTES

## RELATED LINKS

[Azure SQL Database Cmdlets](xref:ResourceManager/AzureRM.Sql/v2.2.0/AzureRM.Sql.md)

[Remove-AzureRmSqlDatabaseSecondary](xref:ResourceManager/AzureRM.Sql/v2.2.0/Remove-AzureRmSqlDatabaseSecondary.md)

[Set-AzureRmSqlDatabaseSecondary](xref:ResourceManager/AzureRM.Sql/v2.2.0/Set-AzureRmSqlDatabaseSecondary.md)


