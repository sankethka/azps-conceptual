---
external help file: Microsoft.Online.Administration.Automation.PSModule.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 87C2C236-9B82-45D1-BD68-6B118033064C
updated_at: 11/4/2016 10:40 PM
ms.date: 11/4/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Get-MsolAdministrativeUnit.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Get-MsolAdministrativeUnit.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/3c22ad9f927dcfe00a363b1a2c343fc086da2ac5/Azure%20AD%20Cmdlets/MSOnline/v1/Get-MsolAdministrativeUnit.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Get-MsolAdministrativeUnit

## SYNOPSIS
Gets administrative units from Azure Active Directory.

## SYNTAX

### ListAdministrativeUnits__0 (Default)
```
Get-MsolAdministrativeUnit [-UserObjectId <Guid>] [-UserPrincipalName <String>] [-SearchString <String>]
 [-MaxResults <Int32>] [-TenantId <Guid>] [<CommonParameters>]
```

### GetAdministrativeUnit__0
```
Get-MsolAdministrativeUnit -ObjectId <Guid> [-TenantId <Guid>] [<CommonParameters>]
```

### All__0
```
Get-MsolAdministrativeUnit [-UserObjectId <Guid>] [-UserPrincipalName <String>] [-SearchString <String>] [-All]
 [-TenantId <Guid>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-MsolAdministrativeUnit** cmdlet gets administrative units from Azure Active Directory.

## EXAMPLES

### Example 1: Get all administrative units

```
PS C:\> Get-MsolAdministrativeUnit
```

This command gets all of the administrative units in the tenant of the currently authenticated user.

### Example 2: Get an administrative unit by name

```
PS C:\> Get-MsolAdministrativeUnit -SearchString "West Coast"
```

This command get the administrative unit called West Coast.

### Example 3: Get an administrative unit by user principal name

```
Get-MsolAdministrativeUnit -UserPrincipalName "pattifuller@contoso.com"
```

This command gets the administrative units in which pattifuller@contoso.com is a member.

## PARAMETERS

### -UserObjectId
Specifies the unique ID of a user.
This cmdlet returns administrative units to which this user belongs.

```yaml
Type: Guid
Parameter Sets: ListAdministrativeUnits__0, All__0
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserPrincipalName
Specifies a user principal name.
This cmdlet returns administrative units to which this user belongs.

```yaml
Type: String
Parameter Sets: ListAdministrativeUnits__0, All__0
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SearchString
Specifies a string.
This cmdlet returns administrative units that have a display name that start with this string.

```yaml
Type: String
Parameter Sets: ListAdministrativeUnits__0, All__0
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
Parameter Sets: ListAdministrativeUnits__0
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

### -ObjectId
Specifies the unique ID of an administrative unit to return.

```yaml
Type: Guid
Parameter Sets: GetAdministrativeUnit__0
Aliases:

Required: True
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

## NOTES

## RELATED LINKS
[New-MsolAdministrativeUnit](xref:MSOnline/v1/New-MsolAdministrativeUnit.md)

[Remove-MsolAdministrativeUnit](xref:MSOnline/v1/Remove-MsolAdministrativeUnit.md)

[Set-MsolAdministrativeUnit](xref:MSOnline/v1/Set-MsolAdministrativeUnit.md)
