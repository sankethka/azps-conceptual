---
external help file: Microsoft.Open.AzureAD16.Graph.PowerShell.dll-Help.xml
ms.assetid: 5DCD4EAF-A3D8-49CE-8392-A0F3AE61B86C
online version: 
schema: 2.0.0
updated_at: 12/1/2016 5:36 PM
ms.date: 12/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Remove-AzureADDevice.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Remove-AzureADDevice.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/8f658f99458e2c236d5f4be363030b6f24cacc4c/Azure%20AD%20Cmdlets/AzureAD/v2/Remove-AzureADDevice.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Remove-AzureADDevice

## SYNOPSIS
Deletes a device.

## SYNTAX

```
Remove-AzureADDevice -ObjectId <String> [-InformationAction <ActionPreference>] [-InformationVariable <String>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Remove-AzureADDevice** cmdlet removes a device from Azure Active Directory (AD).

## EXAMPLES

### Example 1: Remove a device
```
PS C:\>Remove-AzureADDevice -ObjectId "99a1915d-298f-42d1-93ae-71646b85e2fa"
```

This command removes the specified device.

## PARAMETERS

### -InformationAction
Specifies how this cmdlet responds to an information event. The acceptable values for this parameter are:

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

### -ObjectId
Specifies the object ID of a device in Azure AD.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureADDevice](xref:AzureAD/v2/Get-AzureADDevice.md)

[New-AzureADDevice](xref:AzureAD/v2/New-AzureADDevice.md)

[Set-AzureADDevice](xref:AzureAD/v2/Set-AzureADDevice.md)
