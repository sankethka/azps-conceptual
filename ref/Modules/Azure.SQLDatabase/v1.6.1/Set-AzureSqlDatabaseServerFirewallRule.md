---
external help file: Microsoft.WindowsAzure.Commands.SqlDatabase.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 5944EDB2-DC4D-40C3-9123-A33011CB7032
updated_at: 11/22/2016 12:25 AM
ms.date: 11/22/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v1.6.1/Set-AzureSqlDatabaseServerFirewallRule.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v1.6.1/Set-AzureSqlDatabaseServerFirewallRule.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/e5245f9c2ed759dca260172c12d4ef03cef0982a/azureps-cmdlets-docs/ServiceManagement/Azure.SQLDatabase/v1.6.1/Set-AzureSqlDatabaseServerFirewallRule.md
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

# Set-AzureSqlDatabaseServerFirewallRule

## SYNOPSIS
Modifies an existing firewall rule in an Azure SQL Database Server.

## SYNTAX

```
Set-AzureSqlDatabaseServerFirewallRule [-ServerName] <String> -RuleName <String> -StartIpAddress <String>
 -EndIpAddress <String> [-Force] [-Profile <AzureSMProfile>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureSqlDatabaseServerFirewallRule** cmdlet modifies the start IP address and end IP address values of an existing firewall rule in the specified instance of Azure SQL Database Server.

## EXAMPLES

### Example 1: Modify a firewall rule
```
PS C:\>Set-AzureSqlDatabaseServerFirewallRule -ServerName "lpqd0zbr8y" -RuleName "FirewallRule24" -StartIpAddress 10.1.1.2 -EndIpAddress 10.1.1.4
```

This command modifies the start IP address and end IP address of the firewall rule named FirewallRule24 on the Azure SQL Database server named lpqd0zbr8y.

## PARAMETERS

### -ServerName
Specifies the name of a server.
This cmdlet creates a firewall rule on the server that this cmdlet specifies.
Specify the server name, not the fully qualified DNS name.

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

### -RuleName
Specifies the name of the firewall rule that this cmdlet modifies.

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

### -StartIpAddress
Specifies the start value of the IP address range for the firewall rule.

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

### -EndIpAddress
Specifies the end value of the IP address range for this rule.

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

### -Force
ps_force

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
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

### Microsoft.WindowsAzure.Commands.SqlDatabase.Model.SqlDatabaseServerFirewallRuleContext

## OUTPUTS

### Microsoft.WindowsAzure.Commands.SqlDatabase.Model.SqlDatabaseServerFirewallRuleContext

## NOTES

## RELATED LINKS

[Azure SQL Database](https://azure.microsoft.com/en-us/services/sql-database/)

[Operations for Azure SQL Databases](https://msdn.microsoft.com/en-us/library/azure/dn505719.aspx)

[Set Firewall Rule](https://msdn.microsoft.com/en-us/library/azure/dn505707.aspx)

[Get-AzureSqlDatabaseServerFirewallRule](xref:ServiceManagement/Azure.SQLDatabase/v1.6.1/Get-AzureSqlDatabaseServerFirewallRule.md)

[New-AzureSqlDatabaseServerFirewallRule](xref:ServiceManagement/Azure.SQLDatabase/v1.6.1/New-AzureSqlDatabaseServerFirewallRule.md)

[Remove-AzureSqlDatabaseServerFirewallRule](xref:ServiceManagement/Azure.SQLDatabase/v1.6.1/Remove-AzureSqlDatabaseServerFirewallRule.md)


