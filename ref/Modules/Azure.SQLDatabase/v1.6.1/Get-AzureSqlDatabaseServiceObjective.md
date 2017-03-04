---
external help file: Microsoft.WindowsAzure.Commands.SqlDatabase.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 9BFF1A0D-1F5B-486F-9789-684D94A1B204
updated_at: 11/22/2016 12:25 AM
ms.date: 11/22/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v1.6.1/Get-AzureSqlDatabaseServiceObjective.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v1.6.1/Get-AzureSqlDatabaseServiceObjective.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/e5245f9c2ed759dca260172c12d4ef03cef0982a/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v1.6.1/Get-AzureSqlDatabaseServiceObjective.md
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

# Get-AzureSqlDatabaseServiceObjective

## SYNOPSIS
Gets service objectives for an Azure SQL Database server.

## SYNTAX

### ByConnectionContext (Default)
```
Get-AzureSqlDatabaseServiceObjective [-Context] <IServerDataServiceContext>
 [-ServiceObjective <ServiceObjective>] [-ServiceObjectiveName <String>] [-Profile <AzureSMProfile>]
 [<CommonParameters>]
```

### ByServerName
```
Get-AzureSqlDatabaseServiceObjective [-ServerName] <String> [-ServiceObjective <ServiceObjective>]
 [-ServiceObjectiveName <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureSqlDatabaseServiceObjective** cmdlet gets service objectives for an Azure SQL Database server.
Service objectives are referred to as performance levels.
If you do not specify a service objective, this cmdlet returns all valid service objectives for the specified server.

This cmdlet applies to Basic, Standard, and Premium service tiers.

## EXAMPLES

### Example 1: Get all the service objectives by using a connection context
```
PS C:\>Get-AzureSqlDatabaseServiceObjective -Context $Context
```

This command gets all the service objectives for the server that the connection context $Context specifies.

### Example 2: Get all the service objectives by using a server name
```
PS C:\>Get-AzureSqlDatabaseServiceObjective -ServerName "Server01"
```

This command gets all the service objectives for the server named Server01.

## PARAMETERS

### -Context
Specifies the connection context of a server.

```yaml
Type: IServerDataServiceContext
Parameter Sets: ByConnectionContext
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ServiceObjective
Specifies an object that represents the service objective that this cmdlet gets.
Valid values are: 

- Basic: dd6d99bb-f193-4ec1-86f2-43d3bccbc49c
- Standard (S0): f1173c43-91bd-4aaa-973c-54e79e15235b
- Standard (S1): 1b1ebd4d-d903-4baa-97f9-4ea675f5e928
- Standard (S2): 455330e1-00cd-488b-b5fa-177c226f28b7
- *Standard (S3): 789681b8-ca10-4eb0-bdf2-e0b050601b40
- Premium (P1): 7203483a-c4fb-4304-9e9f-17c71c904f5d
- Premium (P1): 7203483a-c4fb-4304-9e9f-17c71c904f5d
- Premium (P2): a7d1b92d-c987-4375-b54d-2b1d0e0f5bb0
- Premium (P3): a7c4c615-cfb1-464b-b252-925be0a19446

*Standard (S3) is part of the Latest SQL Database Update V12 (preview).
For more information, see What's New in the Azure SQL Database V12 Previewhttp://azure.microsoft.com/documentation/articles/sql-database-preview-whats-new/.

```yaml
Type: ServiceObjective
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ServiceObjectiveName
Specifies the name of a service objective to get.
Valid values are: Basic, S0, S1, S2, S3, P1, P2, and P3.

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

### -ServerName
Specifies the name of a server.

```yaml
Type: String
Parameter Sets: ByServerName
Aliases: 

Required: True
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile
ps_azureprofile_description

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

### Microsoft.WindowsAzure.Commands.SqlDatabase.Services.Server.ServiceObjective

## OUTPUTS

### IEnumerable<Microsoft.WindowsAzure.Commands.SqlDatabase.Services.Server.ServiceObjective>

## NOTES

## RELATED LINKS

[Azure SQL Database](http://msdn.microsoft.com/library/ee336279.aspx)

[Get Service Level Objective](https://msdn.microsoft.com/en-us/library/azure/dn505709.aspx)

[Operations for Azure SQL Databases](https://msdn.microsoft.com/en-us/library/azure/dn505719.aspx)

[New-AzureSqlDatabaseServerContext](xref:ServiceManagement/Azure.SQLDatabase/v1.6.1/New-AzureSqlDatabaseServerContext.md)


