---
external help file: Microsoft.Online.Administration.Automation.PSModule.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 1D23EC9E-30E3-4B23-82E8-6B5C91F523A4
updated_at: 11/7/2016 11:36 PM
ms.date: 11/7/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Set-MsolGroup.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Set-MsolGroup.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/6b2ae75363a4a068e37ba677387ea47a1caaeea3/Azure%20AD%20Cmdlets/MSOnline/v1/Set-MsolGroup.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Set-MsolGroup

## SYNOPSIS
Updates a security group.

## SYNTAX

```
Set-MsolGroup [-ObjectId <Guid>] [-DisplayName <String>] [-Description <String>] [-ManagedBy <String>]
 [-TenantId <Guid>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-MsolGroup** cmdlet updates the properties of a security group.

## EXAMPLES

### Example 1: Modify a group
```
PS C:\> $GroupId = Get-MsolGroup -SearchString "MyGroup"
PS C:\> Set-MsolGroup -ObjectId $GroupId -Description "My Group"
```

The first command gets the security group that matches the string MyGroup, and then stores it in the $GroupId variable.
The second command modifies the group in $GroupId.

## PARAMETERS

### -Description
Specifies a description of the group.

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

### -DisplayName
Specifies a display name of the group.

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

### -ManagedBy
Specifies the owner of the group.

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

### -ObjectId
Specifies the unique object ID of the group to update.

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
[Get-MsolGroup](xref:MSOnline/v1/Get-MsolGroup.md)

[New-MsolGroup](xref:MSOnline/v1/New-MsolGroup.md)

[Remove-MsolGroup](xref:MSOnline/v1/Remove-MsolGroup.md)
