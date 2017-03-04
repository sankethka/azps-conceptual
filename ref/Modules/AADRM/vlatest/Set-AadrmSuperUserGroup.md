---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: http://go.microsoft.com/fwlink/?LinkId=722838
schema: 2.0.0
ms.assetid: 23E946A0-E6FC-4F8C-8F3B-352AD48CE426
updated_at: 2/13/2017 9:47 PM
ms.date: 2/13/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Set-AadrmSuperUserGroup.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Set-AadrmSuperUserGroup.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/22a102658f1b1c573e607b7c05590c1e292e41e2/Azure%20Information%20Protection/AADRM/vlatest/Set-AadrmSuperUserGroup.md
ms.topic: reference
ms.prod: powershell
ms.technology: Azure Powershell
author: cabailey
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: cabailey
open_to_public_contributors: False
ms.service: rights-management
---

# Set-AadrmSuperUserGroup

## SYNOPSIS
Sets the super user group for Rights Management.

## SYNTAX

```
Set-AadrmSuperUserGroup -GroupEmailAddress <String> [<CommonParameters>]
```

## DESCRIPTION
The **Set-AadrmSuperUserGroup** cmdlet sets the super user group for your organization in Azure Rights Management.

If a super user group already exists, this operation overwrites it. This cmdlet does not affect users that are individually assigned as super users with the [Add-AadrmSuperUser](./Add-AadrmSuperUser.md) cmdlet.

An organization can have only one super user group in addition to multiple users who are assigned the privilege individually, but you can nest groups.

You must use PowerShell to configure super users; you cannot do this configuration by using a management portal.

For more information about super users, see [Configuring super users for Azure Rights Management and discovery services or data recovery](https://docs.microsoft.com/rights-management/deploy-use/configure-super-users) on the Microsoft documentation site.

## EXAMPLES

### Example 1: Set the super user group
```
PS C:\>Set-AadrmSuperUserGroup -GroupEmailAddress "SuperUserGroup@contoso.com"
```

This command sets the super user group for the organization to SuperUserGroup@contoso.com.

## PARAMETERS

### -GroupEmailAddress
Specifies the group email address for the super user group.

*GroupEmailAddress* can specify a group that contains individual users or other nested groups.

The *GroupEmailAddress* must be a valid group email address in the organization.

```yaml
Type: String
Parameter Sets: (All)
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

### System.String

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AadrmSuperUser](xref:AADRM/vlatest/Add-AadrmSuperUser.md)

[Clear-AadrmSuperUserGroup](xref:AADRM/vlatest/Clear-AadrmSuperUserGroup.md)

[Get-AadrmSuperUserGroup](xref:AADRM/vlatest/Get-AadrmSuperUserGroup.md)

[Configuring super users for Azure Rights Management and discovery services or data recovery](https://docs.microsoft.com/rights-management/deploy-use/configure-super-users)
