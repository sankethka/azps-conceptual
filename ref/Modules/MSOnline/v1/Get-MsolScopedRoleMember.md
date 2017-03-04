---
external help file: Microsoft.Online.Administration.Automation.PSModule.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 16B61372-E804-41E7-9B03-8752A76DD2CB
updated_at: 11/8/2016 9:01 PM
ms.date: 11/8/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Get-MsolScopedRoleMember.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Get-MsolScopedRoleMember.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/2c57f1e6f7b36ad296f1b569969f9c974ec0e0c3/Azure%20AD%20Cmdlets/MSOnline/v1/Get-MsolScopedRoleMember.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Get-MsolScopedRoleMember

## SYNOPSIS
Gets members of a role who are granted that role over an administrative unit.

## SYNTAX

### ListRoleScopedMembers__0 (Default)
```
Get-MsolScopedRoleMember [-AdministrativeUnitObjectId <Guid>] [-RoleObjectId <Guid>] [-MaxResults <Int32>]
 [-TenantId <Guid>] [<CommonParameters>]
```

### All__0
```
Get-MsolScopedRoleMember [-AdministrativeUnitObjectId <Guid>] [-RoleObjectId <Guid>] [-All] [-TenantId <Guid>]
 [<CommonParameters>]
```

## DESCRIPTION
The **Get-MsolScopedRoleMember** cmdlet gets members of the specified role who are granted that role over an administrative unit.

## EXAMPLES

### Example 1: Get members of the User Account Administrator role

```
PS C:\> $WestCoastAu = Get-MsolAdministrativeUnit -SearchString "West Coast"
PS C:\> $UaAdmin = Get-MsolRole -RoleName "User Account Administrator"
PS C:\> Get-MsolScopedRoleMember -RoleObjectId $UaAdmin.ObjectId -AdministrativeUnitObjectId $WestCoastAu.ObjectId
```
This example gets all members of the User Account Administrator role that is scoped to the administrative unit named West Coast.

## PARAMETERS

### -RoleObjectId
Specifies the unique object ID of the role from which to get members.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -AdministrativeUnitObjectId
Specifies the unique object ID of the administrative unit.
If you do not specify this parameter, this cmdlet gets administrators for all administrative units.

```yaml
Type: Guid
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -MaxResults
Specifies the maximum number of results that this cmdlet returns.

```yaml
Type: Int32
Parameter Sets: ListRoleScopedMembers__0
Aliases:

Required: False
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

### -All
Indicates that this cmdlet returns all results that it finds.
Do not specify this parameter and the _MaxResults_ parameter.

```yaml
Type: SwitchParameter
Parameter Sets: All__0
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Online.Administration.RoleScopedMember
This cmdlet returns objects that contain the following information:

* DisplayName. The display name of the scoped role member.
* UserPrincipalName. The user principal name of the scoped role member.
* ObjectId. The unique ID of the scoped role member.

## NOTES

## RELATED LINKS
[Get-MsolAdministrativeUnit](xref:MSOnline/v1/Get-MsolAdministrativeUnit.md)

[Get-MsolRole](xref:MSOnline/v1/Get-MsolRole.md)

[Get-MsolScopedRoleMember](xref:MSOnline/v1/Get-MsolScopedRoleMember.md)

[Remove-MsolScopedRoleMember](xref:MSOnline/v1/Remove-MsolScopedRoleMember.md)
