---
external help file: Microsoft.Azure.Commands.Sql.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 929C4942-3C62-4071-A773-F6390A452305
updated_at: 11/22/2016 12:25 AM
ms.date: 11/22/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/Get-AzureRmSqlElasticPoolActivity.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/Get-AzureRmSqlElasticPoolActivity.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/e5245f9c2ed759dca260172c12d4ef03cef0982a/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/Get-AzureRmSqlElasticPoolActivity.md
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

# Get-AzureRmSqlElasticPoolActivity

## SYNOPSIS
Gets the status of operations on an elastic pool.

## SYNTAX

```
Get-AzureRmSqlElasticPoolActivity [-ServerName] <String> [-ElasticPoolName] <String>
 [-ResourceGroupName] <String> [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmSqlElasticPoolActivity** cmdlet gets the status of operations on an elastic pool for an Azure SQL Database.
You can see the status of both pool creation and configuration updates.

## EXAMPLES

### Example 1: Get the status of operations for an elastic pool
```
PS C:\>Get-AzureRmSqlElasticPoolActivity -ResourceGroupName "ResourceGroup01" -ServerName "Server01" -ElasticPoolName "ElasticPool01"
```

This command gets the status of the operations for the elastic pool named ElasticPool01.

## PARAMETERS

### -ServerName
Specifies the name of a server that contains an elastic pool.

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

### -ElasticPoolName
Specifies the name of an elastic pool.

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
Specifies the name of a resource group to which the elastic pool is assigned.

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

## OUTPUTS

### Microsoft.Azure.Commands.Sql.ElasticPool.Model.AzureSqlElasticPoolActivityModel

## NOTES

## RELATED LINKS

[Get-AzureRmSqlElasticPool](xref:ResourceManager/AzureRM.Sql/v1.0.12/Get-AzureRmSqlElasticPool.md)

[Get-AzureRmSqlElasticPoolDatabase](xref:ResourceManager/AzureRM.Sql/v1.0.12/Get-AzureRmSqlElasticPoolDatabase.md)

[New-AzureRmSqlElasticPool](xref:ResourceManager/AzureRM.Sql/v1.0.12/New-AzureRmSqlElasticPool.md)

[Remove-AzureRmSqlElasticPool](xref:ResourceManager/AzureRM.Sql/v1.0.12/Remove-AzureRmSqlElasticPool.md)

[Set-AzureRmSqlElasticPool](xref:ResourceManager/AzureRM.Sql/v1.0.12/Set-AzureRmSqlElasticPool.md)

[Azure SQL Database Cmdlets](xref:ResourceManager/AzureRM.Sql/v1.0.12/AzureRM.Sql.md)


