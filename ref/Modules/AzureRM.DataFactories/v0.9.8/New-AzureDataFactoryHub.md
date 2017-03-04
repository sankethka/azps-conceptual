---
external help file: Microsoft.Azure.Commands.DataFactories.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: BE24729F-A92C-4098-AF76-1BCDBA1D7B78
updated_at: 10/31/2016 9:17 PM
ms.date: 10/31/2016
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DataFactories/v0.9.8/New-AzureDataFactoryHub.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ResourceManager/AzureRM.DataFactories/v0.9.8/New-AzureDataFactoryHub.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/70d99f0e924efe152eb73454f7898f92d5a5db64/azureps-cmdlets-docs/ResourceManager/AzureRM.DataFactories/v0.9.8/New-AzureDataFactoryHub.md
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

# New-AzureDataFactoryHub

## SYNOPSIS
Creates a hub for Data Factory.

## SYNTAX

### ByFactoryName (Default)
```
New-AzureDataFactoryHub [-Name] <String> [-File] <String> [-Force] [-DataFactoryName] <String>
 [-ResourceGroupName] <String> [-Profile <AzureProfile>] [<CommonParameters>]
```

### ByFactoryObject
```
New-AzureDataFactoryHub [-Name] <String> [-File] <String> [-Force] [-DataFactory] <PSDataFactory>
 [-Profile <AzureProfile>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureDataFactoryHub** cmdlet creates a hub for Azure Data Factory in the specified Azure resource group and in the specified data factory with the specified file definition.
After you create the hub, you can use it to store and manage linked services in a group, and you can add pipelines to the hub.

You must be in AzureResourceManager mode to run Azure Data Factory cmdlets.
To switch to AzureResourceManager mode, type `Switch-AzureMode AzureResourceManager`.

## EXAMPLES

### Example 1: Create a hub
```
PS C:\>New-AzureDataFactoryHub -ResourceGroupName "ADFResourceGroup" -DataFactoryName "ADFDataFactory" -Name "ContosoDataHub" -File "C:\Hub.json"
```

This command creates a hub named ContosoDataHub in the resource group ADFResourceGroup and the data factory named ADFDataFactory.

## PARAMETERS

### -DataFactory
Specifies a **PSDataFactory** object.
This cmdlet creates a hub for the data factory that this parameter specifies.

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
This cmdlet creates a hub for the data factory that this parameter specifies.

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
Specifies the full path of the JavaScript Object Notation (JSON) file that contains the description of the hub.

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
Indicates that this cmdlet replaces an existing hub without prompting you for confirmation.

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
Specifies the name of the hub to create.

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

### -ResourceGroupName
Specifies the name of an Azure resource group.
This cmdlet creates a hub that belongs to the group that this parameter specifies.

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

[Get-AzureDataFactoryHub](xref:ResourceManager/AzureRM.DataFactories/v0.9.8/Get-AzureDataFactoryHub.md)

[Remove-AzureDataFactoryHub](xref:ResourceManager/AzureRM.DataFactories/v0.9.8/Remove-AzureDataFactoryHub.md)


