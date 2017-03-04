---
external help file: Microsoft.Online.Administration.Automation.PSModule.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: ACEA9C06-7619-4EAE-967D-280F982ECE7A
updated_at: 11/14/2016 9:14 PM
ms.date: 11/14/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/New-MsolServicePrincipalAddresses.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/New-MsolServicePrincipalAddresses.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/2fc7c934766545163d747d78fd2431e341b5bd4f/Azure%20AD%20Cmdlets/MSOnline/v1/New-MsolServicePrincipalAddresses.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# New-MsolServicePrincipalAddresses

## SYNOPSIS
Creates a service principal address.

## SYNTAX

```
New-MsolServicePrincipalAddresses -Address <String> [-AddressType <AddressType>] [<CommonParameters>]
```

## DESCRIPTION
The **New-MsolServicePrincipalAddresses** cmdlet creates a service principal address.

## PARAMETERS

### -Address
Specifies an address to be used by an application.

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

### -AddressType
Specifies the type of address to create.
Valid values are:
* Reply
* Realm
* Error
* Other
* SamlMetadata
* SamlLogout

```yaml
Type: AddressType
Parameter Sets: (All)
Aliases:
Accepted values: Reply, Realm, Error, Other, SamlMetadata, SamlLogout

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS
