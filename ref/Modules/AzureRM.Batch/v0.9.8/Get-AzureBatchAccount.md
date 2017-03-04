---
external help file: Microsoft.Azure.Commands.Batch.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: CFA76598-98A2-4ECD-B886-FB0594B2AAD5
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v0.9.8/Get-AzureBatchAccount.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v0.9.8/Get-AzureBatchAccount.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Batch/v0.9.8/Get-AzureBatchAccount.md
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

# Get-AzureBatchAccount

## SYNOPSIS
Gets a Batch account under the current subscription.

## SYNTAX

```
Get-AzureBatchAccount [[-AccountName] <String>] [[-ResourceGroupName] <String>] [[-Tag] <Hashtable>]
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureBatchAccount** cmdlet gets an Azure Batch account under the current subscription.
You can use the *AccountName* parameter to get a single account, or you can use the *ResourceGroupName* parameter to get accounts under that resource group.

## EXAMPLES

### Example 1: Get a batch account by name
```
PS C:\>Get-AzureBatchAccount -AccountName "pfuller"
AccountName          Location        ResourceGroupName Tags               TaskTenantUrl
-----------          --------        ----------------- ----               -------------
pfuller              westus          CmdletExampleRG                      https://pfuller.westus.batch.azure.com
```

This command gets the batch account named pfuller.

### Example 2: Gets the batch accounts associated with a resource group
```
PS C:\>Get-AzureBatchAccount -ResourceGroupName "CmdletExampleRG"
AccountName          Location        ResourceGroupName Tags               TaskTenantUrl
-----------          --------        ----------------- ----               -------------
cmdletexample        westus          CmdletExampleRG                      https://cmdletexample.westus.batch.azure.com
cmdletexample2       westus          CmdletExampleRG                      https://cmdletexample.westus.batch.azure.com
```

This command gets the batch accounts associated with the CmdletExampleRG resource group.

## PARAMETERS

### -AccountName
Specifies the name of the account.
If you specify an account name, this cmdlet only returns the specified account.

```yaml
Type: String
Parameter Sets: (All)
Aliases: Name

Required: False
Position: 1
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

### -ResourceGroupName
Specifies the name of the resource group.
If you specify a resource group, this cmdlet lists the accounts under the specified resource group.

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

### -Tag
Specifies tags in an array of hash tables to set on the account.

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### BatchAccountContext

## NOTES

## RELATED LINKS

[New-AzureBatchAccount](xref:ResourceManager/AzureRM.Batch/v0.9.8/New-AzureBatchAccount.md)

[Remove-AzureBatchAccount](xref:ResourceManager/AzureRM.Batch/v0.9.8/Remove-AzureBatchAccount.md)

[Set-AzureBatchAccount](xref:ResourceManager/AzureRM.Batch/v0.9.8/Set-AzureBatchAccount.md)

[Azure Batch Cmdlets](xref:ResourceManager/AzureRM.Batch/v0.9.8/AzureRM.Batch.md)


