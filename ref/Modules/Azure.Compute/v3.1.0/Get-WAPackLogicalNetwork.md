---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
ms.assetid: 7D51BE56-C0A2-4A32-BB7F-8FA9CC67F8F9
online version: 
schema: 2.0.0
updated_at: 1/5/2017 11:58 PM
ms.date: 1/5/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.1.0/Get-WAPackLogicalNetwork.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.1.0/Get-WAPackLogicalNetwork.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/708031d6bfe230ef535b9f1da2a6bf5f01dca5a2/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.1.0/Get-WAPackLogicalNetwork.md
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

# Get-WAPackLogicalNetwork

## SYNOPSIS
Gets logical network objects.

## SYNTAX

### Empty (Default)
```
Get-WAPackLogicalNetwork [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

### FromName
```
Get-WAPackLogicalNetwork [[-Name] <String>] [-Profile <AzureSMProfile>] [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
These topics are deprecated and will be removed in the future.
For the updated topics, see [Azure WAPack Cmdlets](http://msdn.microsoft.com/library/dn776450.aspx) (http://msdn.microsoft.com/library/dn776450.aspx).
This topic describes the cmdlet in the 0.8.1 version of the Microsoft Azure PowerShell module.
To find out the version of the module you're using, from the Azure PowerShell console, type `(Get-Module -Name Azure).Version`.

The **Get-WAPackLogicalNetwork** cmdlet gets logical network objects.

## EXAMPLES

### Example 1: Get a logical network by using a name
```
PS C:\> Get-WAPackLogicalNetwork -Name "ContosoLogicalNetwork01"
```

This command gets a logical network named ContosoLogicalNetwork01.

### Example 2: Get all logical networks
```
PS C:\> Get-WAPackLogicalNetwork
```

This command gets all logical networks.

## PARAMETERS

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

### -Name
Specifies the name of a logical network.

```yaml
Type: String
Parameter Sets: FromName
Aliases: 

Required: False
Position: 0
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

