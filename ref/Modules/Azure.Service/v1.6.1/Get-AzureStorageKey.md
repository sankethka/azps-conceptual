---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 7C454ED2-64DB-4E09-802B-B4B7C7A2207C
updated_at: 11/11/2016 11:03 PM
ms.date: 11/11/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v1.6.1/Get-AzureStorageKey.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v1.6.1/Get-AzureStorageKey.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/79eeb985ea480979357fb4695832a0c3d29a48bf/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v1.6.1/Get-AzureStorageKey.md
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

# Get-AzureStorageKey

## SYNOPSIS
Returns the primary and secondary storage account keys for an Azure storage account.

## SYNTAX

```
Get-AzureStorageKey [-StorageAccountName] <String> [-Profile <AzureSMProfile>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-AzureStorageKey** cmdlet returns an object with the Azure Storage account name, the primary account key, and the secondary account key of the specified Azure storage account as properties.

## EXAMPLES

### Example 1: Get an object that contains primary and secondary storage keys
```
PS C:\>Get-AzureStorageKey -StorageAccountName "ContosoStore01"
```

This command gets an object with the primary and secondary storage keys for the ContosoStore01 storage account.

### Example 2: Get the primary storage account key and store it in a variable
```
PS C:\>$ContosoStoreKey = (Get-AzureStorageKey -StorageAccountName "ContosoStore01").Primary
```

This command puts the primary storage account key for the ContosoStore01 storage account in the $ContosoStoreKey variable.

## PARAMETERS

### -StorageAccountName
Specifies the storage account name.

```yaml
Type: String
Parameter Sets: (All)
Aliases: ServiceName

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

## NOTES
* To get help with Node.js, use the `help node-dev` command. For help with PHP extensions, use the `help php-dev` command.

## RELATED LINKS

[Get-AzureStorageAccount](xref:ServiceManagement/Azure.Service/v1.6.1/Get-AzureStorageAccount.md)

[New-AzureStorageAccount](xref:ServiceManagement/Azure.Service/v1.6.1/New-AzureStorageAccount.md)

[New-AzureStorageKey](xref:ServiceManagement/Azure.Service/v1.6.1/New-AzureStorageKey.md)

[Remove-AzureStorageAccount](xref:ServiceManagement/Azure.Service/v1.6.1/Remove-AzureStorageAccount.md)

[Set-AzureStorageAccount](xref:ServiceManagement/Azure.Service/v1.6.1/Set-AzureStorageAccount.md)


