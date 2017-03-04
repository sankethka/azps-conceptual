---
external help file: Microsoft.Azure.Commands.Sql.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: D194CEAB-47E7-46F0-8AF3-68F8E514E6C6
updated_at: 12/1/2016 5:56 PM
ms.date: 12/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/Set-AzureRmSqlDatabaseSecondary.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/Set-AzureRmSqlDatabaseSecondary.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/9f3e28b44df59189552012578d9f989dd5598d4f/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/Set-AzureRmSqlDatabaseSecondary.md
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

# Set-AzureRmSqlDatabaseSecondary

## SYNOPSIS
Switches a secondary database to be primary in order to initiate failover.

## SYNTAX

### NoOptionsSet (Default)
```
Set-AzureRmSqlDatabaseSecondary [-DatabaseName] <String> -PartnerResourceGroupName <String>
 [-ServerName] <String> [-ResourceGroupName] <String> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

### ByFailoverParams
```
Set-AzureRmSqlDatabaseSecondary [-DatabaseName] <String> -PartnerResourceGroupName <String> [-Failover]
 [-AllowDataLoss] [-ServerName] <String> [-ResourceGroupName] <String> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmSqlDatabaseSecondary** cmdlet switches a secondary database to be primary in order to initiate failover.
This cmdlet is designed as a general configuration command, but is currently limited to initiating failover.
Specify the *AllowDataLoss* parameter to initiate a force failover during an outage.
You do not have to specify this parameter when you perform a planned operation, such as recovery drill.
In the latter case, the secondary database is synchronized with the primary before it is switched.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -DatabaseName
Specifies the name of the Azure SQL Database Secondary.

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

### -PartnerResourceGroupName
Specifies the name of the resource group to which the partner Azure SQL Database is assigned.

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

### -ServerName
Specifies the name of the SQL Server that hosts the Azure SQL Database Secondary.

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
Specifies the name of the resource group to which the Azure SQL Database Secondary is assigned.

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

### -Failover
Indicates that this operation is a failover.

```yaml
Type: SwitchParameter
Parameter Sets: ByFailoverParams
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AllowDataLoss
Indicates that this failover operation permits data loss.

```yaml
Type: SwitchParameter
Parameter Sets: ByFailoverParams
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

###  
You can pipe instances of the **Database** object for the secondary database to fail over and make the primary database to this cmdlet.

## OUTPUTS

###  
This cmdlet returns a **ReplicationLink**.

## NOTES

## RELATED LINKS

[Azure SQL Database Cmdlets](xref:ResourceManager/AzureRM.Sql/v1.0.12/AzureRM.Sql.md)

[New-AzureRmSqlDatabaseSecondary](xref:ResourceManager/AzureRM.Sql/v1.0.12/New-AzureRmSqlDatabaseSecondary.md)

[Remove-AzureRmSqlDatabaseSecondary](xref:ResourceManager/AzureRM.Sql/v1.0.12/Remove-AzureRmSqlDatabaseSecondary.md)
