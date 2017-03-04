---
external help file: Microsoft.Azure.Commands.DataFactories.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 474A5345-83D2-40A4-B12F-83ED8B5DB410
updated_at: 11/1/2016 10:24 PM
ms.date: 11/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DataFactories/v0.9.8/New-AzureDataFactoryDataset.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DataFactories/v0.9.8/New-AzureDataFactoryDataset.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/f59f3ef60bc592383812213e69fd77ba950759ed/azureps-cmdlets-docs/ResourceManager/AzureRM.DataFactories/v0.9.8/New-AzureDataFactoryDataset.md
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

# New-AzureDataFactoryDataset

## SYNOPSIS
Creates a dataset in the specified Azure data factory.

## SYNTAX

### ByFactoryName (Default)
```
New-AzureDataFactoryDataset [-DataFactoryName] <String> [[-Name] <String>] [-File] <String> [-Force]
 [-ResourceGroupName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

### ByFactoryObject
```
New-AzureDataFactoryDataset [-DataFactory] <PSDataFactory> [[-Name] <String>] [-File] <String> [-Force]
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureDataFactoryDataset** cmdlet creates a dataset in the specified Azure data factory.
If a dataset with the same name already exists, you will be asked to confirm whether to overwrite the existing dataset unless you use the -force flag.

Here are the sequence of operations you perform: 

- Create a data factory. 
- Create linked services. 
- Create datasets. 
- Create a pipeline.See Data Factory - Naming Ruleshttps://msdn.microsoft.com/library/azure/dn835027.aspx topic.

## EXAMPLES

### Example 1: Create a dataset in an Azure data factory
```
PS C:\>New-AzureDataFactoryDataset -ResourceGroupName "ADF" -Name "DAWikipediaClickEvents" -DataFactoryName "WikiADF" -File "c:\\samples\\WikiSample\\DA_WikipediaClickEvents.json"
```

This command creates a dataset DA_WikipediaClickEvents in the Azure data factory WikiADF based on information in the DAWikipediaClickEvents.json file.

### Example 2: Create a dataset in an Azure data factory based on information in a JSON file
```
PS C:\>$Dataset = New-AzureDataFactoryDataset -ResourceGroupName "ADF" -Name "DAWikipediaClickEvents" -DataFactoryName "WikiADF" -File "c:\\samples\\WikiSample\\DA_WikipediaClickEvents.json"
```

This command creates a dataset DA_WikipediaClickEvents in the Azure data factory WikiADF based on information in the DAWikipediaClickEvents.json file and assigns the output to a variable named $Dataset.

## PARAMETERS

### -DataFactory
Specifies a Data Factory object.
This cmdlet creates a dataset in the data factory that this parameter specifies.

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
Specifies the name of the data factory.

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

### -File
Specifies the path including the name of the JSON file that contains the description of the dataset.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: 4
Default value: None
Accept pipeline input: False
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

### -Name
Specifies the name of the dataset.

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

### -ResourceGroupName
Specifies the name of the resource group.

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

[Get-AzureDataFactoryDataset](xref:ResourceManager/AzureRM.DataFactories/v0.9.8/Get-AzureDataFactoryDataset.md)

[Remove-AzureDataFactoryDataset](xref:ResourceManager/AzureRM.DataFactories/v0.9.8/Remove-AzureDataFactoryDataset.md)


