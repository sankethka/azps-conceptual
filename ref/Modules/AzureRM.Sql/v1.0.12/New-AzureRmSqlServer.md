---
external help file: Microsoft.Azure.Commands.Sql.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 670B9755-DC64-400D-B56D-938472E5E1AC
updated_at: 11/22/2016 12:25 AM
ms.date: 11/22/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/New-AzureRmSqlServer.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/New-AzureRmSqlServer.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/e5245f9c2ed759dca260172c12d4ef03cef0982a/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v1.0.12/New-AzureRmSqlServer.md
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

# New-AzureRmSqlServer

## SYNOPSIS
Creates a SQL Database server.

## SYNTAX

```
New-AzureRmSqlServer -ServerName <String> -SqlAdministratorCredentials <PSCredential> -Location <String>
 [-Tags <System.Collections.Generic.Dictionary`2[System.String,System.String]>] [-ServerVersion <String>]
 [-ResourceGroupName] <String> [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmSqlServer** cmdlet creates an Azure SQL Database server.

## EXAMPLES

### Example 1: Create a new Azure SQL Database server
```
PS C:\>New-AzureRmSqlServer -ResourceGroupName "ResourceGroup01" -Location "Central US" -ServerName "Server01" -ServerVersion "12.0"
ResourceGroupName        : resourcegroup01
ServerName               : server01
Location                 : Australia East
SqlAdministratorLogin    : adminLogin
SqlAdministratorPassword : 
ServerVersion            : 12.0
Tags                     :
```

This command creates a version 12 Azure SQL Database server.

## PARAMETERS

### -ServerName
Specifies the name of the new server.

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

### -SqlAdministratorCredentials
Specifies the SQL Database server administrator credentials for the new server.
To obtain a **PSCredential** object, use the Get-Credential cmdlet.
For more information, type `Get-Help Get-Credential`.

```yaml
Type: PSCredential
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Location
Specifies the location of the data center where this cmdlet creates the server.

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

### -Tags
Specifies a dictionary of tags that this cmdlet associates with the new server.

```yaml
Type: System.Collections.Generic.Dictionary`2[System.String,System.String]
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerVersion
Specifies the version of the new server.
psdx_paramvalues 2.0 and 12.0.

Specify 2.0 to create a version 11 server, or 12.0 to create a version 12 server.

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

### -ResourceGroupName
Specifies the name of the resource group to which this cmdlet assigns the server.

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

### Microsoft.Azure.Commands.Sql.Server.Model.AzureSqlServerModel

## NOTES

## RELATED LINKS

[Get-AzureRmSqlServer](xref:ResourceManager/AzureRM.Sql/v1.0.12/Get-AzureRmSqlServer.md)

[Remove-AzureRmSqlServer](xref:ResourceManager/AzureRM.Sql/v1.0.12/Remove-AzureRmSqlServer.md)

[Set-AzureRmSqlServer](xref:ResourceManager/AzureRM.Sql/v1.0.12/Set-AzureRmSqlServer.md)

[New-AzureRmSqlServerFirewallRule](xref:ResourceManager/AzureRM.Sql/v1.0.12/New-AzureRmSqlServerFirewallRule.md)

[Azure SQL Database Cmdlets](xref:ResourceManager/AzureRM.Sql/v1.0.12/AzureRM.Sql.md)


