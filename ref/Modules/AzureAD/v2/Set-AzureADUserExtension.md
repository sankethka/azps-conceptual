---
external help file: Microsoft.Open.AzureAD16.Graph.PowerShell.Custom.dll-Help.xml
ms.assetid: DFEF698C-93D2-4D67-A8B2-4A1D3ADDCBBA
online version: 
schema: 2.0.0
updated_at: 12/5/2016 8:34 PM
ms.date: 12/5/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Set-AzureADUserExtension.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Set-AzureADUserExtension.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/a3f4eb41072cf1506c8f82aa100e942b0830fc23/Azure%20AD%20Cmdlets/AzureAD/v2/Set-AzureADUserExtension.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Set-AzureADUserExtension

## SYNOPSIS
Sets a user extension.

## SYNTAX

### SetSingle
```
Set-AzureADUserExtension -ObjectId <String> -ExtensionName <String> -ExtensionValue <String>
 [<CommonParameters>]
```

### SetMultiple
```
Set-AzureADUserExtension -ObjectId <String>
 -ExtensionNameValues <System.Collections.Generic.Dictionary`2[System.String,System.String]>
 [<CommonParameters>]
```

## DESCRIPTION
The **Set-AzureADUserExtension** cmdlet sets a user extension in Azure Active Directory (Azure AD).

## EXAMPLES

### Example 1: Set the value of an extension attribute for a user
```
PS C:\> $User = Get-AzureADUser -Top 1
PS C:\> Set-AzureADUserExtension -ObjectId $User.ObjectId -ExtensionName extension_e5e29b8a85d941eab8d12162bd004528_extensionAttribute8 -ExtensionValue "New Value"
```

The first command gets a user by using the [Get-AzureADUser](./Get-AzureADUser.md) cmdlet, and then stores it in the $User variable.

The second command  sets the value of the extension attribute that hast he specified name to the value New Value.
You can get extension attribute names by using the [Get-AzureAdExtensionProperty](./Get-AzureAdExtensionProperty.md) cmdlet.


## PARAMETERS

### -ExtensionName
Specifies the name of an extension.
```yaml
Type: String
Parameter Sets: SetSingle
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ExtensionNameValues
Specifies extension name values.
```yaml
Type: System.Collections.Generic.Dictionary`2[System.String,System.String]
Parameter Sets: SetMultiple
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ExtensionValue
Specifies an extension value.
```yaml
Type: String
Parameter Sets: SetSingle
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -ObjectId
Specifies the ID of an object.
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

[Get-AzureADUser](xref:AzureAD/v2/Get-AzureADUser.md)

[Get-AzureADUserExtension](xref:AzureAD/v2/Get-AzureADUserExtension.md)

[Get-AzureAdExtensionProperty](xref:AzureAD/v2/Get-AzureAdExtensionProperty.md)

[Remove-AzureADUserExtension](xref:AzureAD/v2/Remove-AzureADUserExtension.md)
