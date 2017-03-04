---
external help file: Microsoft.Azure.Commands.Sql.dll-Help.xml
ms.assetid: 381F5B34-983C-4733-B384-35D6579B79A2
online version: 
schema: 2.0.0
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.3.0/Use-AzureRmSqlServerAuditingPolicy.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.3.0/Use-AzureRmSqlServerAuditingPolicy.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.3.0/Use-AzureRmSqlServerAuditingPolicy.md
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

# Use-AzureRmSqlServerAuditingPolicy

## SYNOPSIS
Specifies that a database uses the auditing policy of its host server.

## SYNTAX

```
Use-AzureRmSqlServerAuditingPolicy [-PassThru] [-ServerName] <String> [-DatabaseName] <String>
 [-ResourceGroupName] <String> [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Use-AzureRmSqlServerAuditingPolicy** cmdlet specifies that a database uses the auditing policy of its host server.
Specify the *ResourceGroupName*, *ServerName*, and *DatabaseName* parameters to identify the database.
If no auditing policy is defined for the database server, this cmdlet fails.

If the host uses server level auditing, threat detection is removed.

## EXAMPLES

### Example 1: Configure a database to use the auditing policy of its server
```
PS C:\>Use-AzureRmSqlServerAuditingPolicy -ResourceGroupName "ResourceGroup01" -ServerName "Server02" -DatabaseName "Database01"
```

This command specifies that the database named Database01 on Server02 uses the auditing policy of the server.

## PARAMETERS

### -PassThru
Returns an object representing the item with which you are working.
By default, this cmdlet does not generate any output.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerName
Specifies the name of the server that hosts the database that uses the auditing policy.

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
Specifies the name of the database that will use the auditing policy.

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
Specifies the name of the resource group to which the server is assigned.

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

### Microsoft.Azure.Commands.Sql.Security.Model.DatabaseAuditingPolicyModel

## NOTES

## RELATED LINKS

[Get-AzureRmSqlDatabaseAuditingPolicy](xref:ResourceManager/AzureRM.Sql/v2.3.0/Get-AzureRmSqlDatabaseAuditingPolicy.md)

[Get-AzureRmSqlServerAuditingPolicy](xref:ResourceManager/AzureRM.Sql/v2.3.0/Get-AzureRmSqlServerAuditingPolicy.md)

[Set-AzureRmSqlDatabaseAuditingPolicy](xref:ResourceManager/AzureRM.Sql/v2.3.0/Set-AzureRmSqlDatabaseAuditingPolicy.md)

[Set-AzureRmSqlServerAuditingPolicy](xref:ResourceManager/AzureRM.Sql/v2.3.0/Set-AzureRmSqlServerAuditingPolicy.md)

[Azure SQL Database Cmdlets](xref:ResourceManager/AzureRM.Sql/v2.3.0/AzureRM.Sql.md)


