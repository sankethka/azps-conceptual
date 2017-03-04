---
external help file: Microsoft.Online.Administration.Automation.PSModule.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: CCADA679-CABC-4B55-A717-DFD43E7A9191
updated_at: 11/8/2016 9:01 PM
ms.date: 11/8/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Add-MsolGroupMember.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Add-MsolGroupMember.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/2c57f1e6f7b36ad296f1b569969f9c974ec0e0c3/Azure%20AD%20Cmdlets/MSOnline/v1/Add-MsolGroupMember.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Add-MsolGroupMember

## SYNOPSIS
Adds a member to an existing security group.

## SYNTAX

```
Add-MsolGroupMember -GroupObjectId <Guid> [-GroupMemberType <GroupMemberType>] [-GroupMemberObjectId <Guid>]
 [-TenantId <Guid>] [<CommonParameters>]
```

## DESCRIPTION
The **Add-MsolGroupMember** cmdlet adds members to a security group.
The new members can be either users or other security groups.

## EXAMPLES

### Example 1: Add a user to a security group
```
PS C:\> Add-MsolGroupMember -GroupObjectId 62f684d7-9ab1-4abc-a543-2257e085bdc6 -GroupMemberType User -GroupMemberObjectId bbb55777-d5aa-499d-abbf-353d4523049f
```

This command adds a user to a security group.

## PARAMETERS

### -GroupMemberObjectId
Specifies the unique object ID of the user or group to add to the group.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -GroupMemberType
Specifies the type of member to add to the group.
Valid values are: User and Group.

```yaml
Type: GroupMemberType
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -GroupObjectId
Specifies the unique ID of the group to which to add members.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TenantId
Specifies the unique ID of the tenant on which to perform the operation.
The default value is the tenant of the current user.
This parameter applies only to partner users.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
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
[Get-MsolGroupMember](xref:MSOnline/v1/Get-MsolGroupMember.md)

[Remove-MsolGroupMember](xref:MSOnline/v1/Remove-MsolGroupMember.md)
