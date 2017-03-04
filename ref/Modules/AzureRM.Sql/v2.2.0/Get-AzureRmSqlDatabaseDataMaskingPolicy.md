---
external help file: Microsoft.Azure.Commands.Sql.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 09C4D881-611D-42FB-85AF-40C64DBC5D4A
updated_at: 11/22/2016 8:52 PM
ms.date: 11/22/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.2.0/Get-AzureRmSqlDatabaseDataMaskingPolicy.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.2.0/Get-AzureRmSqlDatabaseDataMaskingPolicy.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/0cedc8f73bc96cf5ac4c69144e17b3de601fd3cc/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.2.0/Get-AzureRmSqlDatabaseDataMaskingPolicy.md
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

# Get-AzureRmSqlDatabaseDataMaskingPolicy

## SYNOPSIS
Gets the data masking policy for a database.

## SYNTAX

```
Get-AzureRmSqlDatabaseDataMaskingPolicy [-ServerName] <String> [-DatabaseName] <String>
 [-ResourceGroupName] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmSqlDatabaseDataMaskingPolicy** cmdlet gets the data masking policy of an Azure SQL database.
To use this cmdlet, use the *ResourceGroupName*, *ServerName*, and *DatabaseName* parameters to identify the database.

This cmdlet is also supported by the SQL Server Stretch Database service on Azure.

## EXAMPLES

### Example 1: Get the data masking policy for an Azure SQL database
```
PS C:\>Get-AzureRmSqlDatabaseDataMaskingPolicy -ResourceGroupName "ResourceGroup01" -ServerName "Server01" -DatabaseName "Database01"
DatabaseName      : Database01
ResourceGroupName : ResourceGroup01
ServerName        : Server01
DataMaskingState  : Enabled
PrivilegedUsers  :
```

This command gets the data masking policy from database Database01 in resource group ResourceGroup01 on server Server01.

## PARAMETERS

### -ServerName
Specifies the name of the server where the database is located.

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

### -DatabaseName
Specifies the name of the database.

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

### -ResourceGroupName
Specifies the name of the resource group to which the database is assigned.

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

## OUTPUTS

### Microsoft.Azure.Commands.Sql.Security.Model.DatabaseDataMaskingPolicyModel

## NOTES

## RELATED LINKS

[Get-AzureRmSqlDatabaseDataMaskingRule](xref:ResourceManager/AzureRM.Sql/v2.2.0/Get-AzureRmSqlDatabaseDataMaskingRule.md)

[New-AzureRmSqlDatabaseDataMaskingRule](xref:ResourceManager/AzureRM.Sql/v2.2.0/New-AzureRmSqlDatabaseDataMaskingRule.md)

[Remove-AzureRmSqlDatabaseDataMaskingRule](xref:ResourceManager/AzureRM.Sql/v2.2.0/Remove-AzureRmSqlDatabaseDataMaskingRule.md)

[Set-AzureRmSqlDatabaseDataMaskingPolicy](xref:ResourceManager/AzureRM.Sql/v2.2.0/Set-AzureRmSqlDatabaseDataMaskingPolicy.md)

[Set-AzureRmSqlDatabaseDataMaskingRule](xref:ResourceManager/AzureRM.Sql/v2.2.0/Set-AzureRmSqlDatabaseDataMaskingRule.md)

[Azure SQL Database Cmdlets](xref:ResourceManager/AzureRM.Sql/v2.2.0/AzureRM.Sql.md)


