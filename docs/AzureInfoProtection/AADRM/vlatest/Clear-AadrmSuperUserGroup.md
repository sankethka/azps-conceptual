---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: http://go.microsoft.com/fwlink/?LinkId=722836
schema: 2.0.0
ms.assetid: F4A1DD4B-C8B9-4FA8-A809-388F01C0A0F0
updated_at: 2/12/2017 9:57 PM
ms.date: 2/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Clear-AadrmSuperUserGroup.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Clear-AadrmSuperUserGroup.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/e4c765ba645ee6c466dd1ff7182695aa9e59fb44/Azure%20Information%20Protection/AADRM/vlatest/Clear-AadrmSuperUserGroup.md
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

# Clear-AadrmSuperUserGroup

## SYNOPSIS
Removes the super user group for your organization.

## SYNTAX

```
Clear-AadrmSuperUserGroup [<CommonParameters>]
```

## DESCRIPTION
The **Clear-AadrmSuperUserGroup** cmdlet removes the super user group for your organization.

This cmdlet does not affect users that are individually assigned the super user privilege with the [Add-AadrmSuperUser](./Add-AadrmSuperUser.md) cmdlet.

You must use PowerShell to configure super users; you cannot do this configuration by using a management portal.

## EXAMPLES

### Example 1: Remove the super user group
```
PS C:\>Clear-AadrmSuperUserGroup
```

This command removes the super user group, if one exists, for the organization.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Add-AadrmSuperUser](xref:AADRM/vlatest/Add-AadrmSuperUser.md)

[Get-AadrmSuperUserGroup](xref:AADRM/vlatest/Get-AadrmSuperUserGroup.md)

[Set-AadrmSuperUserGroup](xref:AADRM/vlatest/Set-AadrmSuperUserGroup.md)
