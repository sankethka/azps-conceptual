---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: http://go.microsoft.com/fwlink/?LinkId=400599
schema: 2.0.0
ms.assetid: E6136B57-7B45-4F74-8069-E23FB5D41E17
updated_at: 2/13/2017 4:04 AM
ms.date: 2/13/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Disable-AadrmSuperUserFeature.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Disable-AadrmSuperUserFeature.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/6ca3a334d2d345bf1565d13869b0587b50bde3b6/Azure%20Information%20Protection/AADRM/vlatest/Disable-AadrmSuperUserFeature.md
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

# Disable-AadrmSuperUserFeature

## SYNOPSIS
Disables the super user feature.

## SYNTAX

```
Disable-AadrmSuperUserFeature [<CommonParameters>]
```

## DESCRIPTION
The **Disable-AadrmSuperUserFeature** cmdlet disables the super user feature. This action does not automatically remove the previously added users or group from the super user list, and they continue to be displayed when you run the [Get-AadrmSuperUser](./Get-AadrmSuperUser.md) or [Get-AadrmSuperUserGroup](./Get-AadrmSuperGroup.md) cmdlets. Therefore, if you enable the super user feature again, these users are automatically super users again, until you manually remove them.

If there are users in the current super list who must not be a super user if this feature is enabled again, remove them from the super user list before you disable the super user feature. If these users are individually specified, remove them with the [Remove-AadrmSuperUser](./Remove-AadrmSuperUser.md) cmdlet. If they are a member of a group that you have specified to be a super user group, either remove those users from the specified super user group, or remove the super user group by using the [Clear-AadrmSuperUserGroup](./Clear-AadrmSuperUserGroup.md) cmdlet.

You must use PowerShell to configure super users; you cannot do this configuration by using a management portal.

For information about the super user feature in Azure Rights Management, see [Enable-AadrmSuperUserFeature](./Enable-AadrmSuperUserFeature.md).

## EXAMPLES

### Example 1: Disable super user feature
```
PS C:\>Disable-AadrmSuperUserFeature
```

This command disables the super user feature for your organization.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Clear-AadrmSuperUserGroup](xref:AADRM/vlatest/Clear-AadrmSuperUserGroup.md)

[Enable-AadrmSuperUserFeature](xref:AADRM/vlatest/Enable-AadrmSuperUserFeature.md)

[Get-AadrmSuperUserFeature](xref:AADRM/vlatest/Get-AadrmSuperUserFeature.md)

[Get-AadrmSuperUser](xref:AADRM/vlatest/Get-AadrmSuperUser.md)

[Get-AadrmSuperUserGroup](xref:AADRM/vlatest/Get-AadrmSuperUserGroup.md)

[Remove-AadrmSuperUser](xref:AADRM/vlatest/Remove-AadrmSuperUser.md)
