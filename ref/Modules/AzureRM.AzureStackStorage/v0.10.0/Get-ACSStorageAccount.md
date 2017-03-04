---
external help file: Microsoft.AzureStack.Commands.StorageAdmin.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 921ED1EF-72E5-43A8-80F5-7D4090813468
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackStorage/v0.10.0/Get-ACSStorageAccount.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackStorage/v0.10.0/Get-ACSStorageAccount.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackStorage/v0.10.0/Get-ACSStorageAccount.md
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

# Get-ACSStorageAccount

## SYNOPSIS
Gets a list of the tenant storage accounts based on the tenant subscription ID, account name, account status, or an account ID.

## SYNTAX

### ListMultipleAccounts (Default)
```
Get-ACSStorageAccount [-FarmName] <String> [[-TenantSubscriptionId] <String>] [[-PartialAccountName] <String>]
 [[-StorageAccountStatus] <Int32>] [-Detail] [[-SubscriptionId] <String>] [[-Token] <String>]
 [[-AdminUri] <Uri>] [-ResourceGroupName] <String> [-SkipCertificateValidation] [<CommonParameters>]
```

### GetSingleAccount
```
Get-ACSStorageAccount [-FarmName] <String> [-AccountId] <Int64> [-Detail] [[-SubscriptionId] <String>]
 [[-Token] <String>] [[-AdminUri] <Uri>] [-ResourceGroupName] <String> [-SkipCertificateValidation]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-ACSStorageAccount** cmdlet gets a list of the tenant storage accounts based on the tenant subscription ID, account name, account status, or an account ID.

## EXAMPLES

### Example 1: Get a list of tenant storage accounts
```
PS C:\>$Global:AdminUri = 'https://srp.yourdomainFQDN:30020'
PS C:\> $SubscriptId = "SubID"
PS C:\> $Token = "Token001"
PS C:\> $ResourceGroup = "System"

PS C:\> $Farm = Get-ACSFarm -SubscriptionId $SubscriptId -Token $Token -AdminUri $AdminUri -SkipCertificateValidation -ResourceGroupName $ResourceGroup
PS C:\> Get-ACSStorageAccount -SubscriptionId $SubscriptId -Token $Token -AdminUri $AdminUri -ResourceGroupName $ResourceGroup -SkipCertificateValidation -FarmName $Farm.Name -PartialAccountName "Demo" | fl

StorageAccount : Microsoft.AzureStack.Management.StorageAdmin.Models.StorageAccountModel
RequestId      : 2e535c62-23a7-424e-a727-3ed0a20de23a
StatusCode     : OK
```

This example gets a list of tenant storage accounts whose versioned storage account name is 7.

## PARAMETERS

### -FarmName
Specifies the name of the ACS farm.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TenantSubscriptionId
Specifies the tenant Subscription ID.

```yaml
Type: String
Parameter Sets: ListMultipleAccounts
Aliases: 

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PartialAccountName
Specifies the partial string of the tenant storage account.

```yaml
Type: String
Parameter Sets: ListMultipleAccounts
Aliases: 

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageAccountStatus
Specifies the status of the tenant storage account.

```yaml
Type: Int32
Parameter Sets: ListMultipleAccounts
Aliases: 

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Detail
Indicates that this cmdlet lists details about the Azure Consistent Storage (ACS) storage account.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases: 

Required: False
Position: 9
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
Specifies the service administrator subscription ID.

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

### -Token
Specifies the service administrator token.

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

### -AdminUri
Specifies the location of the Resource Manager endpoint.
If you configured your environment by using the Set-AzureRMEnvironment cmdlet, you do not have to specify this parameter.

```yaml
Type: Uri
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ResourceGroupName
Specifies the name of resource group from which this cmdlet gets the storage account from.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SkipCertificateValidation
Indicates that this cmdlet skips certificate validation.

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

### -AccountId
Specifies the account ID of a tenant storage account.

```yaml
Type: Int64
Parameter Sets: GetSingleAccount
Aliases: 

Required: True
Position: 8
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.AzureStack.Commands.StorageAdmin.FarmResponse,
Output from Get-ACSFarm can be piped to this cmdlet.

## OUTPUTS

### Microsoft.AzureStack.Commands.StorageAdmin.StorageAccountResponse

## NOTES

## RELATED LINKS

[Sync-ACSStorageAccount](xref:ResourceManager/AzureRM.AzureStackStorage/v0.10.0/Sync-ACSStorageAccount.md)

[Undo-ACSStorageAccountDeletion](xref:ResourceManager/AzureRM.AzureStackStorage/v0.10.0/Undo-ACSStorageAccountDeletion.md)

[Get-ACSFarm](xref:ResourceManager/AzureRM.AzureStackStorage/v0.10.0/Get-ACSFarm.md)


