---
external help file: Microsoft.AzureStack.Commands.StorageAdmin.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 47E2E555-E899-419F-A7E1-9CB5B8DE123B
updated_at: 11/15/2016 8:02 AM
ms.date: 11/15/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackStorage/v0.9.9.1/Undo-ACSStorageAccountDeletion.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackStorage/v0.9.9.1/Undo-ACSStorageAccountDeletion.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/16dcbb293b24fa241864048736125047ff62e2ea/azureps-cmdlets-docs/ResourceManager/AzureRM.AzureStackStorage/v0.9.9.1/Undo-ACSStorageAccountDeletion.md
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

# Undo-ACSStorageAccountDeletion

## SYNOPSIS
Performs an undelete operation on a tenant storage account.

## SYNTAX

```
Undo-ACSStorageAccountDeletion [-FarmName] <String> [-AccountId] <Int64> [[-NewAccountName] <String>]
 [[-StorageAccountApiVersion] <String>] [[-SubscriptionId] <String>] [[-Token] <String>] [[-AdminUri] <Uri>]
 [-ResourceGroupName] <String> [-SkipCertificateValidation] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Undo-ACSStorageAccountDeletion** cmdlet performs an undelete operation on a tenant storage account.
Service administrators can use this cmdlet to recover a storage account deleted by a tenant administrator.

## EXAMPLES

### Example 1: Perform an undelete operation on a tenant storage account
```
PS C:\>$Global:AdminUri = "https://srp.yourdomainFQDN:30020"
PS C:\> $SubscriptId = "SubID"
PS C:\> $Token = "Token"
PS C:\> $ResourceGroup = "System" 
PS C:\> $Farm = Get-ACSFarm -SubscriptionId $SubscriptId -Token $Token -AdminUri $AdminUri -SkipCertificateValidation -ResourceGroupName $ResourceGroup
PS C:\> Undo-ACSStorageAccountDeletion -SubscriptionId $SubscriptId -Token $Token -AdminUri $AdminUri -ResourceGroupName $ResourceGroup -SkipCertificateValidation -FarmName $Farm.Name -AccountId 9
```

The first command gets the specified ACS Farm and stores the result in the variable named $Farm.
The final command then performs an undelete operation on the storage account specified by AccountId.

## PARAMETERS

### -FarmName
Specifies the name of the Azure Consistent Storage (ACS) farm.

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

### -AccountId
Specifies the account ID of a tenant storage account.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases: 

Required: True
Position: 5
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -NewAccountName
Specifies the new name of the storage account.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageAccountApiVersion
Specifies the API version of the storage account.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 7
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
Specifies the name of the resource group from which this cmdlet gets the ACS storage account.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.AzureStack.Commands.StorageAdmin.FarmResponse,Microsoft.AzureStack.Commands.StorageAdmin.StorageAccountResponse,
Output from Get-ACSFarm and Get-ACSStorageAccount can be piped to this cmdlet's input.

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-ACSStorageAccount](xref:ResourceManager/AzureRM.AzureStackStorage/v0.9.9.1/Get-ACSStorageAccount.md)

[Sync-ACSStorageAccount](xref:ResourceManager/AzureRM.AzureStackStorage/v0.9.9.1/Sync-ACSStorageAccount.md)

[Get-ACSFarm](xref:ResourceManager/AzureRM.AzureStackStorage/v0.9.9.1/Get-ACSFarm.md)


