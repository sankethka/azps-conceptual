---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 59FADEA7-FE9D-4B8D-B398-27A80D495977
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v1.1.4/Get-AzureRmBatchAccount.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v1.1.4/Get-AzureRmBatchAccount.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v1.1.4/Get-AzureRmBatchAccount.md
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

# Get-AzureRmBatchAccount

## SYNOPSIS
Gets a Batch account in the current subscription.

## SYNTAX

```
Get-AzureRmBatchAccount [[-AccountName] <String>] [[-ResourceGroupName] <String>] [[-Tag] <Hashtable>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureRmBatchAccount** cmdlet gets an Azure Batch account in the current subscription.
You can use the *AccountName* parameter to get a single account, or you can use the *ResourceGroupName* parameter to get accounts under that resource group.

## EXAMPLES

### Example 1: Get a batch account by name
```
PS C:\>Get-AzureRmBatchAccount -AccountName "pfuller"
AccountName                  : pfuller

Location                     : westus

ResourceGroupName            : CmdletExampleRG

CoreQuota                    : 20

PoolQuota                    : 20

ActiveJobAndJobScheduleQuota : 20

Tags                         : 
TaskTenantUrl                : https://pfuller.westus.batch.azure.com
```

This command gets the batch account named pfuller.

### Example 2: Get the batch accounts associated with a resource group
```
PS C:\>Get-AzureRmBatchAccount -ResourceGroupName "CmdletExampleRG"
AccountName                  : cmdletexample

Location                     : westus

ResourceGroupName            : CmdletExampleRG

CoreQuota                    : 20

PoolQuota                    : 20

ActiveJobAndJobScheduleQuota : 20

Tags                         : 

TaskTenantUrl                : https://cmdletexample.westus.batch.azure.com




AccountName                  : cmdletexample2

Location                     : westus

ResourceGroupName            : CmdletExampleRG

CoreQuota                    : 20

PoolQuota                    : 20

ActiveJobAndJobScheduleQuota : 20

Tags                         : 
TaskTenantUrl                : https://cmdletexample.westus.batch.azure.com
```

This command gets the batch accounts associated with the CmdletExampleRG resource group.

## PARAMETERS

### -AccountName
Specifies the name of an account.
If you specify an account name, this cmdlet only returns that account.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Name

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of a resource group.
If you specify a resource group, this cmdlet gets the accounts under the specified resource group.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Tag
Specifies tags as a hash table.
This cmdlet gets accounts that contain the tags that this parameter specifies.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[New-AzureRmBatchAccount](xref:ResourceManager/AzureRM.Batch/v1.1.4/New-AzureRmBatchAccount.md)

[Remove-AzureRmBatchAccount](xref:ResourceManager/AzureRM.Batch/v1.1.4/Remove-AzureRmBatchAccount.md)

[Set-AzureRmBatchAccount](xref:ResourceManager/AzureRM.Batch/v1.1.4/Set-AzureRmBatchAccount.md)

[Azure Batch Cmdlets](xref:ResourceManager/AzureRM.Batch/v1.1.4/AzureRM.Batch.md)


