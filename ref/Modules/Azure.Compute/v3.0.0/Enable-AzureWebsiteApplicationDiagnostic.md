---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: C364F751-3F48-4B69-9A7B-3EC48B255DC1
updated_at: 1/12/2017 6:01 PM
ms.date: 1/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.0.0/Enable-AzureWebsiteApplicationDiagnostic.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.0.0/Enable-AzureWebsiteApplicationDiagnostic.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/a72a97ed452f82624cbe43d1ad240418d55beae2/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.0.0/Enable-AzureWebsiteApplicationDiagnostic.md
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

# Enable-AzureWebsiteApplicationDiagnostic

## SYNOPSIS
Enables application diagnostics on an Azure website.

## SYNTAX

### FileParameterSet
```
Enable-AzureWebsiteApplicationDiagnostic [-PassThru] [-File] [-LogLevel] <LogEntryType> [[-Name] <String>]
 [[-Slot] <String>] [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### TableStorageParameterSet
```
Enable-AzureWebsiteApplicationDiagnostic [-PassThru] [-TableStorage] [-LogLevel] <LogEntryType>
 [[-StorageAccountName] <String>] [-StorageTableName <String>] [[-Name] <String>] [[-Slot] <String>]
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

### BlobStorageParameterSet
```
Enable-AzureWebsiteApplicationDiagnostic [-PassThru] [-BlobStorage] [-LogLevel] <LogEntryType>
 [[-StorageAccountName] <String>] [-StorageBlobContainerName <String>] [[-Name] <String>] [[-Slot] <String>]
 [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
This topic describes the cmdlet in the 0.8.10 version of the Microsoft Azure PowerShell module.
To get the version of the module you're using, in the Azure PowerShell console, type `(Get-Module -Name Azure).Version`.

Enables application diagnostics on an Azure website, and allows you to configure storage of logs on a file system or on Azure storage.

## EXAMPLES

### Example 1: Enable diagnostics using file system
```
PS C:\> Enable-AzureWebsiteApplicationDiagnostic -Name MyWebsite -File -LogLevel Verbose
```

This example enables application logging on file system with verbose level.

### Example 2: Enable logging using Azure Storage
```
PS C:\> Enable-AzureWebsiteApplicationDiagnostic -Name MyWebsite -Storage -LogLevel Information -StorageAccountName myaccount
```

This example enables application logging using storage account named myaccount with logging level set to Information.

## PARAMETERS

### -Name
Specifies the name of the Azure website.

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

### -File
Specifies that you want to use a file system to store the log files.

```yaml
Type: SwitchParameter
Parameter Sets: FileParameterSet
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageAccountName
The storage account to use for storing the logs.
If not specified, the CurrentStorageAccount is used.

```yaml
Type: String
Parameter Sets: TableStorageParameterSet, BlobStorageParameterSet
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LogLevel
The log level to store.
The acceptable values for this parameter are:

- Error
- Warning
- Information
- Verbose

```yaml
Type: LogEntryType
Parameter Sets: (All)
Aliases: 

Required: True
Position: 3
Default value: None
Accept pipeline input: False
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
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Slot
Specifies the name of the slot.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 5
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -BlobStorage

```yaml
Type: SwitchParameter
Parameter Sets: BlobStorageParameterSet
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Profile
Specifies the Azure profile from which this cmdlet reads.
If you do not specify a profile, this cmdlet reads from the local default profile.

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

### -StorageBlobContainerName

```yaml
Type: String
Parameter Sets: BlobStorageParameterSet
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -StorageTableName

```yaml
Type: String
Parameter Sets: TableStorageParameterSet
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TableStorage

```yaml
Type: SwitchParameter
Parameter Sets: TableStorageParameterSet
Aliases: 

Required: True
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

[Disable-AzureWebsiteApplicationDiagnostic](xref:ServiceManagement/Azure.Compute/v3.0.0/Disable-AzureWebsiteApplicationDiagnostic.md)

[Get-AzureWebsite](xref:ServiceManagement/Azure.Compute/v3.0.0/Get-AzureWebsite.md)

[New-AzureWebsite](xref:ServiceManagement/Azure.Compute/v3.0.0/New-AzureWebsite.md)

[Remove-AzureWebsite](xref:ServiceManagement/Azure.Compute/v3.0.0/Remove-AzureWebsite.md)

[Start-AzureWebsite](xref:ServiceManagement/Azure.Compute/v3.0.0/Start-AzureWebsite.md)


