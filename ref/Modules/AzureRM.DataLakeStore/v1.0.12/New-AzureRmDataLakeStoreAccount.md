---
external help file: Microsoft.Azure.Commands.DataLakeStore.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 1E2DAAE8-EB5B-490F-AB29-28B588D1141B
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DataLakeStore/v1.0.12/New-AzureRmDataLakeStoreAccount.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DataLakeStore/v1.0.12/New-AzureRmDataLakeStoreAccount.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.DataLakeStore/v1.0.12/New-AzureRmDataLakeStoreAccount.md
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

# New-AzureRmDataLakeStoreAccount

## SYNOPSIS
Creates a new Data Lake Store account.

## SYNTAX

```
New-AzureRmDataLakeStoreAccount [-ResourceGroupName] <String> [-Name] <String> [-Location] <String>
 [[-DefaultGroup] <String>] [[-Tags] <Hashtable[]>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureRmDataLakeStoreAccount** cmdlet creates a new Data Lake Store account.

## EXAMPLES

### Example 1: Create an account
```
PS C:\>New-AzureRmDataLakeStoreAccount -Name "ContosoADL" -ResourceGroupName "ContosoOrg" -Location "East US 2"
```

This command creates a Data Lake Store account named ContosoADL for the East US 2 location.

## PARAMETERS

### -ResourceGroupName
Specifies the name of the resource group that contains the account.

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
Specifies the name of the account to create.

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

### -Location
Specifies the location to use for the account.
psdx_paramvalues

- East US 2

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DefaultGroup
Specifies the object ID of the Azurepn_Active_Directory group to use as the default group owner for new files and folders.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Tags
Specifies tags as key-value pairs.
You can use tags to identify a Data Lake Store account from other Azure resources.

```yaml
Type: Hashtable[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: 4
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

## NOTES

## RELATED LINKS

[Get-AzureRmDataLakeStoreAccount](xref:ResourceManager/AzureRM.DataLakeStore/v1.0.12/Get-AzureRmDataLakeStoreAccount.md)

[Remove-AzureRmDataLakeStoreAccount](xref:ResourceManager/AzureRM.DataLakeStore/v1.0.12/Remove-AzureRmDataLakeStoreAccount.md)

[Set-AzureRmDataLakeStoreAccount](xref:ResourceManager/AzureRM.DataLakeStore/v1.0.12/Set-AzureRmDataLakeStoreAccount.md)

[Test-AzureRmDataLakeStoreAccount](xref:ResourceManager/AzureRM.DataLakeStore/v1.0.12/Test-AzureRmDataLakeStoreAccount.md)


