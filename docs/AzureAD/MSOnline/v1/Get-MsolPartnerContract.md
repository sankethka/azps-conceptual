---
external help file: Microsoft.Online.Administration.Automation.PSModule.dll-Help.xml
online version:
schema: 2.0.0
ms.assetid: 4E3EE703-F105-449D-B74E-8C4B70E63A90
updated_at: 11/10/2016 6:25 PM
ms.date: 11/10/2016
content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Get-MsolPartnerContract.md
original_content_git_url: https://github.com/Azure/azure-docs-powershell-azuread/blob/master/Azure%20AD%20Cmdlets/MSOnline/v1/Get-MsolPartnerContract.md
gitcommit: https://github.com/Azure/azure-docs-powershell-azuread/blob/f20974f1694733a8d0f8cf150cad0f34dfdb2d1c/Azure%20AD%20Cmdlets/MSOnline/v1/Get-MsolPartnerContract.md
ms.topic: reference
ms.technology: Azure PowerShell
author: erickson-doug
ms.author: PowerShellHelpPub
keywords: powershell, cmdlet
manager: carolz
open_to_public_contributors: True
ms.service: active-directory
---

# Get-MsolPartnerContract

## SYNOPSIS
Gets a list of contracts for a partner.

## SYNTAX

### ListPartnerContracts__0 (Default)
```
Get-MsolPartnerContract [-DomainName <String>] [-SearchKey <PartnerContractSearchKey>] [-MaxResults <Int32>]
 [-TenantId <Guid>] [<CommonParameters>]
```

### All__0
```
Get-MsolPartnerContract [-DomainName <String>] [-SearchKey <PartnerContractSearchKey>] [-All]
 [-TenantId <Guid>] [<CommonParameters>]
```

## DESCRIPTION
The **Get-MsolPartnerContract** cmdlet gets a list of contracts for a partner.
Therefore, this cmdlet should only be used by partners.

Specify a domain to look up.
This domain must be verified for the tenant.
If the company exists and the partner has access to this company, this cmdlet returns the corresponding contract.

## EXAMPLES

### Example 1: Return contract for a tenant
```
PS C:\> Get-MsolPartnerContract -DomainName "contoso.com"
```

This command returns the contract for the tenant owning the domain consoso.com.
To run this command, you must have privileges to act on behalf of contoso.com.

## PARAMETERS

### -DomainName
Specifies the domain to search for.
This must be the full name of a verified domain.

```yaml
Type: String
Parameter Sets: (All)
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

### -MaxResults
Specifies the maximum number of results that this cmdlet returns.

```yaml
Type: Int32
Parameter Sets: ListPartnerContracts__0
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SearchKey
Specifies a search key.

```yaml
Type: PartnerContractSearchKey
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

### Microsoft.Online.Administration.PartnerContract

## NOTES

## RELATED LINKS
