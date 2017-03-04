---
external help file: Microsoft.Open.AzureAD16.Graph.PowerShell.Custom.dll-Help.xml
ms.assetid: 8959FA62-5E06-4C57-90CC-985F7467BC59
online version: 
schema: 2.0.0
updated_at: 12/1/2016 5:36 PM
ms.date: 12/1/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Update-AzureADSignedInUserPassword.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Update-AzureADSignedInUserPassword.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/8f658f99458e2c236d5f4be363030b6f24cacc4c/Azure%20AD%20Cmdlets/AzureAD/v2/Update-AzureADSignedInUserPassword.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Update-AzureADSignedInUserPassword

## SYNOPSIS
Updates the password for the signed-in user.

## SYNTAX

```
Update-AzureADSignedInUserPassword -CurrentPassword <SecureString> -NewPassword <SecureString>
 [-InformationAction <ActionPreference>] [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Update-AzureADSignedInUserPassword** cmdlet updates the password for the signed-in user in Azure Active Directory (AD).

## EXAMPLES

### Example 1: Update a password
```
PS C:\>Update-AzureADSignedInUserPassword -CurrentPassword $CurrentPassword -NewPassword $NewPassword
```

This command updates the password for the signed-in user.

## PARAMETERS

### -CurrentPassword
Specifies the current password of the signed-in user.

```yaml
Type: SecureString
Parameter Sets: (All)
Aliases: 

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

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

### -NewPassword
Specifies the new password for the signed-in user.

```yaml
Type: SecureString
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

