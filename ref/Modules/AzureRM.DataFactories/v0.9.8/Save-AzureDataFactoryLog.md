---
external help file: Microsoft.Azure.Commands.DataFactories.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: F88255A8-3FD9-4980-9F31-85DCC9B83A6C
updated_at: 10/31/2016 9:17 PM
ms.date: 10/31/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DataFactories/v0.9.8/Save-AzureDataFactoryLog.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DataFactories/v0.9.8/Save-AzureDataFactoryLog.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/70d99f0e924efe152eb73454f7898f92d5a5db64/azureps-cmdlets-docs/ResourceManager/AzureRM.DataFactories/v0.9.8/Save-AzureDataFactoryLog.md
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

# Save-AzureDataFactoryLog

## SYNOPSIS
Downloads log files from HDInsight processing.

## SYNTAX

### ByFactoryName (Default)
```
Save-AzureDataFactoryLog [-DataFactoryName] <String> [-Id] <String> [-DownloadLogs] [[-Output] <String>]
 [-ResourceGroupName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

### ByFactoryObject
```
Save-AzureDataFactoryLog [-DataFactory] <PSDataFactory> [-Id] <String> [-DownloadLogs] [[-Output] <String>]
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
You must be in AzureResourceManager mode to run Azure Data Factory cmdlets.
To switch to AzureResourceManager mode, type `Switch-AzureMode AzureResourceManager`.

The **Save-AzureDataFactoryLog** cmdlet downloads log files associated with Azure HDInsight processing of Pig or Hive projects or for custom activities to your local hard drive.
You first run the **Get-AzureDataFactoryRun** cmdlet to get an ID for an activity run for a data slice, and then use that ID to retrieve log files from the binary large object (BLOB) storage associated with the HDInsight cluster.

If you do not specify -DownloadLogs parameter, the cmdlet just returns the location of log files.

If you specify -DownloadLogs parameter without specifying an output directory (-Output parameter), the log files are downloaded to the default Documents folder.

If you specify -DownloadLogs parameter along with an output folder (-Output), the log files are downloaded to the specified folder.

## EXAMPLES

### Example 1: Save log files to a specific folder
```
PS C:\>Save-AzureDataFactoryLog -ResourceGroupName "ADF" -DataFactoryName "LogProcessingFactory" -Id "841b77c9-d56c-48d1-99a3-8c16c3e77d39" -DownloadLogs -Output "C:\Test"
```

This command saves log files for the activity run with the ID of 841b77c9-d56c-48d1-99a3-8c16c3e77d39 where the activity belongs to a pipeline in the data factory named LogProcessingFactory in the resource group named ADF.
The log files are saved to the C:\Test folder.

### Example 2: Save log files to default Documents folder
```
PS C:\>Save-AzureDataFactoryLog -ResourceGroupName "ADF" -DataFactoryName "LogProcessingFactory" -Id "841b77c9-d56c-48d1-99a3-8c16c3e77d39" -DownloadLogs
```

This command saves log files to Documents folder (default).

### Example 3: Get the location of log files
```
PS C:\>Save-AzureDataFactoryLog -ResourceGroupName "ADF" -DataFactoryName "LogProcessingFactory" -Id "841b77c9-d56c-48d1-99a3-8c16c3e77d39"
```

This command returns the location of log files.
Note that -DownloadLogs parameter is not specified.

## PARAMETERS

### -DataFactory

```yaml
Type: PSDataFactory
Parameter Sets: ByFactoryObject
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DataFactoryName
Specifies the name of a data factory.
This cmdlet downloads log files for the data factory that this parameter specifies.

```yaml
Type: String
Parameter Sets: ByFactoryName
Aliases: 

Required: True
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -DownloadLogs
Indicates that this cmdlet downloads log files to your local computer.
If Ouptut folder is not specified, files are saved to Documents folder under a subfolder.

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

### -Id
Specifies the ID of the activity run for the data slice.
Use the **Get-AzureDataFactoryRun** cmdlet to get an ID.

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

### -Output
Specifies the output folder in which the downloaded log files are saved.

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

### -ResourceGroupName
Specifies the name of an Azure resource group.
This cmdlet creates a data factory that belongs to the group that this parameter specifies.

```yaml
Type: String
Parameter Sets: ByFactoryName
Aliases: 

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Profile

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

[Get-AzureDataFactoryRun](xref:ResourceManager/AzureRM.DataFactories/v0.9.8/Get-AzureDataFactoryRun.md)

[Get-AzureDataFactoryPipeline](xref:ResourceManager/AzureRM.DataFactories/v0.9.8/Get-AzureDataFactoryPipeline.md)

[New-AzureDataFactoryPipeline](xref:ResourceManager/AzureRM.DataFactories/v0.9.8/New-AzureDataFactoryPipeline.md)

[Remove-AzureDataFactoryPipeline](xref:ResourceManager/AzureRM.DataFactories/v0.9.8/Remove-AzureDataFactoryPipeline.md)

[Set-AzureDataFactoryPipelineActivePeriod](xref:ResourceManager/AzureRM.DataFactories/v0.9.8/Set-AzureDataFactoryPipelineActivePeriod.md)

[Suspend-AzureDataFactoryPipeline](xref:ResourceManager/AzureRM.DataFactories/v0.9.8/Suspend-AzureDataFactoryPipeline.md)


