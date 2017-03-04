---
external help file: Microsoft.Azure.Commands.Sql.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: E578B785-8C15-4F6C-B177-0852211FBBEE
updated_at: 12/1/2016 1:28 AM
ms.date: 12/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/New-AzureRmSqlDatabaseDataMaskingRule.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/New-AzureRmSqlDatabaseDataMaskingRule.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/0fe78393ce81c49dbd2203c82a10d23db2610c2b/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/New-AzureRmSqlDatabaseDataMaskingRule.md
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

# New-AzureRmSqlDatabaseDataMaskingRule

## SYNOPSIS
Creates a data masking rule for a database.

## SYNTAX

```
New-AzureRmSqlDatabaseDataMaskingRule -MaskingFunction <String> [-PrefixSize <UInt32>]
 [-ReplacementString <String>] [-SuffixSize <UInt32>] [-NumberFrom <Double>] [-NumberTo <Double>] [-PassThru]
 -SchemaName <String> -TableName <String> -ColumnName <String> [-ServerName] <String> [-DatabaseName] <String>
 [-ResourceGroupName] <String> [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmSqlDatabaseDataMaskingRule** cmdlet creates a data masking rule for an Azure SQL database.
To use the cmdlet, use the *ResourceGroupName*, *ServerName*, *DatabaseName*, and *RuleId* parameters to identify the rule.
Provide the *TableName* and *ColumnName* to specify the target of the rule and the *MaskingFunction* parameter to define how the data is masked.

If *MaskingFunction* has a value of Number or Text, you can specify the *NumberFrom* and *NumberTo* parameters, for number masking, or the *PrefixSize*, *ReplacementString*, and *SuffixSize* for text masking.

If the command succeeds and the *PassThru* parameter is used, the cmdlet returns an object describing the data masking rule properties in addition to the rule identifiers.
Rule identifiers include, but are not limited to, *ResourceGroupName*, *ServerName*, *DatabaseName*, and *RuleID*.

This cmdlet is also supported by the SQL Server Stretch Database service on Azure.

## EXAMPLES

### Example 1: Create a data masking rule for a number column in a database
```
PS C:\>Set-AzureRmSqlDatabaseDataMaskingRule -ResourceGroupName "ResourceGroup01" -ServerName "Server01" -DatabaseName "Database01" -RuleId "Rule01" -SchemaName "Schema01" -TableName "Table01" -ColumnName "Column01" -MaskingFunction Number -NumberFrom 5 -NumberTo 14
```

This command creates a data masking rule for the column named Column01 in the table named Table01 in the schema named Schema01.
The database named Database01 contains all these items.
The rule is a number masking rule that uses a random number between 5 and 14 as the mask value.
The rule is named Rule01.

## PARAMETERS

### -MaskingFunction
Specifies the masking function that the rule uses.

The acceptable values for this parameter are:

- Default
- NoMasking
- Text
- Number
- SocialSecurityNumber
- CreditCardNumber
- Email

The default value is Default.

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

### -PrefixSize
Specifies the number of characters at the start of the text that are not masked.
Specify this parameter only if you specify a value of Text for the *MaskingFunction* parameter.
The default value is 0.

```yaml
Type: UInt32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ReplacementString
Specifies the number of characters in the end of the text that are not masked.
Specify this parameter only if you specify a value of Text for the *MaskingFunction* parameter.
The default value is an empty string.

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

### -SuffixSize
Specifies the number of characters at the end of the text that are not masked.
Specify this parameter only if you specify a value of Text for the *MaskingFunction* parameter.
The default value is 0.

```yaml
Type: UInt32
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -NumberFrom
Specifies the lower bound number of the interval from which a random value is selected.
Specify this parameter only if you specify a value of Number for the *MaskingFunction* parameter.
The default value is 0.

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -NumberTo
Specifies the upper bound number of the interval from which a random value is selected.
Specify this parameter only if you specify a value of Number for the *MaskingFunction* parameter.
The default value is 0.

```yaml
Type: Double
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -PassThru
Returns an object representing the item with which you are working. By default, this cmdlet does not generate any output.

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

### -SchemaName
Specifies the name of a schema.

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

### -TableName
Specifies the name of the database table that contains the masked column.

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

### -ColumnName
Specifies the name of the column targeted by the masking rule.

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
Specifies the name of the server that hosts the database.

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

###  
None.

## OUTPUTS

### Microsoft.Azure.Commands.Sql.Security.Model.DatabaseDataMaskingRuleModel

## NOTES

## RELATED LINKS

[Get-AzureRmSqlDatabaseDataMaskingRule](xref:ResourceManager/AzureRM.Sql/v1.0.12/Get-AzureRmSqlDatabaseDataMaskingRule.md)

[Remove-AzureRmSqlDatabaseDataMaskingRule](xref:ResourceManager/AzureRM.Sql/v1.0.12/Remove-AzureRmSqlDatabaseDataMaskingRule.md)

[Set-AzureRmSqlDatabaseDataMaskingRule](xref:ResourceManager/AzureRM.Sql/v1.0.12/Set-AzureRmSqlDatabaseDataMaskingRule.md)

[Azure SQL Database Cmdlets](xref:ResourceManager/AzureRM.Sql/v1.0.12/AzureRM.Sql.md)
