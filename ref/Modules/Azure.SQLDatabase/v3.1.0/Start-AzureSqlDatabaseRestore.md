---
external help file: Microsoft.WindowsAzure.Commands.SqlDatabase.dll-Help.xml
ms.assetid: 383F36F3-3F52-4FC3-99F7-831096E6037D
online version: 
schema: 2.0.0
updated_at: 12/19/2016 9:17 PM
ms.date: 12/19/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v3.1.0/Start-AzureSqlDatabaseRestore.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v3.1.0/Start-AzureSqlDatabaseRestore.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/8bbe11a32244ebde0ad865d340e59d85ee67d16e/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v3.1.0/Start-AzureSqlDatabaseRestore.md
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

# Start-AzureSqlDatabaseRestore

## SYNOPSIS
Performs a point in time restore of a database.

## SYNTAX

### BySourceDatabaseObject
```
Start-AzureSqlDatabaseRestore [[-SourceServerName] <String>] [-SourceDatabase] <Database>
 [-TargetServerName <String>] -TargetDatabaseName <String> [-PointInTime <DateTime>]
 [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

### BySourceRestorableDroppedDatabaseObject
```
Start-AzureSqlDatabaseRestore [[-SourceServerName] <String>]
 [-SourceRestorableDroppedDatabase] <RestorableDroppedDatabase> [-TargetServerName <String>]
 -TargetDatabaseName <String> [-PointInTime <DateTime>] [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### BySourceRestorableDroppedDatabaseName
```
Start-AzureSqlDatabaseRestore [-SourceServerName] <String> [-SourceDatabaseName] <String>
 [-SourceDatabaseDeletionDate] <DateTime> [-TargetServerName <String>] [-RestorableDropped]
 -TargetDatabaseName <String> [-PointInTime <DateTime>] [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

### BySourceDatabaseName
```
Start-AzureSqlDatabaseRestore [-SourceServerName] <String> [-SourceDatabaseName] <String>
 [-TargetServerName <String>] -TargetDatabaseName <String> [-PointInTime <DateTime>]
 [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Start-AzureSqlDatabaseRestore** cmdlet performs a point in time restore of a Basic, Standard or Premium database.
Azure SQL Database retains Basic database backups 7 days, Standard for 14 days, and Premium for 35 days.
The restore operation creates a new database.
If the source database is not deleted, the *SourceDatabaseName* and *TargetDatabaseName* parameter must have different values.

Azure SQL Database does not currently support cross server restore.
The source and target server names must be the same.

## EXAMPLES

### Example 1: Restore a database specified as an object to a point in time
```
PS C:\> $Database = Get-AzureSqlDatabase -ServerName "Server01" -DatabaseName "Database17" 
PS C:\> $Operation = Start-AzureSqlDatabaseRestore -SourceDatabase $Database -TargetDatabaseName "DatabaseRestored" -PointInTime "2013-01-01 06:00:00"
```

The first command gets a database object for the database named Database17 on the server named Server01, and then stores it in the $Database variable.

The second command restores the database to a specific point in time.
The command specifies at name for the new database.

### Example 2: Restore a database specified by name to a point in time
```
PS C:\> $Operation = Start-AzureSqlDatabaseRestore -SourceServerName "Server01" -SourceDatabaseName "Database17" -TargetDatabaseName "DatabaseRestored" -PointInTime "2013-01-01 06:00:00"
```

This command restores the database named Database17 to a specific point in time.
The command specifies at name for the new database.

### Example 3: Restore a dropped database specified as an object to a point in time
```
PS C:\> $Database = Get-AzureSqlDatabase -RestorableDropped -ServerName "Server01" -DatabaseName "Database01" -DatabaseDeletionDate "2012-11-09T22:59:43.000Z" 
PS C:\> $Operation = Start-AzureSqlDatabaseRestore -SourceRestorableDroppedDatabase $Database -TargetDatabaseName "DroppedDatabaseRestored"
```

The first command gets a database object for the database named Database01 on the server named Server01.
The command specifies the *RestorableDropped* parameter.
Therefore, the cmdlet gets restorable dropped database the specified restore point.
The command stores that database object in the $Database variable.

The second command restores the dropped database specified by $Database.
The command specifies at name for the new database.

## PARAMETERS

### -SourceServerName
Specifies the name of the server on which the source database is live and running, or on which the source database ran before it was deleted.

```yaml
Type: String
Parameter Sets: BySourceDatabaseObject, BySourceRestorableDroppedDatabaseObject
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

```yaml
Type: String
Parameter Sets: BySourceRestorableDroppedDatabaseName, BySourceDatabaseName
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceDatabase
Specifies the name of the database that this cmdlet restores.

```yaml
Type: Database
Parameter Sets: BySourceDatabaseObject
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -TargetServerName
Specifies the name of the server to which this cmdlet restores the database.

Azure SQL Database does not currently support cross server restore.
The source and target server names must be the same.

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

### -TargetDatabaseName
Specifies the name of the new database that the restore operation creates.

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

### -PointInTime
Specifies the restore point to which to restore the database.
When the restore operation finishes, the database is restored to the state it was at the date and time that this parameter specifies.
By default, for a live database this set to the current time, and for a dropped database, this cmdlet uses the time when the database was dropped.

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

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

```yaml
Type: AzureSMProfile
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
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

### -SourceDatabaseName
Specifies the name of the live database that this cmdlet restores.

```yaml
Type: String
Parameter Sets: BySourceRestorableDroppedDatabaseName, BySourceDatabaseName
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceDatabaseDeletionDate
Specifies the date and time when the database was deleted.
You must include milliseconds when you specify the time to match the actual database deletion time.

```yaml
Type: DateTime
Parameter Sets: BySourceRestorableDroppedDatabaseName
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RestorableDropped
Indicates that this cmdlet restores a restorable dropped database.

```yaml
Type: SwitchParameter
Parameter Sets: BySourceRestorableDroppedDatabaseName
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceRestorableDroppedDatabase
Specifies an object that represents the restorable dropped database that this cmdlet restores.
To obtain a **RestorableDroppedDatabase** object, use the Get-AzureSqlDatabase cmdlet, and specify the *RestorableDropped* parameter.

```yaml
Type: RestorableDroppedDatabase
Parameter Sets: BySourceRestorableDroppedDatabaseObject
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.WindowsAzure.Commands.SqlDatabase.Services.Server.RestorableDroppedDatabase

### Microsoft.WindowsAzure.Commands.SqlDatabase.Services.Server.Database

## OUTPUTS

### Microsoft.WindowsAzure.Commands.SqlDatabase.Services.Server.RestoreDatabaseOperation

## NOTES
* You must use certificate based authentication to run this cmdlet. Run the following commands on the computer where run this cmdlet: 

`PS C:\\\> $subId = \<Subscription ID\>`
`PS C:\\\> $thumbprint = \<Certificate Thumbprint\>`
`PS C:\\\> $myCert = Get-Item Cert:\CurrentUser\My\$thumbprint`
`PS C:\\\> Set-AzureSubscription -SubscriptionName "mySubscription" -SubscriptionId $subId -Certificate $myCert`
`PS C:\\\> Select-AzureSubscription -SubscriptionName "mySubscription"`

## RELATED LINKS

[Azure SQL Database](https://azure.microsoft.com/en-us/services/sql-database/)

[Create Database Restore Request](https://msdn.microsoft.com/en-us/library/dn509571.aspx)

[Operations for Azure SQL Databases](https://msdn.microsoft.com/en-us/library/azure/dn505719.aspx)

[Get-AzureSqlDatabase](xref:ServiceManagement/Azure.SQLDatabase/v3.1.0/Get-AzureSqlDatabase.md)


