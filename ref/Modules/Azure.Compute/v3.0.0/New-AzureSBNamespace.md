---
external help file: Microsoft.WindowsAzure.Commands.dll-Help.xml
online version: 
schema: 2.0.0
ms.assetid: 4EB93EBF-D58D-4F08-AB45-D288EA27A8EA
updated_at: 1/12/2017 6:01 PM
ms.date: 1/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.0.0/New-AzureSBNamespace.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell/blob/master/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.0.0/New-AzureSBNamespace.md
gitcommit: https://github.com/Azure/azure-docs-powershell/blob/a72a97ed452f82624cbe43d1ad240418d55beae2/azureps-cmdlets-docs/ServiceManagement/Azure.Compute/v3.0.0/New-AzureSBNamespace.md
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

# New-AzureSBNamespace

## SYNOPSIS
Creates a namespace.

## SYNTAX

```
New-AzureSBNamespace [-Name] <String> [[-Location] <String>] [[-CreateACSNamespace] <Boolean>]
 [-NamespaceType] <NamespaceType> [-Profile <AzureSMProfile>] [<CommonParameters>]
```

## DESCRIPTION
This topic describes the cmdlet in the 0.8.10 version of the Microsoft Azure PowerShell module.
To get the version of the module you're using, in the Azure PowerShell console, type `(Get-Module -Name Azure).Version`.

The **New-AzureSBNamespace** cmdlet creates a service namespace for use with Service Bus in Azure.

## EXAMPLES

### Example 1: Create a service namespace
```
PS C:\> New-AzureSBNamespace -Name myNameSpace -Location East US PS C:\> New-AzureSBNamespace myNameSpace 'East US'
```

The following examples create a service namespace for use with Service Bus in Azure.
Both examples include the required parameter values, but only the first includes the parameter names.
The second example can be used because both parameters are positional and their values are given in the required order.

## PARAMETERS

### -Name
Specifies a name for the new namespace.

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
Specifies a region for the new namespace.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: 2
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -CreateACSNamespace
Specifies whether to create an associated ACS namespace in addition to the service namespace.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases: 

Required: False
Position: 3
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -NamespaceType
Specify a whether to use the namespace for Messaging or Notification Hubs.

```yaml
Type: NamespaceType
Parameter Sets: (All)
Aliases: 

Required: True
Position: 4
Default value: None
Accept pipeline input: True (ByPropertyName)
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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Remove-AzureSBNamespace](xref:ServiceManagement/Azure.Compute/v3.0.0/Remove-AzureSBNamespace.md)


