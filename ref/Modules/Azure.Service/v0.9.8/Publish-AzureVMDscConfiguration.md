---
external help file: Microsoft.WindowsAzure.Commands.ServiceManagement.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 8CA6F6D8-54E1-45D5-9EE5-EF4AA8F703D7
updated_at: 11/22/2016 8:52 PM
ms.date: 11/22/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Publish-AzureVMDscConfiguration.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Publish-AzureVMDscConfiguration.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/0cedc8f73bc96cf5ac4c69144e17b3de601fd3cc/azureps-cmdlets-docs/ServiceManagement/Azure.Service/v0.9.8/Publish-AzureVMDscConfiguration.md
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

# Publish-AzureVMDscConfiguration

## SYNOPSIS
Publishes a desired state configuration script to Azure blob storage.

## SYNTAX

### UploadArchive (Default)
```
Publish-AzureVMDscConfiguration [-ConfigurationPath] <String> [-ContainerName <String>] [-Force]
 [-StorageContext <AzureStorageContext>] [-StorageEndpointSuffix <String>] [-SkipDependencyDetection]
 [-ConfigurationDataPath <String>] [-AdditionalPath <String[]>] [-PassThru] [-Profile <AzureProfile>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### CreateArchive
```
Publish-AzureVMDscConfiguration [-ConfigurationPath] <String> [-Force] [-ConfigurationArchivePath <String>]
 [-SkipDependencyDetection] [-ConfigurationDataPath <String>] [-AdditionalPath <String[]>] [-PassThru]
 [-Profile <AzureProfile>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
The **Publish-AzureVMDscConfiguration** cmdlet publishes a desired state configuration script to Azure blob storage, which later can be applied to Azure virtual machines using the Set-AzureVMDscExtension cmdlet.

## EXAMPLES

### Example 1: Publish a state configuration script to blob storage
```
PS C:\>Publish-AzureVMDscConfiguration .\MyConfiguration.ps1
```

This command creates a .zip package for the given script and any dependent resource modules and uploads it to Azure storage.

### Example 2: Publish a state configuration script to a local file
```
PS C:\>Publish-AzureVMDscConfiguration .\MyConfiguration.ps1 -ConfigurationArchivePath .\MyConfiguration.ps1.zip
```

This command creates a .zip package for the given script and any dependent resource modules and stores it in the local file .\MyConfiguration.ps1.zip.

## PARAMETERS

### -AdditionalPath
Path to a file or a directory to include in  the configuration archive

```yaml
Type: String[]
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ConfigurationArchivePath
Specifies the path of a local .zip file that this cmdlet writes the configuration archive.
The configuration script is not uploaded to Azure blob storage if you use this parameter.

```yaml
Type: String
Parameter Sets: CreateArchive
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ConfigurationDataPath
Path to a .psd1 file that specifies the data for the Configuration

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -ConfigurationPath
Specifies the path of a file that contains one or more configurations.
The file can be a Windows PowerShell script (.ps1 file), module (.psm1 file), or an archive (.zip file) that contains a set of Windows PowerShell modules, with each module in a separate directory.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ContainerName
Specifies the name of the Azure storage container the configuration is uploaded to.

```yaml
Type: String
Parameter Sets: UploadArchive
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Force
Forces the command to run without asking for user confirmation.

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

### -SkipDependencyDetection
Excludes DSC resource dependencies from the configuration archive.

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

### -StorageContext
Specifies the Azure storage context that provides the security settings used to upload the configuration script to the container specified by the *ContainerName* parameter.
This context provides write access to the container.

```yaml
Type: AzureStorageContext
Parameter Sets: UploadArchive
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -StorageEndpointSuffix
Specifies the suffix for the storage end-point, for instance, core.contoso.net

```yaml
Type: String
Parameter Sets: UploadArchive
Aliases: 

Required: False
Position: Named
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

### -PassThru
Outputs the blob url for configuration archive path

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Set-AzureVMDscExtension](xref:ServiceManagement/Azure.Service/v0.9.8/Set-AzureVMDscExtension.md)


