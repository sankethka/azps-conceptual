---
external help file: Microsoft.Azure.Commands.Sql.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: D83879BE-919A-4C1B-854B-E366CCAB5D8C
updated_at: 12/1/2016 5:56 PM
ms.date: 12/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/Start-AzureRmSqlServerUpgrade.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/Start-AzureRmSqlServerUpgrade.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/9f3e28b44df59189552012578d9f989dd5598d4f/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/Start-AzureRmSqlServerUpgrade.md
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

# Start-AzureRmSqlServerUpgrade

## SYNOPSIS
Starts the upgrade of a SQL Database server.

## SYNTAX

```
Start-AzureRmSqlServerUpgrade -ServerVersion <String> [-ScheduleUpgradeAfterUtcDateTime <DateTime>]
 [-DatabaseCollection <RecommendedDatabaseProperties[]>]
 [-ElasticPoolCollection <UpgradeRecommendedElasticPoolProperties[]>] -ServerName <String>
 [-ResourceGroupName] <String> [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Start-AzureRmSqlServerUpgrade** cmdlet starts the upgrade of an ssSDS server version 11 to version 12.
You can monitor the progress of an upgrade by using the [Get-AzureRmSqlServerUpgrade](./Get-AzureRmSqlServerUpgrade.md) cmdlet.


## EXAMPLES

### Example 1: Upgrade a server
```
PS C:\>Start-AzureRmSqlServerUpgrade -ResourceGroupName "ResourceGroup01" -ServerName "Server01" -ServerVersion 12.0
ResourceGroupName               : ResourceGroup01
ServerName                      : Server01
ServerVersion                   : 12.0
ScheduleUpgradeAfterUtcDateTime :
DatabaseCollection              :
```

This command upgrades the server named server01 assigned to resource group TesourceGroup01.

### Example 2: Upgrade a server by using schedule time and database recommendation
```
PS C:\>$ScheduleTime = (Get-Date).AddMinutes(5).ToUniversalTime()
PS C:\> $DatabaseMap = New-Object -TypeName Microsoft.Azure.Management.Sql.Models.RecommendedDatabaseProperties
PS C:\> $DatabaseMap.Name = "contosodb"
PS C:\> $DatabaseMap.TargetEdition = "Standard"
PS C:\> $DatabaseMap.TargetServiceLevelObjective = "S0"
PS C:\> Start-AzureRmSqlServerUpgrade -ResourceGroupName "ResourceGroup01" -ServerName "Server01" -ServerVersion 12.0 -ScheduleUpgradeAfterUtcDateTime $ScheduleTime -DatabaseCollection ($DatabaseMap)
```

The first command creates a time five minutes in the future by using the Get-Date cmdlet.
The command stores the date in the variable $ScheduleTime.
For more information, type `Get-Help Get-Date`.

The second command creates a **RecommendedDatabaseProperties** object, and then stores that object in the variable $DatabaseMap.

The next three commands assign values to properties of the object stored in $DatabaseMap.

The final command upgrades the existing server named Server01 to version 12.0.
The earliest time to upgrade is five minutes after you run the command, as specified by the $ScheduleTime variable.
After the upgrade, the database contosodb will be running the Standard edition and have the Service Level Objective S0.

## PARAMETERS

### -ServerVersion
Specifies the version to which this cmdlet upgrades the server.
The only valid value is 12.0.

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

### -ScheduleUpgradeAfterUtcDateTime
Specifies the earliest time, as a **DateTime** object, to upgrade the server.
Specify a value in the ISO8601 format, in Coordinated Universal Time (UTC).
For more information, type `Get-Help Get-Date`.

```yaml
Type: DateTime
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DatabaseCollection
Specifies an array of **RecommendedDatabaseProperties** objects that this cmdlet uses for the server upgrade.

```yaml
Type: RecommendedDatabaseProperties[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ElasticPoolCollection
Specifies an array of **UpgradeRecommendedElasticPoolProperties** objects to use for the server upgrade.

```yaml
Type: UpgradeRecommendedElasticPoolProperties[]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerName
Specifies the name of the server that this cmdlet upgrades.

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

### Microsoft.Azure.Commands.Sql.ServerUpgrade.Model.AzureSqlServerUpgradeModel

## NOTES

## RELATED LINKS

[Get-AzureRmSqlServerUpgrade](xref:ResourceManager/AzureRM.Sql/v1.0.12/Get-AzureRmSqlServerUpgrade.md)

[Stop-AzureRmSqlServerUpgrade](xref:ResourceManager/AzureRM.Sql/v1.0.12/Stop-AzureRmSqlServerUpgrade.md)

[Azure SQL Database Cmdlets](xref:ResourceManager/AzureRM.Sql/v1.0.12/AzureRM.Sql.md)
