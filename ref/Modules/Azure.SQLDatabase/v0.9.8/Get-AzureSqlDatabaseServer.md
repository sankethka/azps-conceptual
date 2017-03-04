---
external help file: Microsoft.WindowsAzure.Commands.SqlDatabase.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: F87727FA-9E12-4D7B-A939-71E64CBACD4E
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v0.9.8/Get-AzureSqlDatabaseServer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v0.9.8/Get-AzureSqlDatabaseServer.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v0.9.8/Get-AzureSqlDatabaseServer.md
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

# Get-AzureSqlDatabaseServer

## SYNOPSIS
Gets information about Azure SQL Database servers.

## SYNTAX

```
Get-AzureSqlDatabaseServer [[-ServerName] <String>] [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureSqlDatabaseServer** cmdlet gets information about the instances of Azure SQL Database Server in the current subscription.
If you specify a server by name, this cmdlet returns an object that contains information about that server.
Otherwise, the cmdlet returns information about all the servers.

## EXAMPLES

### Example 1: Get information about all servers
```
PS C:\>Get-AzureSqlDatabaseServer
```

This command returns information about all instances of Azure SQL Database Server in the current subscription.

### Example 2: Get information about a specific server
```
PS C:\>Get-AzureSqlDatabaseServer -ServerName "lpqd0zbr8y"
```

This command returns information about the server named lpqd0zbr8y.

## PARAMETERS

### -ServerName
Specifies the name of the server that this cmdlet removes.
Specify the server name, not the fully qualified DNS name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### Microsoft.WindowsAzure.Commands.SqlDatabase.Model.SqlDatabaseServerContext

## OUTPUTS

### IEnumerable<Microsoft.WindowsAzure.Commands.SqlDatabase.Model.SqlDatabaseServerContext>

## NOTES

## RELATED LINKS

[New-AzureSqlDatabaseServer](xref:ServiceManagement/Azure.SQLDatabase/v0.9.8/New-AzureSqlDatabaseServer.md)

[Remove-AzureSqlDatabaseServer](xref:ServiceManagement/Azure.SQLDatabase/v0.9.8/Remove-AzureSqlDatabaseServer.md)

[Set-AzureSqlDatabaseServer](xref:ServiceManagement/Azure.SQLDatabase/v0.9.8/Set-AzureSqlDatabaseServer.md)


