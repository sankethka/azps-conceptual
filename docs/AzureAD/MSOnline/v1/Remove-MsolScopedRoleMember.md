---
external help file: Microsoft.Online.Administration.Automation.PSModule.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 3F433D19-5A6D-4940-A9B3-4ED3C0C6C485
updated_at: 11/8/2016 9:01 PM
ms.date: 11/8/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Remove-MsolScopedRoleMember.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Remove-MsolScopedRoleMember.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/2c57f1e6f7b36ad296f1b569969f9c974ec0e0c3/Azure%20AD%20Cmdlets/MSOnline/v1/Remove-MsolScopedRoleMember.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Remove-MsolScopedRoleMember

## SYNOPSIS
Removes a user from an administrative unit-scoped role.

## SYNTAX

```
Remove-MsolScopedRoleMember -RoleObjectId <Guid> -AdministrativeUnitObjectId <Guid>
 [-RoleMemberObjectId <Guid>] [-RoleMemberUserPrincipalName <String>] [-TenantId <Guid>] [<CommonParameters>]
```

## DESCRIPTION
The **Remove-MsolScopedRoleMember** cmdlet removes a user from an administrative unit-scoped role.

## EXAMPLES

### Example 1: Remove a member from an administrative unit-scoped role

```
PS C:\> $WestCoastAu = Get-MsolAdministrativeUnit -SearchString "West Coast"
PS C:\> $UaAdmin = Get-MsolRole -RoleName "User Account Administrator"
PS C:\> $Admin01 = Get-MsolUser -UserPrincipalName "elisadaugherty@contoso.com"
PS C:\> Remove-MsolScopedRoleMember -RoleObjectId $UaAdmin.ObjectId -AdministrativeUnitObjectId $WestCoastAu.ObjectId -RoleMemberObjectId $Admin01.ObjectId
```

The example removes elisadaugherty@contoso.com from the User Account Administrator role scoped for the administrative unit named West Coast.
After this example, the user is no longer a member of the role.

## PARAMETERS

### -RoleObjectId
Specifies the unique object ID of the role from which to remove members.

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

### -AdministrativeUnitObjectId
Specifies the unique object ID of the administrative unit.

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

### -RoleMemberObjectId
Specifies the unique object ID of the member to remove from the role scoped to the administrative unit.
Specify either the _RoleMemberUserPrincipalName_ or _RoleMemberObjectId_ parameter.

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

### -RoleMemberUserPrincipalName
Specifies the user principal name of the member to remove.
Specify either _RoleMemberUserPrincipalName_ or _RoleMemberObjectId_.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
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
[Add-MsolScopedRoleMember](xref:MSOnline/v1/Add-MsolScopedRoleMember.md)

[Get-MsolAdministrativeUnit](xref:MSOnline/v1/Get-MsolAdministrativeUnit.md)

[Get-MsolRole](xref:MSOnline/v1/Get-MsolRole.md)

[Get-MsolUser](xref:MSOnline/v1/Get-MsolUser.md)

[Get-MsolScopedRoleMember](xref:MSOnline/v1/Get-MsolScopedRoleMember.md)
