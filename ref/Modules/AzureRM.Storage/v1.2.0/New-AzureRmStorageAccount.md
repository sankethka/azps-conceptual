---
external help file: Microsoft.Azure.Commands.Management.Storage.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 9E7E963A-22FE-47BD-A9EB-7757C52A3624
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Storage/v1.2.0/New-AzureRmStorageAccount.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.Storage/v1.2.0/New-AzureRmStorageAccount.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.Storage/v1.2.0/New-AzureRmStorageAccount.md
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

# New-AzureRmStorageAccount

## SYNOPSIS
Creates a Storage account.

## SYNTAX

```
New-AzureRmStorageAccount [-ResourceGroupName] <String> [-Name] <String> [-SkuName] <String>
 [-Location] <String> [[-Kind] <String>] [[-AccessTier] <String>] [[-CustomDomainName] <String>]
 [[-UseSubDomain] <Boolean>] [[-EnableEncryptionService] <EncryptionSupportServiceEnum>] [[-Tag] <Hashtable[]>]
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmStorageAccount** cmdlet creates an Azure Storage account.

## EXAMPLES

### Example 1: Create a Storage account
```
PS C:\>New-AzureRmStorageAccount -ResourceGroupName "MyResourceGroup" -AccountName "MyStorageAccount" -Location "US West" -Type "Standard_GRS"
```

This command creates a Storage account for the resource group name MyResourceGroup.

### Example 2: Create a bBlob Storage account that uses Storage Service encryptionB
```
PS C:\>New-AzureRmStorageAccount -ResourceGroupName "MyResourceGroup" -AccountName "MyStorageAccount" -Location "US West" -SkuName "Standard_GRS" -EnableEncryptionService Blob -Kind "BlobStorage" -AccessTier Hot
```

This command creates a Blob Storage account that uses the hot access type.
The account has enabled Storage Service encryption.

## PARAMETERS

### -ResourceGroupName
Specifies the name of the resource group in which to add the Storage account.

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

### -Name
Specifies the name of the Storage account to create.

```yaml
Type: String
Parameter Sets: (All)
Aliases: StorageAccountName, AccountName

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -SkuName
Specifies the SKU name of the storage account that this cmdlet creates.
psdx_paramvalues

- Standard_LRS.
Locally-redundant storage. 
- Standard_ZRS.
Zone-redundant storage.
- Standard_GRS.
Geo-redundant storage. 
- Standard_RAGRS.
Read access geo-redundant storage. 
- Premium_LRS.
Premium locally-redundant storage.

```yaml
Type: String
Parameter Sets: (All)
Aliases: StorageAccountType, AccountType, Type

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Kind
Specifies the kind of Storage account that this cmdlet creates.
psdx_paramvalues

- Storage.
General purpose storage account that supports storage of Blobs, Tables, Queues, Files and Disks.
 
- BlobStorage.
Blob storage account which supports storage of Blobs only.
 

The default value is Storage.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AccessTier
Specifies the access tier of the Storage account that this cmdlet creates.
psdx_paramvalues Hot and Cool.

If you specify a value of BlobStorage for the *Kind* parameter, you must specify a value for the *AccessTier* parameter.

If you specify a value of Storage for this *Kind* parameter, do not specify the *AccessTier* parameter.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Location
Specifies the location of the Storage account to create.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 5
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -CustomDomainName
Specifies the name of the custom domain of the Storage account.
The default value is Storage.

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

### -UseSubDomain
Indicates whether to enable indirect CName validation.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnableEncryptionService
Indicates whether this cmdlet enables Storage Service encryption on the Storage Service.
Currently, only the Blob Service is supported.

```yaml
Type: EncryptionSupportServiceEnum
Parameter Sets: (All)
Aliases: 

Required: False
Position: 8
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tag
If you specify a value of BlobStorage for the *Kind* parameter, you must specify a value for the *AccessTier* parameter.

If you specify a value of Storage for this *Kind* parameter, do not specify the *AccessTier* parameter.

```yaml
Type: Hashtable[]
Parameter Sets: (All)
Aliases: Tags

Required: False
Position: 9
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

## RELATED LINKS

[Get-AzureRmStorageAccount](xref:ResourceManager/AzureRM.Storage/v1.2.0/Get-AzureRmStorageAccount.md)

[Remove-AzureRmStorageAccount](xref:ResourceManager/AzureRM.Storage/v1.2.0/Remove-AzureRmStorageAccount.md)

[Set-AzureRmStorageAccount](xref:ResourceManager/AzureRM.Storage/v1.2.0/Set-AzureRmStorageAccount.md)


