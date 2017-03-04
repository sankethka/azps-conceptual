---
external help file: Microsoft.RightsManagementServices.Online.Admin.PowerShell.dll-Help.xml
online version: http://go.microsoft.com/fwlink/?LinkId=400594
schema: 2.0.0
ms.assetid: 5B7E7380-C8F4-4113-84D9-B9825F9F2240
updated_at: 2/12/2017 9:57 PM
ms.date: 2/12/2017
content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Add-AadrmSuperUser.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-aip/blob/master/Azure%20Information%20Protection/AADRM/vlatest/Add-AadrmSuperUser.md
gitcommit: https://github.com/Azure/azure-docs-powershell-aip/blob/e4c765ba645ee6c466dd1ff7182695aa9e59fb44/Azure%20Information%20Protection/AADRM/vlatest/Add-AadrmSuperUser.md
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

# Add-AadrmSuperUser

## SYNOPSIS
Adds a super user to Rights Management.

## SYNTAX

### EmailAddress
```
Add-AadrmSuperUser -EmailAddress <String> [<CommonParameters>]
```

### SvcPrincipalId
```
Add-AadrmSuperUser -ServicePrincipalId <String> [<CommonParameters>]
```

## DESCRIPTION
The **Add-AadrmSuperUser** cmdlet adds an individual super user by email address or service principal ID for your organization. Before you can add a super user, you must enable the super user feature for Azure Rights Management with the [Enable-AadrmSuperUserFeature](./Enable-AadrmSuperUserFeature.md) cmdlet.

In addition, the user that you add must have a proxy address, which requires that the user account is either synchronized from Active Directory Domain Services with the attribute set for the proxy address, or that the user is granted a license for Exchange Online.

When you add a super user, that super user is granted full control over all rights-protected content that is managed by Azure Rights Management for your organization. Use this cmdlet to specify one or more individuals as super users for your organization.

To specify a group whose members have super user privileges, use the [Set-AadrmSuperUserGroup](./Set-AadrmSuperUserGroup.md) cmdlet instead of this **Add-AadrmSuperUser** cmdlet.

Rights Management grants full owner rights to super users for all use licenses that are issued by the subscriber organization. Super users can decrypt any rights-protected content file and remove rights-protection for it, even if an expiration date has been set and expired. Typically, this level of access is required for legal eDiscovery and by auditing teams.

You must use PowerShell to configure super users; you cannot do this configuration by using a management portal.

## EXAMPLES

### Example 1: Add a user as a super user
```
PS C:\>Add-AadrmSuperUser -EmailAddress "EvanNarvaez@Contoso.com"
```

This command adds an individual user to your organization's super user list for Rights Management by specifying the user's email address.

### Example 2: Add a service principal as a super user
```
PS C:\>Add-AadrmSuperUser -ServicePrincipalId "3C367900-44D1-4865-9379-9A3227042C25"
```

This command adds a service principal to your organization's super user list by specifying the service principal's AppPrincipalId.

## PARAMETERS

### -EmailAddress
Specifies the email address of a user in your organization to which to grant super user privileges.

```yaml
Type: String
Parameter Sets: EmailAddress
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServicePrincipalId
Specifies the **AppPrincipalId** of the service principal to which to grant super user privileges. Use the **Get-MsolServicePrincipal** cmdlet to get an existing service principal, or the [New-MsolServicePrincipalCredential](./New-MsolServicePrincipalCredential.md) cmdlet to create a new service principal.

The service principal ID is converted to a pseudo-email address and added to the super users list for the organization. For example, `Add-AadrmSuperUser -ServicePrincipalId "3C367900-44D1-4865-9379-9A3227042C25"` adds 3C367900-44D1-4865-9379-9A3227042C25@\<rms tenant ID\>.rms.na.aadrm.com to the super user list.

You can remove the service principal from the super user list by using the [Remove-AadrmSuperUser](./Remove-AadrmSuperUser.md) cmdlet and this pseudo-email address. You can use the [Get-AadrmSuperUser](./Get-AadrmSuperUser.md) cmdlet to verify the email address.

```yaml
Type: String
Parameter Sets: SvcPrincipalId
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

[Enable-AadrmSuperUserFeature](xref:AADRM/vlatest/Enable-AadrmSuperUserFeature.md)

[Get-AadrmSuperUser](xref:AADRM/vlatest/Get-AadrmSuperUser.md)

[New-MsolServicePrincipalCredential](xref:AADRM/vlatest/New-MsolServicePrincipalCredential.md)

[Remove-AadrmSuperUser](xref:AADRM/vlatest/Remove-AadrmSuperUser.md)

[Set-AadrmSuperUserGroup](xref:AADRM/vlatest/Set-AadrmSuperUserGroup.md)
