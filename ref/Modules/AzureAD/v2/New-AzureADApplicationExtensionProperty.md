---
external help file: Microsoft.Open.AzureAD16.Graph.PowerShell.dll-Help.xml
ms.assetid: B15F90ED-2F60-4401-89A2-89E3DD072519
online version: 
schema: 2.0.0
updated_at: 12/1/2016 5:36 PM
ms.date: 12/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/New-AzureADApplicationExtensionProperty.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/New-AzureADApplicationExtensionProperty.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/8f658f99458e2c236d5f4be363030b6f24cacc4c/Azure%20AD%20Cmdlets/AzureAD/v2/New-AzureADApplicationExtensionProperty.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# New-AzureADApplicationExtensionProperty

## SYNOPSIS
Creates an application extension property.

## SYNTAX

```
New-AzureADApplicationExtensionProperty -ObjectId <String> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [-DataType <String>] [-Name <String>]
 [-TargetObjects <System.Collections.Generic.List`1[System.String]>] [<CommonParameters>]
```

## DESCRIPTION
The **New-AzureADApplicationExtensionProperty** cmdlet creates an application extension property for an object in Azure Active Directory.

## EXAMPLES

### Example 1: Create an extension property
```
PS C:\>New-AzureADApplicationExtensionProperty -ObjectID "3ddd22e7-a150-4bb3-b100-e410dea1cb84" -DataType "string" -Name "NewAttribute"


ObjectId                             Name                                                    TargetObjects
--------                             ----                                                    -------------
3ddd22e7-a150-4bb3-b100-e410dea1cb84 extension_36ee4c6c081240a2b820b22ebd02bce3_NewAttribute {}
```

This command creates an application extension property of the string type for the specified object.

## PARAMETERS

### -DataType
Specifies the data type of the extension property.

```yaml
Type: String
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
Specifies the data type of the extension property.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ObjectId
Specifies a unique ID of an application in Azure Active Directory.

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -TargetObjects
Specifies target objects.

```yaml
Type: System.Collections.Generic.List`1[System.String]
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

[Get-AzureADApplicationExtensionProperty](xref:AzureAD/v2/Get-AzureADApplicationExtensionProperty.md)

[Remove-AzureADApplicationExtensionProperty](xref:AzureAD/v2/Remove-AzureADApplicationExtensionProperty.md)
