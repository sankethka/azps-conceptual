---
external help file: Microsoft.WindowsAzure.Commands.SqlDatabase.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 1BDF45A0-59F4-4FF2-9838-580419B9D594
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v0.9.8/Start-AzureSqlDatabaseExport.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v0.9.8/Start-AzureSqlDatabaseExport.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v0.9.8/Start-AzureSqlDatabaseExport.md
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

# Start-AzureSqlDatabaseExport

## SYNOPSIS
Starts an export operation from an Azure SQL Database to Blob storage.

## SYNTAX

### ByContainerObject
```
Start-AzureSqlDatabaseExport [-SqlConnectionContext] <ISqlServerConnectionInformation>
 [-StorageContainer] <AzureStorageContainer> [-DatabaseName] <String> [-BlobName] <String>
 [-Profile <AzureProfile>] [<CommonParameters>]
```

### ByContainerName
```
Start-AzureSqlDatabaseExport [-SqlConnectionContext] <ISqlServerConnectionInformation>
 [-StorageContext] <AzureStorageContext> [-StorageContainerName] <String> [-DatabaseName] <String>
 [-BlobName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Start-AzureSqlDatabaseExport** cmdlet starts an export operation from an Azure SQL Database to Blob storage.
The operation requires a database server connection context.
Use the Get-AzureSqlDatabaseImportExportStatus cmdlet to get the status of the export operation.

## EXAMPLES

### Example 1: Export a database
```
PS C:\>$Credential = Get-Credential
PS C:\> $SqlContext = New-AzureSqlDatabaseServerContext -ServerName $ServerName -Credentials $Credential
PS C:\> $StorageContext = New-AzureStorageContext -StorageAccountName $StorageName -StorageAccountKey $StorageKey
PS C:\> $Container = Get-AzureStorageContainer -Name $ContainerName -Context $StorageContext
PS C:\> $exportRequest = Start-AzureSqlDatabaseExport -SqlConnectionContext $SqlContext -StorageContainer $Container -DatabaseName $DatabaseName -BlobName $BlobName
```

This example initiates an export process from the Azure SQL Database that has the name stored in the $DatabaseName variable to the Blob storage stored in the $BlobName variable.

## PARAMETERS

### -SqlConnectionContext
Specifies the connection context of a server that contains the database.

```yaml
Type: ISqlServerConnectionInformation
Parameter Sets: (All)
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageContainer
Specifies the storage container that contains the Blob into which this cmdlet export a database.

```yaml
Type: AzureStorageContainer
Parameter Sets: ByContainerObject
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DatabaseName
Specifies the name of the database from which this cmdlet exports data.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -BlobName
Specifies the name of the Azure Blob storage into which this cmdlet exports the database.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageContext
Specifies the context of the Blob storage container.

```yaml
Type: AzureStorageContext
Parameter Sets: ByContainerName
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageContainerName
Specifies the name of the storage container that contains the Blob into which this cmdlet exports a database.

```yaml
Type: String
Parameter Sets: ByContainerName
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Profile
In-memory profile.

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

## OUTPUTS

### Microsoft.WindowsAzure.Commands.SqlDatabase.Services.ImportExportRequest

## NOTES

## RELATED LINKS

[Get-AzureSqlDatabaseImportExportStatus](xref:ServiceManagement/Azure.SQLDatabase/v0.9.8/Get-AzureSqlDatabaseImportExportStatus.md)

[Start-AzureSqlDatabaseImport](xref:ServiceManagement/Azure.SQLDatabase/v0.9.8/Start-AzureSqlDatabaseImport.md)


