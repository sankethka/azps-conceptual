---
external help file: Microsoft.Open.AzureAD16.Graph.PowerShell.dll-Help.xml
ms.assetid: 3719960D-7A77-414E-A20C-812B527F27AB
online version: 
schema: 2.0.0
updated_at: 12/5/2016 8:34 PM
ms.date: 12/5/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Enable-AzureADDirectoryRole.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/AzureAD/v2/Enable-AzureADDirectoryRole.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/a3f4eb41072cf1506c8f82aa100e942b0830fc23/Azure%20AD%20Cmdlets/AzureAD/v2/Enable-AzureADDirectoryRole.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Enable-AzureADDirectoryRole

## SYNOPSIS
Activates an existing directory role in Azure Active Directory.

## SYNTAX

```
Enable-AzureADDirectoryRole -DirectoryRole <DirectoryRole> [-InformationAction <ActionPreference>]
 [-InformationVariable <String>] [<CommonParameters>]
```

## DESCRIPTION
The **Enable-AzureADDirectoryRole** cmdlet activates an existing directory role in Azure Active Directory.

## EXAMPLES

### Example 1: Enable a directory role
```
PS C:\> $InviterRole = Get-AzureADDirectoryRoleTemplate | Where-Object {$_.DisplayName -eq "Guest Inviter"}
PS C:\> $InviterRole

ObjectId                             DisplayName   Description
--------                             -----------   -----------
95e79109-95c0-4d8e-aee3-d01accf2d47b Guest Inviter Guest Inviter has access to invite guest users.

PS C:\> $Role = New-Object Microsoft.Open.AzureAD.Model.DirectoryRole
PS C:\> $Role.RoleTemplateId = $InviterRole.ObjectId
PS C:\> Enable-AzureADDirectoryRole -DirectoryRole $Role

ObjectId                             DisplayName   Description
--------                             -----------   -----------
03618579-3c16-4765-9539-86d9163ee3d9 Guest Inviter Guest Inviter has access to invite guest users.
```

The first command gets an inviter role that has the display name Guest Inviter by using the [Get-AzureADDirectoryRoleTemplate](./Get-AzureADDirectoryRoleTemplate.md) cmdlet. 
The command stores Guest Inviter in the $InviterRole variable. 

The second command displays the contents of $InviterRole.

The third command creates a **DirectoryRole** object, and then stores it in the $Role variable.

The forth command modifies the **RoleTemplateId** property of $Role to be the role in $InviterRole.

The final command enables the directory role in $Role.

## PARAMETERS

### -DirectoryRole
Specifies an Azure Active Directory role. Only the roleTemplateId is required.

```yaml
Type: DirectoryRole
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
Specifies a variable in which to store an information event message.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Get-AzureADDirectoryRole](xref:AzureAD/v2/Get-AzureADDirectoryRole.md)

[Get-AzureADDirectoryRoleTemplate](xref:AzureAD/v2/Get-AzureADDirectoryRoleTemplate.md)
