---
external help file: Microsoft.Azure.Commands.Sql.dll-Help.xml
ms.assetid: BDBA3AA3-DCC6-4C83-84C8-EE6D93BFE1D3
online version: 
schema: 2.0.0
updated_at: 1/20/2017 9:17 PM
ms.date: 1/20/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.5.0/Set-AzureRmSqlDatabaseRecommendedActionState.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.5.0/Set-AzureRmSqlDatabaseRecommendedActionState.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/cb06bb906911a2a2e1f57adbafe0c0c97a0b205b/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.5.0/Set-AzureRmSqlDatabaseRecommendedActionState.md
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

# Set-AzureRmSqlDatabaseRecommendedActionState

## SYNOPSIS
Updates the state of an Azure SQL Database recommended action.

## SYNTAX

```
Set-AzureRmSqlDatabaseRecommendedActionState -RecommendedActionName <String> -State <RecommendedActionState>
 -ServerName <String> -DatabaseName <String> -AdvisorName <String> [-ResourceGroupName] <String> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureRmSqlDatabaseRecommendedActionState** cmdlet updates the state of an Azure SQL Database Recommended Action.
This allows a recommended action to be applied, reverted or discarded based on the new state.

## EXAMPLES

### Example 1: Apply a recommended action state to pending
```
PS C:\>Set-AzureRmSqlDatabaseRecommendedActionState -ResourceGroupName "WIRunnersProd" -ServerName "wi-runner-australia-east" -DatabaseName "WIRunner" -AdvisorName "CreateIndex" -RecommendedActionName "IR_[test_schema]_[test_table_0.0361551]_6C7AE8CC9C87E7FD5893" -State Pending
DatabaseName               : WIRunner

ResourceGroupName          : WIRunnersProd
ServerName                 : wi-runner-australia-east
AdvisorName                : CreateIndex
RecommendedActionName      : IR_[test_schema]_[test_table_0.0361551]_6C7AE8CC9C87E7FD5893
Details                    : {[indexName, nci_wi_test_table_0.0361551_6C7AE8CC9C87E7FD5893], [indexType, 
                             NONCLUSTERED], [schema, [test_schema]], [table, [test_table_0.0361551]]...} 
ErrorDetails               : Microsoft.Azure.Management.Sql.Models.RecommendedActionErrorInfo
EstimatedImpact            : {ActionDuration, SpaceChange}
ExecuteActionDuration      : PT1M
ExecuteActionInitiatedBy   : User
ExecuteActionInitiatedTime : 4/21/2016 3:24:47 PM
ExecuteActionStartTime     : 4/21/2016 3:24:47 PM
ImplementationDetails      : Microsoft.Azure.Management.Sql.Models.RecommendedActionImplementationInfo
IsArchivedAction           : False
IsExecutableAction         : True
IsRevertableAction         : True
LastRefresh                : 4/21/2016 3:24:47 PM
LinkedObjects              : {}
ObservedImpact             : {CpuUtilization, LogicalReads, LogicalWrites, QueriesWithImprovedPerformance...} 
RecommendationReason       : 
RevertActionDuration       : 
RevertActionInitiatedBy    : 
RevertActionInitiatedTime  : 
RevertActionStartTime      : 
Score                      : 2
State                      : Microsoft.Azure.Management.Sql.Models.RecommendedActionStateInfo
TimeSeries                 : {}
ValidSince                 : 4/21/2016 3:24:47 PM
```

This command updates the state of the recommended action named IR_\[test_schema\]_\[test_table_0.0361551\]_6C7AE8CC9C87E7FD5893 that belongs to the database named WIRunner to Pending.

## PARAMETERS

### -AdvisorName
Specifies the name of the advisor for which this recommended action belongs to.

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

### -DatabaseName
Specifies the name of the database for which this cmdlet sets the recommended action state.

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

### -RecommendedActionName
Specifies the name of the recommended action for which state is being updated.

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
Specifies the name of the resource group of the server that contains this database.

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
Specifies the name of the server the database is in.

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

### -State
Specifies the new value to which this cmdlet updates the recommended action state.

The acceptable values for this parameter are:

- Active
- Pending
- PendingRevert
- RevertCancelled
- Ignored
- Resolved

```yaml
Type: RecommendedActionState
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
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

### Microsoft.Azure.Commands.Sql.RecommendedAction.Model.AzureSqlDatabaseRecommendedActionModel

## NOTES
* Keywords: azure, azurerm, arm, resource, management, manager, sql, database, mssql, advisor, recommendedaction

## RELATED LINKS

[Get-AzureRmSqlServerAdvisor](xref:ResourceManager/AzureRM.Sql/v2.5.0/Get-AzureRmSqlServerAdvisor.md)

[Get-AzureRmSqlElasticPoolAdvisor](xref:ResourceManager/AzureRM.Sql/v2.5.0/Get-AzureRmSqlElasticPoolAdvisor.md)

[Get-AzureRmSqlServerRecommendedAction](xref:ResourceManager/AzureRM.Sql/v2.5.0/Get-AzureRmSqlServerRecommendedAction.md)

[Get-AzureRmSqlElasticPoolRecommendedAction](xref:ResourceManager/AzureRM.Sql/v2.5.0/Get-AzureRmSqlElasticPoolRecommendedAction.md)

[Set-AzureRmSqlElasticPoolRecommendedActionState](xref:ResourceManager/AzureRM.Sql/v2.5.0/Set-AzureRmSqlElasticPoolRecommendedActionState.md)

[Set-AzureRmSqlElasticPoolAdvisorAutoExecuteStatus](xref:ResourceManager/AzureRM.Sql/v2.5.0/Set-AzureRmSqlElasticPoolAdvisorAutoExecuteStatus.md)

[Set-AzureRmSqlElasticPoolRecommendedActionState](xref:ResourceManager/AzureRM.Sql/v2.5.0/Set-AzureRmSqlElasticPoolRecommendedActionState.md)

[Set-AzureRmSqlServerRecommendedActionState](xref:ResourceManager/AzureRM.Sql/v2.5.0/Set-AzureRmSqlServerRecommendedActionState.md)

[Set-AzureRmSqlElasticPoolAdvisorAutoExecuteStatus](xref:ResourceManager/AzureRM.Sql/v2.5.0/Set-AzureRmSqlElasticPoolAdvisorAutoExecuteStatus.md)

[Set-AzureRmSqlServerAdvisorAutoExecuteStatus](xref:ResourceManager/AzureRM.Sql/v2.5.0/Set-AzureRmSqlServerAdvisorAutoExecuteStatus.md)


