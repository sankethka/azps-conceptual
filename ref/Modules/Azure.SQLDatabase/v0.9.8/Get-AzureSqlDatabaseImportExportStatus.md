---
external help file: Microsoft.WindowsAzure.Commands.SqlDatabase.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: A8E2AB11-5562-4C62-826E-7CD6D0EFA733
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v0.9.8/Get-AzureSqlDatabaseImportExportStatus.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v0.9.8/Get-AzureSqlDatabaseImportExportStatus.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v0.9.8/Get-AzureSqlDatabaseImportExportStatus.md
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
 [-RequestId] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

### ByRequestObject
```
Get-AzureSqlDatabaseImportExportStatus [-Request] <ImportExportRequest> [-Profile <AzureProfile>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureSqlDatabaseImportExportStatus** cmdlet gets the status of an import or export request.
The **Start-AzureSqlDatabaseImport** or **Start-AzureSqlDatabaseExport** cmdlet initiates requests.
You can specify the request object by using the *Request* parameter, or you can identify the request by using the *RequestId* parameter and the *Username*, *Password*, and *ServerName* parameters.

## EXAMPLES

### Example 1: Get the status of an export request
```
PS C:\>$ExportRequest = Start-AzureSqlDatabaseExport -SqlConnectionContext $SqlContext -StorageContainer $Container -DatabaseName $DatabaseName -BlobName $BlobName
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

### Microsoft.WindowsAzure.Commands.SqlDatabase.Services.ImportExport.StatusInfo

## NOTES

## RELATED LINKS

[Start-AzureSqlDatabaseExport](xref:ServiceManagement/Azure.SQLDatabase/v0.9.8/Start-AzureSqlDatabaseExport.md)

[Start-AzureSqlDatabaseImport](xref:ServiceManagement/Azure.SQLDatabase/v0.9.8/Start-AzureSqlDatabaseImport.md)


