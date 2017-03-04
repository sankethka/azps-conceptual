---
external help file: Microsoft.WindowsAzure.Commands.SqlDatabase.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 2A073572-B113-498D-A185-ABC69BA691AA
updated_at: 1/14/2017 3:12 PM
ms.date: 1/14/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v2.1.0/Get-AzureSqlDatabaseImportExportStatus.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v2.1.0/Get-AzureSqlDatabaseImportExportStatus.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/e1727951dca2b21abd11583de9872813c9706050/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v2.1.0/Get-AzureSqlDatabaseImportExportStatus.md
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

# Get-AzureSqlDatabaseImportExportStatus

## SYNOPSIS
Gets the status of an import or export request.

## SYNTAX

### ByConnectionInfo
```
Get-AzureSqlDatabaseImportExportStatus [-Username] <String> [-Password] <String> [-ServerName] <String>
 [-RequestId] <String> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### ByRequestObject
```
Get-AzureSqlDatabaseImportExportStatus [-Request] <ImportExportRequest> [-Profile <AzureSMProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureSqlDatabaseImportExportStatus** cmdlet gets the status of an import or export request.
The **Start-AzureSqlDatabaseImport** or **Start-AzureSqlDatabaseExport** cmdlet initiates requests.
You can specify the request object by using the *Request* parameter, or you can identify the request by using the *RequestId* parameter and the *Username*, *Password*, and *ServerName* parameters.

## EXAMPLES

### Example 1: Get the status of an export request
```
PS C:\> $ExportRequest = Start-AzureSqlDatabaseExport -SqlConnectionContext $SqlContext -StorageContainer $Container -DatabaseName $DatabaseName -BlobName $BlobName
PS C:\> Get-AzureSqlDatabaseImportExportStatus -Request $ExportRequest
```

The first command creates an export request, and then stores it in the $ExportRequest variable.

The second command gets the status of the export request stored in $ExportRequest.

## PARAMETERS

### -Username
Specifies the user name required to connect to the Azure SQL Database server.
You must specify this parameter if you specified the *RequestId* parameter.

```yaml
Type: String
Parameter Sets: ByConnectionInfo
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Password
Specifies the password that is required to connect to the Azure SQL Database server.
You must specify this parameter if you specified the *RequestId* parameter.

```yaml
Type: String
Parameter Sets: ByConnectionInfo
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerName
Specifies the name of the Azure SQL Database server.
You must specify this parameter if you specified the *RequestId* parameter.

```yaml
Type: String
Parameter Sets: ByConnectionInfo
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -RequestId
Specifies the GUID of the import or export operation for which this cmdlet gets status.
If you specify this parameter, you must specify the *UserName*, *Password*, and *ServerName* parameters.

```yaml
Type: String
Parameter Sets: ByConnectionInfo
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Request
Specifies an **ImportExportRequest** object.
To obtain an import or export request object, use the **Start-AzureSqlDatabaseImport** or **Start-AzureSqlDatabaseExport** cmdlet.

```yaml
Type: ImportExportRequest
Parameter Sets: ByRequestObject
Aliases: 

Required: True
Position: 0
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.WindowsAzure.Commands.SqlDatabase.Services.ImportExport.StatusInfo

## NOTES

## RELATED LINKS

[Azure SQL Database](https://azure.microsoft.com/en-us/services/sql-database/)

[Get Import Export Database Status](https://msdn.microsoft.com/en-us/library/azure/dn781289.aspx)

[Operations for Azure SQL Databases](https://msdn.microsoft.com/en-us/library/azure/dn505719.aspx)

[Start-AzureSqlDatabaseExport](xref:ServiceManagement/Azure.SQLDatabase/v2.1.0/Start-AzureSqlDatabaseExport.md)

[Start-AzureSqlDatabaseImport](xref:ServiceManagement/Azure.SQLDatabase/v2.1.0/Start-AzureSqlDatabaseImport.md)


