---
external help file: Microsoft.Azure.Commands.Sql.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 77C43116-098C-4D62-8FF6-5AF962D62588
updated_at: 11/22/2016 8:52 PM
ms.date: 11/22/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.2.0/Get-AzureRmSqlServerBackupLongTermRetentionVault.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.2.0/Get-AzureRmSqlServerBackupLongTermRetentionVault.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/0cedc8f73bc96cf5ac4c69144e17b3de601fd3cc/azureps-cmdlets-docs/ResourceManager/AzureRM.Sql/v2.2.0/Get-AzureRmSqlServerBackupLongTermRetentionVault.md
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

# Get-AzureRmSqlServerBackupLongTermRetentionVault

## SYNOPSIS
Gets a server long term retention vault.

## SYNTAX

```
Get-AzureRmSqlServerBackupLongTermRetentionVault [-ServerName] <String> [-ResourceGroupName] <String> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmSqlServerBackupLongTermRetentionVault** cmdlet gets the long term retention vault registered to this server.
The vault is an Azure Backup resource used to store backup data.

## EXAMPLES

### 1:
```

```

## PARAMETERS

### -ServerName
Specifies the server for which this cmdlet gets a vault.

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
Specifies the name of the resource group that contains the server.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Set-AzureRmSqlServerBackupLongTermRetentionVault](xref:ResourceManager/AzureRM.Sql/v2.2.0/Set-AzureRmSqlServerBackupLongTermRetentionVault.md)


