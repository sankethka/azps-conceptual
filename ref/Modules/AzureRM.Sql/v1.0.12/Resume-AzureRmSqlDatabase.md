---
external help file: Microsoft.Azure.Commands.Sql.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: B4F4B972-079B-48F6-B521-6F29A5E3D692
updated_at: 12/1/2016 5:56 PM
ms.date: 12/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/Resume-AzureRmSqlDatabase.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/Resume-AzureRmSqlDatabase.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/9f3e28b44df59189552012578d9f989dd5598d4f/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/Resume-AzureRmSqlDatabase.md
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

# Resume-AzureRmSqlDatabase

## SYNOPSIS
Resumes a SQL Data Warehouse database.

## SYNTAX

```
Resume-AzureRmSqlDatabase [-ServerName] <String> -DatabaseName <String> [-ResourceGroupName] <String>
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Resume-AzureRmSqlDatabase** cmdlet resumes an Azure SQL Data Warehouse database.

## EXAMPLES

### Example 1: Resumes an Azure SQL Data Warehouse database
```
PS C:\>Resume-AzureRmSqlDatabase -ResourceGroupName "ResourceGroup01" -ServerName "Server01" -DatabaseName "Database01"
```

This command resumes a suspended Azure SQL Data Warehouse database.

## PARAMETERS

### -ServerName
Specifies the name of the server that hosts the database that this cmdlet resumes.

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
Specifies the name of the database that this cmdlet resumes.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Azure.Commands.Sql.Database.Model.AzureSqlDatabaseModel

## OUTPUTS

### Microsoft.Azure.Commands.Sql.Database.Model.AzureSqlDatabaseModel

## NOTES
* The **Resume-AzureRmSqlDatabase** cmdlet works only on Azure SQL Data Warehouse databases. This operation is not supported on Azure SQL Database Basic, Standard and Premium editions.

## RELATED LINKS

[Get-AzureRmSqlDatabase](xref:ResourceManager/AzureRM.Sql/v1.0.12/Get-AzureRmSqlDatabase.md)

[New-AzureRmSqlDatabase](xref:ResourceManager/AzureRM.Sql/v1.0.12/New-AzureRmSqlDatabase.md)

[Remove-AzureRmSqlDatabase](xref:ResourceManager/AzureRM.Sql/v1.0.12/Remove-AzureRmSqlDatabase.md)

[Set-AzureRmSqlDatabase](xref:ResourceManager/AzureRM.Sql/v1.0.12/Set-AzureRmSqlDatabase.md)

[Suspend-AzureRmSqlDatabase](xref:ResourceManager/AzureRM.Sql/v1.0.12/Suspend-AzureRmSqlDatabase.md)

[Azure SQL Database Cmdlets](xref:ResourceManager/AzureRM.Sql/v1.0.12/AzureRM.Sql.md)
