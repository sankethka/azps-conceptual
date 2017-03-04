---
external help file: Microsoft.Azure.Commands.ApiManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 99DD3C5A-A2C1-4962-BAFC-6C34355BA639
updated_at: 1/11/2017 10:43 PM
ms.date: 1/11/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v2.1.0/Restore-AzureRmApiManagement.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v2.1.0/Restore-AzureRmApiManagement.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/2d4df6f2abe31d9c0d1b6b5e609631a0b750350f/azureps-cmdlets-docs/ResourceManager/AzureRM.ApiManagement/v2.1.0/Restore-AzureRmApiManagement.md
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

# Restore-AzureRmApiManagement

## SYNOPSIS
Restores an API Management Service from the specified Azure storage blob.

## SYNTAX

```
Restore-AzureRmApiManagement -ResourceGroupName <String> -Name <String> [-StorageContext] <AzureStorageContext>
 -SourceContainerName <String> -SourceBlobName <String> [-PassThru] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Restore-AzureRmApiManagement** cmdlet restores an API Management Service from the specified backup residing in an Azurestorage blob.

## EXAMPLES

### Example 1: Restore an API Management service
```
PS C:\> Restore-AzureRmApiManagement -ResourceGroupName "ContosoGroup" -Name "RestoredContosoApi" -StorageContext $StorageContext -SourceContainerName "ContosoBackups" -SourceBlobName "ContosoBackup.apimbackup"
```

This command restores an API Management service from Azure storage blob.

## PARAMETERS

### -ResourceGroupName
Specifies the name of resource group under which API Management exists.

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

### -Name
Specifies the name of the API Management instance that this cmdlet restores.

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

### -StorageContext
Specifies the storage connection context.

```yaml
Type: AzureStorageContext
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SourceContainerName
Specifies the name of the Azure storage backup source container.

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

### -SourceBlobName
Specifies the name of the Azure storage backup source blob.

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

### -PassThru
Returns an object representing the item with which you are working.
By default, this cmdlet does not generate any output.

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

[Backup-AzureRmApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v2.1.0/Backup-AzureRmApiManagement.md)

[Get-AzureRmApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v2.1.0/Get-AzureRmApiManagement.md)

[New-AzureRmApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v2.1.0/New-AzureRmApiManagement.md)

[Remove-AzureRmApiManagement](xref:ResourceManager/AzureRM.ApiManagement/v2.1.0/Remove-AzureRmApiManagement.md)


