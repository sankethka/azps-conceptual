---
external help file: Microsoft.Online.Administration.Automation.PSModule.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: E4C5910F-B006-43F5-8765-E1185A9D0BBE
updated_at: 11/7/2016 11:36 PM
ms.date: 11/7/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Set-MsolDirSyncFeature.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Set-MsolDirSyncFeature.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/6b2ae75363a4a068e37ba677387ea47a1caaeea3/Azure%20AD%20Cmdlets/MSOnline/v1/Set-MsolDirSyncFeature.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Set-MsolDirSyncFeature

## SYNOPSIS
Sets identity synchronization features for a tenant.

## SYNTAX

```
Set-MsolDirSyncFeature -Feature <String> -Enable <Boolean> [-Force] [-TenantId <Guid>] [<CommonParameters>]
```

## DESCRIPTION
The **Set-MsolDirSyncFeature** cmdlet sets identity synchronization features for a tenant.

Synchronization features that can be used with this cmdlet include the following:

- DuplicateProxyAddressResiliency. Normally if an object was attempted to be provisioned with a non-unique ProxyAddress, the object would fail to be created/updated due to the uniqueness violation. When this feature is enabled the conflicting ProxyAddress value will be "quarantined" and the object will be provisioned without that specific ProxyAddress value.
- DuplicateUPNResiliency. Normally if a user attempted to be provisioned with a non-unique UserPrincipalName, the user would fail to be created/updated due to the uniqueness violation. When this feature is enabled the conflicting UPN value will be "quarantined" a temporary UPN will be generated, and the user will be provisioned with that temporary UPN. This UPN will have the format of "\<UserName\>+\<Random Integer\>@\<Tenant Initial Domain\>.onmicrosoft.com".
- EnableSoftMatchOnUpn. Soft Match is the process used to link an object being synced from on-premises for the first time with one that already exists in the cloud. When this feature is enabled Soft Match will first be attempted using the standard logic, based on primary SMTP address. If a match is not found based on primary SMTP, then a match will be attempted based on UserPrincipalName. Once this feature is enabled it cannot be disabled.
- PasswordSync
- SynchronizeUpnForManagedUsers. allows for the synchronization of UserPrincipalName updates from on-premises for managed (non-federated) users that have been assigned a license. These updates will be blocked if this feature is not enabled. Once this feature is enabled it cannot be disabled.

Enabling some of these features, such as EnableSoftMatchOnUpn and SynchronizationUpnForManagedUsers is a permanent operation.
These features cannot be disabled once they are enabled.

## EXAMPLES

### Example 1: Enable a feature for the tenant
```
PS C:\> Set-MsolDirSyncFeature -Feature EnableSoftMatchOnUpn -Enable $True
```

This command enables the SoftMatchOnUpn feature for the tenant.

## PARAMETERS

### -Feature
Specifies the directory synchronization features to turn on or off.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Enable
Indicates whether the specified feature will be turned on for the company.

```yaml
Type: Boolean
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -TenantId
Specifies the unique ID of the tenant to perform the operation on.
If you do not specify this parameter the cmdlet will use the ID of the current user.
This parameter is only applicable to partner users.

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

### -Force
Forces the command to run without asking for user confirmation.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
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

[Get-MsolDirSyncFeatures](xref:MSOnline/v1/Get-MsolDirSyncFeatures.md)
