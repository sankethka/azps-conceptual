---
external help file: Microsoft.Azure.Commands.Sql.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: E223F6D6-3D4D-4759-AB21-BB309927FECB
updated_at: 10/20/2016 12:12 AM
ms.date: 10/20/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v0.9.8/Get-AzureSqlDatabase.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v0.9.8/Get-AzureSqlDatabase.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/831f900c1a4babea8fcc8817cfbc25252a1aa872/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v0.9.8/Get-AzureSqlDatabase.md
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

# Get-AzureSqlDatabase

## SYNOPSIS
Gets one or more Azure SQL databases.

## SYNTAX

```
Get-AzureSqlDatabase [[-DatabaseName] <String>] [-ServerName] <String> [-ResourceGroupName] <String>
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The Get-AzureSqlDatabase cmdlet gets one or more Azure SQL databases from an Azure SQL Database Server.

## EXAMPLES

### Example 1: Get all databases on a server
```
PS C:\>Get-AzureSqlDatabase -ResourceGroupName "ResourceGroup11" -ServerName "Server01"
```

This command gets all databases on the server named Server01.

### Example 2: Get a database by name on a server
```
PS C:\>Get-AzureSqlDatabase -ResourceGroupName "ResourceGroup11" -ServerName "Server01" -DatabaseName "Database02"
```

This command gets a database named Database02 from a server named Server01.

## PARAMETERS

### -DatabaseName
Specifies the name of the database to retrieve.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
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
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the resource group of the server containing the database to retrieve.

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

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

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

### System.String

## OUTPUTS

### System.Object

## NOTES
* This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, and OutVariable. For more information, see about_CommonParameters.

## RELATED LINKS

[New-AzureSqlDatabase]()

[Remove-AzureSqlDatabase]()

[Resume-AzureSqlDatabase]()

[Set-AzureSqlDatabase]()

[Suspend-AzureSqlDatabase]()

[Azure SQL Database]()


