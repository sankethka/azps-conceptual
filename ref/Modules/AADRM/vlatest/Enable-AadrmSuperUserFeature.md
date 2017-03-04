---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: http://go.microsoft.com/fwlink/?LinkId=400604
schema: 2.0.0
ms.assetid: 34D77711-B96A-43E8-B5FD-8CF5013EB7E3
updated_at: 2/13/2017 4:04 AM
ms.date: 2/13/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Enable-AadrmSuperUserFeature.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Enable-AadrmSuperUserFeature.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/6ca3a334d2d345bf1565d13869b0587b50bde3b6/Azure%20Information%20Protection/AADRM/vlatest/Enable-AadrmSuperUserFeature.md
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

# Enable-AadrmSuperUserFeature

## SYNOPSIS
Enables the super user feature for Rights Management.

## SYNTAX

```
Enable-AadrmSuperUserFeature [<CommonParameters>]
```

## DESCRIPTION
The **Enable-AadrmSuperUserFeature** cmdlet enables the super user feature. With this feature enabled, you can add or remove super users for Azure Rights Management. 

You must use PowerShell to configure super users; you cannot do this configuration by using a management portal.

By default, the super users feature is not enabled, and no users are assigned to this feature.

Super users have full control over all rights-protected content managed by Azure Rights Management. These users are granted full owner rights for all use licenses that are issued by the subscriber organization. 

Super users can decrypt any rights-protected content file and remove rights-protection from it for content previously protected within that organization, even if an expiration date has been set and expired. Typically, this level of access is required for legal eDiscovery and by auditing teams.

Caution: We recommend that you enable the super user feature on an as-needed basis. During standard operations, we recommend that you disable the super user feature, unless you use it to provide a trusted application with the ability to decrypt rights-protected content, such as to enable this application to scan the contents of a file for malware.

## EXAMPLES

### Example 1: Enable super user feature
```
PS C:\>Enable-AadrmSuperUserFeature
```

This command enables the super user feature for your organization.

## PARAMETERS

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

[Disable-AadrmSuperUserFeature](xref:AADRM/vlatest/Disable-AadrmSuperUserFeature.md)

[Get-AadrmSuperUserFeature](xref:AADRM/vlatest/Get-AadrmSuperUserFeature.md)
