---
external help file: Microsoft.Azure.Commands.Sql.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 8CE8D034-CF66-413D-B901-CADA5BC072B7
updated_at: 10/18/2016 9:38 PM
ms.date: 10/18/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v0.9.8/Get-AzureSqlElasticPoolDatabase.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v0.9.8/Get-AzureSqlElasticPoolDatabase.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/23cdb8705d4ab9807c0e21b238f3b134a7d49c7d/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v0.9.8/Get-AzureSqlElasticPoolDatabase.md
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

# Get-AzureSqlElasticPoolDatabase

## SYNOPSIS
Gets elastic databases in an elastic pool and their property values.

## SYNTAX

```
Get-AzureSqlElasticPoolDatabase [-ElasticPoolName] <String> [-DatabaseName <String>] [-ServerName] <String>
 [-ResourceGroupName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzureSqlElasticPoolDatabase cmdlet gets elastic databases in an elastic pool and their property values.
Specify the name of an elastic database in Azure SQL Database to see the property values for only that database.

## EXAMPLES

### Example 1: Get all databases in an elastic pool
```
PS C:\>Get-AzureSqlElasticPoolDatabase -ResourceGroupName "ResourceGroup11" -ServerName "Server01" -ElasticPoolName "ElasticPool27"
```

This command gets all databases in an elastic pool named ElasticPool27.

## PARAMETERS

### -ElasticPoolName
Specifies the name of an elastic pool.
This cmdlet gets databases in the pool that this parameter specifies.

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

### -DatabaseName
Specifies the name of the Azure SQL Database that this cmdlet gets.

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

### -ServerName
Specifies the name of a server that contains an elastic pool.
This cmdlet gets a database in a pool on the server that this parameter specifies.

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
Specifies the name of a resource group that contains an elastic pool.
This cmdlet gets a database in a pool in the resource group that this parameter specifies.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### InputType
System.String

## OUTPUTS

### OutputType
System.Object

## NOTES
* This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters.

## RELATED LINKS

[Azure SQL Database]()

[Get-AzureSqlElasticPool]()

[Get-AzureSqlElasticPoolActivity]()

[New-AzureSqlElasticPool]()

[Remove-AzureSqlElasticPool]()

[Set-AzureSqlElasticPool]()


